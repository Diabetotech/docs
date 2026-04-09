# **<u>3. Linking components together</u>**

In this instructional video, we will guide you through the process of linking the components of DIY Loop.

Here's a summary of how DIY Loop works with a Dexcom sensor an Omnipod DASH insulin pump:

- Glycemia is measured every 5 minutes using a Dexcom sensor, and sent to the native Dexcom app.

- The Dexcom app forwards the values to Apple Health, which in turn sends the data to the DIY Loop app on your mobile phone.

- DIY Loop calculates the insulin requirement based on the sensor glycemia received.

- The calculated insulin requirement is sent to an Omnipod DASH pod.

- The Omnipod DASH pod delivers the necessary insulin and sends pod data back to the DIY Loop app.

- The DIY Loop app transmits glycemia and insulin data to Nightscout, which acts as the readout program for DIY Loop.

If you have the Dexcom G6 or Dexcom G7 app installed on your iPhone, caregivers have the option to remotely monitor your glucose levels using the Dexcom Follow app. Additionally, caregivers can build a customized Loop Follow or Loop Caregiver app to track your glucose data, receive real-time notifications and even give remote commands. These monitoring tools offer convenience and peace of mind for both you and your caregivers.

Throughout the video, we will cover the necessary steps for creating the links between the different components of DIY Loop, including:

- Linking the sensor with your DIY Loop app.

- Linking the Omnipod DASH pod with your DIY Loop app.

- Creating a Nightscout account.

- Linking the DIY Loop app to Nightscout.

- And linking the DIY Loop app to an Apple Watch.

By following the instructions provided in the video, you will be able to establish the necessary connections to enable the proper functioning of DIY Loop.

## 

## ***3.1 Linking Sensor to DIY Loop App***

DIY Loop is compatible with several sensors, including several Dexcom and FreeStyle Libre sensors. Here's a guide on how to link these sensors to the Loop app:

Dexcom G6

- Install the official Dexcom G6 app on your iPhone.

- Follow the app's instructions to start your Dexcom sensor and transmitter.

- In the Loop app, go to "Add CGM" and select Dexcom G6.

- Enter the serial number of your Dexcom G6 transmitter in the sensor screen.

- Once the sensor has completed its warm-up time, the Loop app will receive the sensor's glucose values.

- You can change the sensor and transmitter using the official Dexcom G6 app.

- When you change the transmitter, you also need to delete the transmitter in the Loop app's sensor screen and link a new one.

<!-- -->

- If you disconnect from a transmitter, remove it from your Bluetooth settings as well.

<!-- -->

- If you want to use the Dexcom Share function, you’ll need to do this from the Dexcom G6 app, not the Loop app.

Dexcom G7 or Dexcom ONE Plus

- Start your Dexcom G7 or ONE Plus sensor and transmitter using the official Dexcom G7 or ONE Plus app.

- Pair the Dexcom G7 or ONE Plus sensor to the Loop app by entering the pairing code.

- If you want to use the Dexcom Share function, you’ll need to do this from the Dexcom G7 or ONE Plus app, not the Loop app.

FreeStyle Libre 1 sensor

- The older FreeStyle Libre sensor can be connected to the DIY Loop if you use an NFC to Bluetooth link like the MiaoMiao or Bubble transmitter.

- The DIY Loop app can pick up the Bluetooth signal without a 3rd party app, if you select FreeStyle Libre from the sensor options. This will also allow you to scan and start the sensor from the DIY Loop app.

European FreeStyle Libre 2 sensor

- The European FreeStyle Libre 2 sensor can connect to DIY Loop without the need of a transmitter.

- Just choose FreeStyle Libre from the sensor options from the menu and follow the onscreen instructions.

## ***3.2 Linking Insulin Pump to DIY Loop App***

DIY Loop is compatible with Omnipod DASH, Omnipod Eros, the newest Dana pumps, and some older versions of Medtronic pumps. However, the Omnipod Eros and older Medtronic pumps are generally less available and require an additional Riley Link for connectivity.

The most commonly used insulin pump with DIY Loop is the Omnipod DASH. To pair an Omnipod DASH pod with your Loop app, follow these steps:

- On the home screen, click "Add pump" and select Omnipod DASH. Enter the desired pod setup preferences, such as pod expiration reminder and low insulin notification.

- The app will guide you through the pod linking process. Fill the new pod with insulin until you hear 2 beeps, leaving the blue needle guard in place.

- Press "Link pod" and wait for the pump to establish the connection. Then press "Continue", remove the blue needle guard and place the pod in the desired location.

- Press "Insert cannula" and ensure the cannula is properly inserted. Follow the on-screen instructions and press "Finish setup."

