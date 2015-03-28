# Tennis Assistant Code #

## Web Application ##
The web application is located in SEVABTR-appspot
Dependencies
- Python 2.7 
- Google App Engine (https://cloud.google.com/appengine/docs) 
To run the local web server, download the Google App Engine (it should download to a directory 
named google_app_engine). Then, through bash, change directories to google_app_engine and 
run 
python dev_appserver.py ~/Downloads/1_code/SEVABTR-appspot 
 
If you have 1_code/SEVABTR­appspot in a different directory, change your command 
accordingly. 

Once the development server is running, you should be able to see the website by navigating to 
http://localhost:8080 in your browser 

## Computer Vision ##
Dependencies
Our computer vision has the following dependencies: 
- Python 2.7 
- SimpleCV (http://simplecv.org/download.html) 
- OpenCV (http://opencv.org) 
- A webcam 
Running Tennis Ball Detection
To run the continuous ball detection, through bash, change directories to SEVABTR/visual and run: 
python tennis_ball_runner.py 
 
This will continuously read video input from your connected webcam and display it. If it detects 
a tennis ball in the middle of the screen then it will outline it with a green circle. 
 
Running Tennis Ball Detection Tests
To run the unit tests for Tennis Ball detection change directories to SEVABTR/visual and run: 
python tennis_ball_test.py

Running Basket Detection
To run the continuous basket detection, through bash, change directories to visual and run: 
python basket_runner.py 
 
## Text to Speech ##
Dependencies
- Festival 
- Speakers 
Running Text to Speech
To be able to hear a text command converted to speech run the file specified below which can be 
found in SEVATBR/speech/text­to­speech/ directory. You will be prompted to enter a command 
which then will be played through your speakers. 
./text­to­speech.sh 
 
## Robot Movement ##
Dependencies
- Robot  
- Robot Controller (Xbox controller) 
- USB keyboard/mouse 
- HDMI Lilliput screen 
Running Robot Movement
In order to run robot manual control connect all the dependencies listed. Make sure that all the 
motors are connected and batteries are fully loaded. Once ready navigate to SEVATBR/core/ 
directory and compile necessary files using ‘make’ command. Once compiled successfully run 
the command below and control the robot via controler. The joystick can be used for 
left/right/forward/backwards movement while L1/R1 can be used to scoop/release ball and 
L2/R2 can be used to move the robot arm up/down. 
sudo ./core 
