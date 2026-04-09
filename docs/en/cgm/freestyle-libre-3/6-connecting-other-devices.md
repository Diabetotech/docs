## **<u>6. Connecting other devices</u>**

Welcome to this lesson on connecting your FreeStyle 3 Libre sensor to other devices.

In this chapter, we explore the exciting possibilities of connecting your FreeStyle Libre 3 sensor with various devices, such as smartwatches, smart pens, and insulin pumps.

Some individuals opt to use open-source apps that allow for broader access to sensor data from their FreeStyle Libre 3 sensor. The most used apps are Gluroo and Nightguard for iPhones, and xDrip+ and Juggluco for Android phones. Gluroo and Nightguard are available for download from the Apple Store, while xDrip+ and Juggluco cannot be downloaded from the App store. For further guidance on using these apps, you can refer to the AndroidAPS documentation site. It's important to note that these third-party apps lack support from Abbott and have not received approval from the FDA or EMA. Users should be aware of and accept the associated risks when utilizing them.

### ***6.1 Smart watch***

Currently, there is no native application that allows you to follow your FreeStyle Libre 3 sensor data in real-time on your smartwatch. However, some compatible smartwatches have the ability to mirror smartphone notifications, including alarms and other app alerts. On supported models, you will not only see that there is an alarm, but also see the exact glucose value of that moment. Among the supported models are the Apple Watch Series 7 and newer models, Fitbit Versa 3, and Samsung Galaxy Watch 4. To get the most recent list, you can search online for FreeStyle 3 compatibility.

Alternatively, if you use open-source apps to access your FreeStyle Libre 3 sensor data on your smartphone, it is also possible to use these apps to receive real-time data on your smartwatch.

Let's explore how this functionality works on three common types of smartwatches: Garmin smartwatches, Samsung Galaxy watches, and Apple Watch.

#### ***\#1 Garmin Smartwatch***

Here are the step-by-step instructions for getting your FreeStyle Libre 3 sensor data on your Garmin smartwatch.

- Download the Juggluco app via the [<u>Androidaps documentation site</u>](https://androidaps.readthedocs.io/nl/latest/Hardware/Libre3.html) and [<u>follow the directions</u>](https://www.juggluco.nl/Juggluco/libre3/) to get the FreeStyle Libre 3 sensor data on the Juggluco app.

- Tap on the left side of the Juggluco to open the left menu, open the Watch menu, and toggle on Kerfstok. In the status of Kerfstok, you can toggle on glucose.

- Install the [<u>Garmin Connect IQ Store app</u>](https://apps.garmin.com/nl-BE/) on your phone, and download the [<u>Kerfstok app</u>](https://www.juggluco.nl/Kerfstok/).

- If your Garmin watch is connected to your phone, you can open the Kerfstok app and choose for Watch face. This Watch Face like screen shows the current time, date, battery level, heart rate, glucose level and glucose trend.

#### ***\#2 Samsung Galaxy Smartwatch*** 

Here are the step-by-step instructions for getting your FreeStyle Libre 3 sensor data on your Samsung Galaxy Smart watch, or other smartwatches that work with Wear OS.

1.  Install the LibreLinkUp app and register as a follower within your FreeStyle Libre 3 app, using a different email address than the one associated with your LibreView account. After completing this step, you will have two separate accounts: one for logging into the Libre 3 app, referred to as a LibreView account, and another for accessing the LibreLinkUp app, known as a LibreLinkUp account. Once you log in to LibreLinkUp with your LibreLinkUp account, you will start receiving readings from your FreeStyle Libre 3 sensor.

2.  Install the Gluroo Diabetes Logger app from the Play Store. To link your FreeStyle Libre 3 sensor as a CGM data source in Gluroo: Open the app and press the hamburger button in the top right corner. Select "CGM." Choose "Freestyle Libre via Link-Up." Enter your LibreLinkUp email and password. And press "Connect" to establish the connection.

3.  On your Wear OS watch: Navigate to the Google Play Store on your watch. Search for "Gluroo" and install the Gluroo app. Return to your watch's home screen, long-press on it to access customization options. Swipe to the right to add a new watch face. In the list of watch faces, choose “Big Info” or “Analog dashboard”. Tap "customize", then swipe to the left to select a “complication”. Select the complication you want to change and pick "BLG via Gluroo". After a short wait, you will see your FreeStyle Libre 3 glucose value and glucose trend on your watch. If you tap on the complication, you can see a full glucose graph.

#### ***\#3 Apple Watch***

Here are step-by-step instructions for syncing your FreeStyle Libre 3 sensor data with your Apple Watch:

1.  Begin by installing the LibreLinkUp app and registering as a follower within your FreeStyle Libre 3 app, following the same process as discussed for the Galaxy Watch. Ensure that your sensor glucose readings are visible within the LibreLinkUp app.

2.  Next, head to the Apple Store, install the Gluroo Diabetes Logger app. Link your FreeStyle Libre 3 sensor as a Continuous Glucose Monitoring data source, using the same steps as discussed for the Galaxy Watch.

3.  Once connected, you can go to the “Data tab”, tap “Other formats for apps”, locate the Nightguard link and copy it, using the copy button.

4.  Download the Nightguard app from the Apple Store. Inside the app, tap on "More," then select "Preferences." Input the Nightguard link obtained from Gluroo where it prompts you for a Nightscout URL. After this step, you should be able to view your FreeStyle Libre 3 sensor data in your Nightguard app.

5.  On your Apple Watch, navigate to a modular watch face and tap and hold on the watch face to access customization options. Choose one of the complications, and then select a Nightguard complication, either "BG Values as Gauge" or "BG Values as Text." These options are shown here in the bottom left and bottom middle complications. When you tap on the Nightguard complication, you can view your complete glucose curve. You can scroll through the curve using the dial. In the next tab, there's a refresh button that you may need to use occasionally.

It's worth noting that there might be a slight delay of about 5 minutes between the FreeStyle Libre 3 sensor readings and the values displayed on the watch. Nevertheless, this solution allows you to monitor your glucose trend in real-time on your Apple Watch.

It's important to note that the steps may vary depending on your specific phone and smartwatch models. There are multiple ways to achieve the desired outcome, and if you find abstract instructions challenging to follow, you can refer to online tutorials. Additionally, setting up the devices while having them on hand is often easier than trying to comprehend the process in an abstract form.

<span class="mark">Finally, note that the Libre by Abbott app available in the US does offer native Apple Watch integration.</span>

### ***6.2 Smart pens***

At the moment, the FreeStyle Libre 3 app lacks compatibility with any smart pens.

***6.3 Smart insulin pumps***

Currently, the <span class="mark">FreeStyle Libre 3 sensor is seamlessly integrated into the mylife Loop system, the iLet Bionic Pancreas, Tandem t:slim X2 with Control-IQ technology and the twiist AID system. Additionally, it is undergoing testing in the Omnipod 5 and Tandem Mobi with Control-IQ technology.</span>

Furthermore, some individuals choose to incorporate the FreeStyle Libre 3 sensor into open-source automated insulin delivery systems such as AndroidAPS. It’s important to note that these open-source systems are not approved by medical authorities, and using them is at your own risk.

Exploring and utilizing these open-source software solutions may require guidance as they are still relatively new and limited experience exists with them. If you're interested in trying them out, seeking assistance from Facebook groups dedicated to diabetes management can be valuable.

Embracing these innovative possibilities can foster resilience and empower individuals to assume greater control over their diabetes management journey. However, it's crucial to exercise caution and prioritize safety when considering the adoption of these open-source solutions.