- A yellow pod icon representing the basal insulin will appear on the home screen, indicating successful pairing.

If you need to replace your Omnipod DASH pod, go to the home screen, press the pump icon, and select "Replace pod."

It is recommended to keep the Personal Diabetes Manager (PDM) as a backup even when using DIY Loop. While Loop operates independently with a smartphone, keeping the PDM provides a reliable alternative in case of issues with the Loop setup or the need to revert to a traditional insulin pump system.

## ***3.3 Creating a Nightscout Website***

- Nightscout is not a platform to log into but a website that you build or have built, which may involve some additional costs.

- A Nightscout account consists of a website URL and a password to access the website.

- Nightscout accounts are created as individual user accounts.There is no Nightscout platform specifically for healthcare providers.

- Nightscout allows you to track your sensor and insulin data in real-time and share it with your loved ones or healthcare provider. It is necessary to generate reports with glucose and insulin data from your DIY Loop automated insulin delivery system.

- However, with DIY Loop, you also have the option to upload data to Tidepool as an alternative to Nightscout.

- Nightscout is more than just a website for DIY Loopdata; it can connect to various devices.

- Nightscout acts as a central hub, receiving data from sensors and distributing it to multiple devices such as mobile phones, smartwatches, computers, and other monitoring devices. It provides diverse options to access and display glucose information, including through smartwatches, desktop widgets, wall-mounted devices, and integration with voice assistants like Alexa.

- There are multiple ways to create a Nightscout website.

- Nightscout is open-source software. You can find all information on github.nightscout.io.

- You can set it up yourself using step-by-step plans available online,

- Or there are firms that offer Nightscout setup services, such as **T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u, Nightscout-easy and Opensource.clinic.**

- Nightscout and its associated services are not FDA approved, except for T1Pals' service.

- There is no approval from European authorities, so **its** use is **at** your own risk.

- Nightscout appears to be GDPR and HIPAA compliant but does not claim official compliance due to the absence of auditors.

- It is crucial to handle sensor glycemia data securely and protect your Nightscout URL with a password.

- If you want to share your Nightscout website with a loved one or healthcare provider, it is recommended to create a separate token for them.

By following these steps, you can create a Nightscout website easily and securely, allowing you to track and share your diabetes data effectively.

## ***3.4 Linking DIY Loop App to Nightscout***

To connect your DIY Loop app to Nightscout, follow these steps:

- In the DIY Loop app, go to settings.

- Select "Add Nightscout" and enter the URL and password of your Nightscout site.

- Once the Nightscout account is linked to your DIY Loop app, the status will appear as "OK."

- Log into your Nightscout account to view not only your glucose levels but also your insulin delivery and entered carbohydrates.

## ***3.5 Linking DIY Loop App to Apple Watch***

Linking the DIY Loop app to an Apple Watch allows users to conveniently enter carbs and boluses, and start and stop premeal or override settings directly from the watch without needing their iPhone. However, it's important to note that if the iPhone is out of Bluetooth range, the actions requested by the watch will not be executed until the iPhone reconnects.

To link an Apple Watch to an existing Loop setup, users need to pair the watch to their iPhone and rebuild Loop to enable the Loop watch app to be available.

It's important to ensure compatibility between the watch and Loop app. DIY Loop requires watchOS 8 as a minimum, with compatibility varying based on the specific Apple Watch model and iOS version.

The Loop watch app consists of two screens. By swiping left or right, users can switch between the screens.

- The first screen displays Loop status, current glucose, trend arrow, eventual glucose, and icons for carb entry, bolus entry, pre-meal, and override selection.

- For carb or bolus entry, users can adjust the entries using the digital crown. The watch carb entry screen allows users to select the amount, absorption time, and the time when the carbs were or will be consumed. The meal bolus screen displays the recommended bolus, which can be increased or decreased using the digital crown or +/- icons.

- To confirm a bolus, users need to align two triangles by spinning the digital crown. If the bolus is not confirmed or canceled, it will not be delivered. Users can save the entered carbs or cancel the entry on the watch.

- The second screen on the watch displays a graph of recent glucose and predicted glucose data. Users can scroll through the display using finger swipes or the crown. Additional information such as active insulin, active carbs, net basal rate, and reservoir units may be shown.

You can see that by linking the DIY Loop app to an Apple Watch, users can conveniently manage carb and bolus entry, view glucose data, and access various features directly from their wrist.

In this chapter, we explored the different connections available in DIY Loop. From CGM sensors to insulin pumps and Nightscout, these links enable seamless communication for effective diabetes management. By establishing these connections, users can fully leverage the capabilities of DIY Loop and take control of their diabetes.

