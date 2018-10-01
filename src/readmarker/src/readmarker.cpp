//Reading AruCo markers
//Author : Dongha Chung
//Reference : https://docs.opencv.org/3.3.0/d5/dae/tutorial_aruco_detection.html

#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/aruco.hpp>
#include <std_msgs/Int8.h>
#include "readmarker/markermsg.h"

using namespace cv;
using namespace std;

Mat inputImage;
vector<int> markerIds;
vector<vector<Point2f> > markerCorners, rejectedCandidates;
vector<Point2f> innerMarkerCorners;
vector<Point2f> outImageCorners;

Ptr<aruco::Dictionary> dictionary = aruco::getPredefinedDictionary(aruco::DICT_6X6_250);
Mat image_1;
Mat image_2;

int b_image1;
int b_image2;

ros::Publisher input_status_pub;

readmarker::markermsg cropped_img_msg;
void Initialization()
{
  outImageCorners.resize(4);
  outImageCorners[0] = cvPoint(0.0, 0.0);
  outImageCorners[1] = cvPoint(255.0, 0.0);
  outImageCorners[2] = cvPoint(255.0, 255.0);
  outImageCorners[3] = cvPoint(0.0, 255.0);
  b_image1 = 1;
  b_image2 = 1;
}

void imageCallback(const sensor_msgs::ImageConstPtr& msg)
{
  b_image1=1;
  b_image2=1;
  cv_bridge::CvImagePtr cv_ptr;
  cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
  cv_ptr->image.copyTo(inputImage);

  aruco::detectMarkers(inputImage, dictionary, markerCorners, markerIds);

  Mat outputImage;
  inputImage.copyTo(outputImage);
  image_1 = Mat(256,256, CV_8UC3, Scalar(255,255,255));
  image_2 = Mat(256,256, CV_8UC3, Scalar(255,255,255));

  if (markerIds.size() > 0)
  {
      aruco::drawDetectedMarkers(outputImage, markerCorners, markerIds);

      vector<int> indice;
      indice.resize(8);

      for(int i=0;i<4;i++)
      {
        if(find(markerIds.begin(), markerIds.end(), i+1)!=markerIds.end())
        {
          indice[i]= distance(markerIds.begin(), find(markerIds.begin(), markerIds.end(), i+1));
        }
        else
          b_image1 = b_image1*0;
      }
      for(int i=4;i<8;i++)
      {
        if(find(markerIds.begin(), markerIds.end(), i+1)!=markerIds.end())
        {
          indice[i]= distance(markerIds.begin(), find(markerIds.begin(), markerIds.end(), i+1));
        }
        else
          b_image2 = b_image2*0;
      }

      if(b_image1==1)
      {

        innerMarkerCorners.resize(4);
        innerMarkerCorners[0] = markerCorners[indice[0]][2];
        innerMarkerCorners[1] = markerCorners[indice[1]][3];
        innerMarkerCorners[2] = markerCorners[indice[2]][0];
        innerMarkerCorners[3] = markerCorners[indice[3]][1];
        Mat H1 = findHomography(innerMarkerCorners,outImageCorners,0);

        warpPerspective(inputImage, image_1, H1, Size(255, 255));

      }
      if(b_image2==1)
      {
        innerMarkerCorners.resize(4);
        innerMarkerCorners[0] = markerCorners[indice[4]][2];
        innerMarkerCorners[1] = markerCorners[indice[5]][3];
        innerMarkerCorners[2] = markerCorners[indice[6]][0];
        innerMarkerCorners[3] = markerCorners[indice[7]][1];
        Mat H2 = findHomography(innerMarkerCorners,outImageCorners,0);
        warpPerspective(inputImage, image_2, H2, Size(255, 255));
      }
  }
  else
  {
    b_image1 = 0;
    b_image2 = 0;
  }

  cropped_img_msg.image1_available = b_image1;
  cropped_img_msg.image2_available = b_image2;

  imencode(".jpg", image_1, cropped_img_msg.cimage1.data);
  imencode(".jpg", image_2, cropped_img_msg.cimage2.data);
  input_status_pub.publish(cropped_img_msg);
  Mat showImg = Mat::zeros(Size(256,512),CV_8UC3);
  image_1.copyTo(showImg(Rect(0,0,image_1.cols, image_1.rows)));
  image_2.copyTo(showImg(Rect(0,image_1.rows,image_2.cols,image_2.rows)));

  imshow("image", showImg);
  imshow("out", outputImage);

  moveWindow("image", outputImage.cols+50,20);
  moveWindow("out", 50,20);
  cvWaitKey(1);
}

int main(int argc, char** argv)
{
  Initialization();
  ros::init(argc, argv, "marker_reader");
  ros::NodeHandle nh;
  input_status_pub = nh.advertise<readmarker::markermsg>("cropped_img", 100);
  image_transport::ImageTransport it(nh); //Set the image transport it using the node handle nh
  image_transport::Subscriber sub = it.subscribe("camera/image", 1, imageCallback);
  ros::spin();
}
