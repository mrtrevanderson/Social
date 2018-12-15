# Social
iOS Social Media Application



### Prerequisites
---------------------------
Before you begin, you need a few things set up in your environment:
- Xcode 9.2 or later
- An Xcode project targeting iOS 8 or above
- Swift projects must use Swift 3.0 or later
- The bundle identifier of your app
- CocoaPods 1.4.0 or later

For Cloud Messaging:
- A physical iOS device
- An Apple Push Notification Authentication Key for your Apple Developer account
- In Xcode, enable Push Notifications in App > Capabilities


### Create Xcode Project
--------------------------
- Use Xcode 9.2 or later
- Select Create a new Xcode project or go to File > new project
- Under the iOS tab select Single View App
- Type your product name and click Next
- Choose a safe place to save your project and if you want create Git repository on your Mac
- Now your app is started

### Add Firebase to your app
--------------------------
It's time to add Firebase to your app. To do this you'll need a Firebase project and a Firebase configuration file for your app.
To create a Firebase project:
- Got to https://firebase.google.com/
- Create an account if you haven’t already
- Go to the Firebase console
- Click Add project, then select or enter a Project name.
- If you have an existing Google project associated with your app, select the project from the Project name dropdown menu.
- If you don't have an existing Google project, enter a new Project name.
- Edit the Project ID (optional)
- Firebase automatically assigns a unique ID to your Firebase project. This identifier displays in publicly visible Firebase services, for example:
- Default database URL — your-project-id.firebaseio.com
- Default hosting subdomain — your-project-id.firebaseapp.com
- Follow the remaining setup steps, then click Create project (or Add Firebase, if you're using an existing Google project).
- Click Add Firebase to your iOS app and follow the setup steps. If you're importing an existing Google project, this may happen automatically and you can just download the config file.
- When prompted, enter your app's bundle ID. It's important to enter the bundle ID your app is using; this can only be set when you add an app to your Firebase project.
- During the process, you'll download a GoogleService-Info.plist file. You can download this file again at any time.
- After you add the initialization code, run your app to send verification to the Firebase console that you've successfully installed Firebase.

### Add the SDK
------------------------------------------
If you are setting up a new project, you need to install the SDK. You may have already completed this as part of creating a Firebase project.
- I recommend using CocoaPods to install the libraries. You can install Cocoapods by the following instructions 
- Installing CocoaPods
- CocoaPods is built with Ruby and it will be installable with the default Ruby available on macOS. Using the default Ruby install will require you to use sudo when installing gems. 
- Run the following code on your terminal: $ sudo gem install cocoapods
Adding the SDK
- If you don't have an Xcode project yet, create one now.
- Create a Podfile if you don't have one:
- In the terminal run: $ cd your-project directory
- In the terminal run: $ pod init
- Add the pods that you want to install. You can include a Pod in your Podfile like this: pod 'Firebase/Core'
- This will add the prerequisite libraries needed to get Firebase up and running in your iOS app, along with Google Analytics for Firebase. A list of currently available pods and subspecs is provided below. These are linked in feature specific setup guides as well.
- Install the pods and open the .xcworkspace file to see the project in Xcode.
- In the terminal run: $ pod install
- In the terminal run: $ open your-project.xcworkspace
- Download the GoogleService-Info.plist file from the Firebase console and include it in your app.

### Adding the code
-----------------------------


- Go to https://github.com/mrtrevanderson/Social 
- Clone or download the code from the project
- Replace all the files on your app except for your GoogleService-Info.plist file (this file connects to your firebase console)
- Type command-B to build the app and then run.




### Running the App
---------------------------------

- When you run the app it should open the newest version of Simulator
- We had: Version 10.0 (SimulatorApp-851.2 CoreSimulator-518.19)
- The Simulator will open your app and you will be prompted with the home screen 




In the output you should see a few things that indicate that your app is working correctly and connected to Firebase
FirebaseApp[54072:13663331] 5.6.0 - [Firebase/Analytics][I-ACS023007] Analytics v.50101000 started
2018-12-07 15:02:37.016187-0800 
Choose the Sign up option if you haven’t created a profile yet
You should be promoted with the Sign Up Screen 

This is where you can create your app 
Choose the profile image to change your image to one you are interested in







