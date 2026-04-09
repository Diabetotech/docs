**<u>Diabetes Technology Expert Program</u>**

**DIY Loop**

# **<u>1. Introduction</u>** 

Welcome to this module on DIY Loop, **a** widely used open-source automated insulin delivery system for iPhones. In this module, we will dive into the details of DIY Loop, and explore how it works step by step.

DIY Loop combines three essential components:

- a compatible insulin pump - this can be Omnipod DASH, **Dana pump,** Omnipod Eros or some older versions of Medtronic pumps, although the latter 2 require you to **wear** an additional Riley Link device,

- a compatible glucose sensor - this can be a Dexcom or FreeStyle Libre sensor, or an Enlite sensor paired to a compatible Medtronic pump,

- and the open-source DIY Loop algorithm as an app on a compatible iPhone.

Reports can be viewed using Tidepool or Nightscout, although the Nightscout, part of the wearenotwaiting open project, is recommended by the community for better data analyzing.

Remote monitoring is possible via Dexcom Follow app if you have a Dexcom Share account. If you upload your data to Nightscout, family members and caregivers can monitor your data in real-time via the LoopFollow app or LoopCaregiver app. The Loop Caregiver app also allows caregivers to give remote commands.

This open-source software is as safe and effective as commercial automated insulin delivery systems, but it has not been approved by the FDA or European authorities. Consequently, if you choose to use it, you'll need to build and use it at your own risk. To access the manual for building the app, you can visit this loopdocs website on github~~.~~ Additionally, if you decide to run an open-source DIY app, it is highly recommended to commit to coming back to the support forums on a regular basis to see if there are any important safety updates. Volunteering groups can be find through “Looped” Facebook group and “Loop and Learn” official channels for enlarging your own knowledge to master your personalized insulin delivery system. You can find the “Loop and Learn” Facebook group, YouTube channel, Instagram account and official web site with regular Newsletter subscription included on www.loopandlearn.org.

Before we begin, it's important to note that these videos are not intended as medical advice. Always consult with your healthcare provider before making any adjustments to your therapy.

The content of this module was created by Dr. Inge Van Boxelaer, founder of Diabetotech and endocrinologist at the St-Lucas hospital in Ghent in Belgium. The material has been reviewed by dr. Per Winterdijk, pediatrician at the Diabeter institute in Rotterdam in the Netherlands, and Miroslava Calegari from Slovakia, whose daughter uses DIY Loop and who is also a team member of Loop and Learn. It's important to note that no financial interests are involved, ensuring an unbiased assessment of this open-source automated insulin delivery system.

DIY Loop is available as free accessible open-source software, but an Apple Developer Account, which costs 99\$ for a year, is required in order to have an uninterrupted user experience.

By the end of this video series, you will have a clear understanding of how DIY Loop aligns with the CARES paradigm, how to navigate the DIY Loop app, how to generate and interpret reports in Nightscout, and how to manage specific situations like hypo and hyperglycemia, exercise, illness, high-fat meals, alcohol, and traveling.

Whether you're a caregiver looking to guide individuals on DIY Loop or a prospective user preparing for a successful start, these videos will equip you with valuable insights, tips, and tricks to enhance your experience with DIY Loop.

Good luck and enjoy the journey!

# **<u>2. DIY Loop according to the CARES paradigm</u>**

In this video, we will cover DIY Loop according to the CARES paradigm

We will discuss how DIY Loop calculates and adjusts the automated insulin delivery, when it reverts back to manual mode specific education tips and sensor issues, and how it shares data. After that we will go over DIY Loop’s indications and software updates. Let's get started!

## ***2.1 DIY Loop according to CARES***

### ***\#1 Calculate***

DIY Loop adjusts the preset basal insulin rate based on predictions of glucose levels for the set duration of insulin activity, which is set at 6 hours by default. These predictions are calculated using multiple factors,

- The Carbs On Board prediction estimates the effect of consumed

> carbohydrates on glucose levels using a dynamic carb absorption model.

- The Insulin On Board prediction considers the impact of insulin already in the body on future glucose levels.

- The Glucose Momentum prediction considers the average rate of change in glucose levels between the current reading and the reading 15 to 30 minutes ago, indicating how quickly glucose is rising or falling.

- And the Retrospective Correction prediction takes into account the difference between predicted and actual glucose levels over the past 30 minutes, incorporating this difference into the predicted values.

DIY Loop calculates the insulin requirement by comparing the predicted glucose level with the target glucose level and dividing the difference by the insulin sensitivity factor. This insulin requirement is used to adjust the preset basal insulin rate.

In the DIY Loop app, users can choose between "Temp Basal Only" and "Automatic Bolus" for their insulin dosing strategy.

- In Temp Basal Only mode, the app calculates temporary basals every 5 minutes for the next 30 minutes based on predicted glucose levels. This allows for continuous adjustments to the basal rate.

- In Automatic Bolus mode, the app calculates automatic dose adjustments every 5 minutes. If the app predicts an increase in insulin need; this increase is provided as 40% of the recommended bolus instead of an increased temporary basal. This ensures insulin delivery faster.

Some people recommend to initially start with Temp Basal Only mode and transition to Automatic Bolus mode once your settings are tested and you have a stable glycemia. This allows for getting used to using DIY Loop and its adjustments to the basal rate, carb ratio and insulin sensitivity, before moving on to a more aggressive insulin delivery approach.

If the glucose level falls below the Glucose Safety Limit, basal insulin delivery is halted. This safety limit can be set between 67 and 110 mg/dl or 3.7 and 6.0 mmol/l. If the glucose level is predicted to fall below this Glucose Safety Limit over the next 3 hours, DIY Loop will not recommend basal or bolus insulin.

The target glucose value, referred to as the Correction Range in DIY Loop, can be customized per 30-minute time block. It can be set between 87 and 180 mg/dl or 4.8 and 10 mmol/l.

### ***\#2 Adjust***

In DIY Loop, users have the flexibility to adjust various parameters to personalize their insulin delivery and glucose management. These parameters include the following:

- Users can set their Target Value or Correction Rangein 30-minute time blocks, ranging from 87 to 180 mg/dl or 4.8 to 10 mmol/l.

  - It is typically set between 100-115 mg/dl or 5.6-6.3 mmol/l

  - When defining the Correction Range, users have the option to choose a single target value or a range. **If you choose a range, it** is generally recommended to select a narrow range with a difference of 5 to 15 mg/dl or 0.3 to 0.8 mmol/l.

<!-- -->

- The basal insulin delivery rate can be adjusted at 30 minute intervals.

- Users can set the Carbohydrate Ratio that determines the amount of insulin needed to cover a specific amount of carbohydrates consumed.

- And the Insulin Sensitivity Factor. This parameter defines how much one unit of insulin is expected to lower blood glucose levels.

- Glucose Safety Limit can also be adjusted. This is the minimum glucose level at which basal insulin delivery is stopped to prevent hypoglycemia. It can be set between 67 and 110 mg/dl or 3.7 and 6.0 mmol/l, and it is recommended to set it around 74-80 mg/dl or 4.2-4.4 mmol/l.

- The Pre-Meal Range is an optional parameter that sets the target range before meals and works as a prebolus because it provides a small amount of insulin to help control post-meal glucose spikes. The pre-meal range will stay active for one hour, until carbs are entered, or until it is manually canceled... whichever comes first. It can be set between the Glucose Safety Limit and a maximum value of 130 mg/dl or 7.2 mmol/l, and it’s typically set between the Glucose Safety Limit and 106 mg/dl or 5.9 mmol/l, for example at 80 mg/dl or 4.4 mmol/l.

- Users can also utilize overrides to temporarily adjust the Correction Range and or specify a percentage of insulin release, which will adjust the basal delivery, sensitivity and the carb ratio according to the set percentage.

On top of that, if you use Omnipod DASH Pods, there is a Manual Temporary Basal Rate option, which allows you to set a specific temporary basal rate.

During the initial setup, users can choose between "Temp Basal Only" and "Automatic Bolus" modes.

They also need to set the maximum basal rate, which is generally set at 4 times the highest set basal rate per hour, and a maximum bolus limit, which should be based on realistic bolus needs for larger meals.

Furthermore, users have the option to choose an insulin model tailored for the use of Rapid Acting or Ultra Rapid Acting insulins.

### ***\#3 Revert***

DIY Loop will revert to Manual Mode if there is no connection to the sensor or pump for more than 15 minutes. This can happen when the sensor is warming-up or when the mobile phone is out of range or has a low battery. When DIY Loop is running correctly you can see Green Circle on your Loop app Home screen. This Loop icon will turn to Yellow or Red if Loop has not completed a cycle for 15-minutes or more. Clicking on the Loop icon tells you the last time Loop completed, but you need to look at the Pump Status Icon and the Glucose Status Icon for more information. For example, when glucose data is more than 15 minutes old, the Glucose icon shows 3 stripes. and when the Pump is having a communication issue, you will see a No Signal icon.

When the connection is lost, the system will initially switch to the last set temporary basal rate. After a maximum of 30 minutes without a connection, DIY Loop will transition to Manual Mode, where the basal insulin delivery follows the preset settings. It's important to note that in Manual Mode, there is no suspend-before-low function to prevent hypoglycemia.

It is possible to enter a glucose value from a finger prick in your Loop app. Loop will use this finger prick value for calculating the automated insulin delivery

Once the connection to the pump or sensor is reestablished, DIY Loop will automatically resume Auto Mode and continue with the automated insulin delivery.

### ***\#4 Educate***

Proper education is crucial when starting an automated insulin delivery system. For general education points, please refer to the generic module.

The general education points covered were:

- Using fewer carbohydrates to correct hypoglycemia.

- Considering infusion set problems if blood glucose levels remain high without an apparent reason.

- Trusting the AID system and avoiding unnecessary manual interventions.

- Timing meal boluses before meals.

- Utilizing an Exercise Mode 1 to 2 hours before activity.

- Stopping insulin delivery if the pump is disconnected for more than 15 minutes.

- Responding to alarms and being mindful of automatic updates on mobile phones.

- Seeking peer support for guidance and sharing experiences

Here are some additional education points specific to using DIY Loop:

- Keep the mobile phone containing the DIY Loop app well-charged and near your body for optimal communication between devices. Carrying a portable battery pack is advisable.

- Have a spare mobile phone readily available for emergencies or as a backup device and pre-install the DIY Loop app.

- Utilize advanced settings like Automatic Bolus only when you have a good grasp of the basics and your blood glucose levels are stable.

- Take advantage of the premeal range feature before meals.

- Set up multiple overrides in advance to easily adjust your insulin delivery according to your daily activities.

- Ensure your healthcare provider has access to your Nightscout reports for effective monitoring and support.

- Learn how to use your own NightScout reports.

By being aware of these general and specific education points, users can optimize their experience with DIY Loop and enhance their understanding of automated insulin delivery systems.

### ***\#5 Sensor*** 

DIY Loop is compatible with several glucose sensors, including all Dexcom sensors and some FreeStyle Libre sensors. Although DIY Loop theoretically supports Medtronic's Dexcom G5, **Dexcom ONE** and Enlite sensors, these sensors are no longer available in the market.

If you have doubts about the accuracy of your sensor readings or feel that they do not reflect your condition, perform a finger prick test to confirm. If you notice a significant discrepancy—such as a difference of more than 20% between the sensor and finger prick readings, even when your blood glucose is stable within the target range—it’s advisable to disable Auto Mode until the issue is resolved. The problem could be related to the configuration of the glucose sensor, the sensor itself, or the insertion site. If necessary, replacing the glucose sensor may be required to correct the issue.

Some sensors can be calibrated with a finger prick value. This should only be done if your sensor values are stable and in range. The sensor itself, or the insertion site. If necessary, replacing the glucose sensor may be required to correct the issue.

### ***\#6 Share***

With DIY Loop, users can share insulin and glucose data with their healthcare provider and family members via several apps and platforms.

The most used platform is Nightscout. Here's how this can be done:

- Insulin and glucose data can be forwarded to a Nightscout website, which the user needs to build or have built themselves.

- Healthcare providers and family members can view the data in real-time on this Nightscout website with a token.

Furthermore, Nightscout goes beyond data viewing and allows authorized individuals to remotely administer therapy adjustments such as insulin boluses, enter carbohydrate information, or apply overrides. This feature is particularly beneficial for parents who can adjust insulin levels for their child's safety, even when they are not physically present.

Another platform where you can upload and share data is Tidepool.

On top of that there are several follow apps:

- If the user uses the a Dexcom sensor, caregivers can track the user's data through the Dexcom Follow app

- If the user uses Tidepool, caregivers can follow the user via the Tidepool Mobile app.

- Additionally, there are 2 open-source apps that allow for remote monitoring, that is the Loop Follow app with a wide range of alarms and alerts, and the Loop Caregiver app that allows remote commands from caregivers.

By sharing their data, users can receive support from their healthcare providers and keep their family members informed about their glucose levels and insulin management in real-time.

## ***2.2 Indications***

DIY Loop is an open-source app that does not have official indications approved by the FDA or European authorities. It can be used with all rapid-acting insulin analogues.

Users must build the app themselves and assume responsibility for any risks involved. The necessary information for building the app can be found in the Loopkit documentation available online, as well as through discussions with experienced users in Facebook groups or other forums

While many people have successfully built and used DIY Loop safely, it is crucial that each user:

- Has a thorough understanding of how the app works,

- Collaborates with their diabetes healthcare team to customize the therapy settings,

- Maintains and monitors the system to ensure proper functionality.

- And understands how their insulin pump and glucose sensor works.

To build and utilize DIY Loop, users need a compatible iPhone and computer. The minimum device requirements can be found in the Loopkit documentation. Your iPhone must be the minimum version 15.1.

The app-building process involves following the step-by-step instructions provided in the Loopkit documentation. Users can choose to build the app with either a Mac or Windows PC. For Mac users, a minimum operating system version of 12.5 or higher is required. Rebuilding is required every few months, depending on how you built the Loop app. With the Loop 3.4 version, rebuilding won’t be necessary anymore as auto-updates will be included.

To build the Loop app, users also need an Apple Developer Membership, which costs \$99 per year. The membership request typically takes 1-2 days for approval. Other necessary software, such as Xcode, TestFlight, or Github (for non-Mac PC users), is available for free.

Most people choose to build the DIY Loop app themselves. Alternatively, some healthcare providers or companies offer to build the app for you for a fee.

Throughout the app-building process, it is beneficial to have a mentor or experienced user to seek guidance and assistance. Facebook groups like Looped and Loop and Learn are helpful resources for support and information.

By following the necessary steps and seeking assistance when needed, users can successfully install the DIY Loop app on their mobile devices. While the process requires time, energy, and perseverance, it is entirely possible to accomplish and use the Loop app effectively.

## ***2.3 Software updates***

DIY Loop is continuously evolving, with new versions being released every few months. These updates bring improvements, bug fixes, and new features to enhance the user experience. However, updating the Loop app to a newer version usually requires a computer.

To determine the current version of Loop installed on your device, tap on the Settings icon at the bottom of the Loop app's main screen. The version information can be found in the upper left corner. You can also refer to the LoopKit release page on GitHub for detailed release information and updates.

Loop follows a branching system with two primary branches: master and dev.

- The master branch represents the stable and well-tested version of the app. Updates to the master branch occur when new features from the dev branch are merged into it, resulting in a new release version.

- The dev branch is where the next version of Loop is developed and tested. It contains ongoing developments and tweaks that undergo continuous refinement based on feedback and testing from users and developers. However, it is important to note that the dev branch is a rapidly changing environment, and users must be aware of the expectations and stay informed about the updates and changes.

To stay informed about Loop's development progress, users can:

- Subscribe to Zulipchat Channels for updates and discussions.

- Watch the Loop Repo and Issues List on GitHub.

- Stay active in the Loop Facebook Groups.

- And familiarize yourself with data sources and where to find additional information.

Maintaining a backup plan is important to ensure uninterrupted use of the automated insulin delivery system. In case of iPhone loss, damage, or breakdown, having a spare iPhone ready and a secure place, preferably in the cloud, for essential DIY Loop files is recommended. These files include the DIY Loop app itself, passwords, and an export file containing the latest settings and targets. Also make a backup plan for when your insulin pump fails. You should always know how much basal and bolus insulin you need on average and be ready to switch to insulin pens in case of emergency.

If any issues arise, it is crucial to remain calm and seek support from the Loop community and documentation. Troubleshooting is a normal part of using software, and with patience and support, challenges can be overcome.

By staying informed, actively participating in the Loop community, and following recommended practices, users can effectively manage software updates and ensure a smooth experience with DIY Loop.

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

# **<u>4. How DIY Loop works</u>**

Welcome to this video on the functionality of DIY Loop.

The DIY Loop automated insulin delivery system is operated through the DIY Loop app on an iPhone. The app offers two modes: Auto Mode or Closed Loop Mode – this is when Closed-Loop is enabled in the settings, and Manual Mode – this is when Closed-Loop is disabled in the settings.

In this video, we will delve into the functionality of the DIY Loop app in general, and then explore how you can use it in both Auto Mode or Closed-Loop Mode and Manual Mode.

## ***4.1 DIY Loop app***

The DIY Loop app provides a comprehensive interface for diabetes management. Let's explore the various components and functionalities within the app:

On the home screen of the DIY Loop app, there are three major sections.

- The top part is the Heads-Up Display, which displays the last sensor value, trend arrow, Loop status, and pump status.

- In the middle section, you can see four curves representing predicted glycemia, active insulin on board, delivered insulin, and active carbohydrates on board.

- The lower part features a toolbar with five icons: carb entry, premeal range, insulin bolus, overrides, and settings.

When turning the phone to landscape mode, the Heads-Up Display disappears, and the curves are displayed in a larger format. Each curve shows the last 2 hours and the next 6 hours, and you can scroll down to view additional curves.

The Heads-Up Display provides important information, including sensor glycemia, loop and pump status.

- Tapping on the sensor glycemia takes you to the sensor screen,

- while tapping the pump icon provides more details about the paired insulin pump.

- The Loop icon represents the automated insulin delivery system's functioning, indicated by different colors.

  - A full green circle signifies that the automated insulin delivery system is functioning properly, and a calculation was made within the last 5 minutes.

  - A yellow circle indicates that the system was unable to make a calculation between 5 to 15 minutes ago. While a yellow circle is not a major concern, if you frequently see a red circle, it is important to investigate the underlying cause.

  - A red circle signifies that the system has not been able to make a calculation for more than 15 minutes. This situation requires attention to identify and resolve the issue.

  - In addition, an interrupted green circle represents Manual Mode or Open-Loop Mode, where predictions are made but not automatically sent to the pump.

The four curves in the middle section illustrate how Loop makes calculations.

- The first curve shows predicted glycemia, with the dotted line representing past glycemia and the dashed line representing the prediction. Tapping on the glycemic curve reveals the full prediction for the next 6 hours, considering factors like carbohydrates on board, insulin on board, glucose momentum, and retrospective correction.

- The second curve displays the current and predicted active insulin on board.

- The third curve represents how Loop modulates the set basal insulin rate, with step-ups or step-downs indicating adjustments. The triangles represent insulin boluses.

- The fourth curve depicts the current and predicted carbohydrates on board. You can find more information on the carbohydrate screen.

> Here you can see your recent carb entrees and the predicted and observed glucose change based on those carb entrees.

- If the carbs are fully absorbed within the time window and the blood glucose change matches the entered carbs, the carb entree appears green.

- If the carb entree turns grey, it means the absorption went outside the allocated time window.

- Yellow indicates issues with the entered carbs or absorption time. Checking the curve after a meal helps identify any discrepancies and adjust settings if needed.

At the bottom toolbar of the DIY Loop app, you will find five icons with different functions:

- The Meal Icon allows you to enter the number of grams of carbohydrates you plan to eat. You can also enter carbs up to 12 hours in the past if you forgot and still want to bolus for them. You can specify the absorption time of the carbs or choose a food icon with a fixed absorption time. Loop will recommend a bolus over a certain time period, which you can accept or change.

- The Premeal Icon indicates that you will eat within the next hour. It temporarily lowers your target value, providing you with more insulin for up to 1 hour or until you eat. This can be an alternative to the habit of bolusing 15 minutes before eating.

- The Bolus Icon allows you to manually give a bolus.

  - If Loop predicts hyperglycemia, it may recommend an insulin bolus, which you can choose to accept or decline.

  - The effect of the potential bolus can be seen in the curve above it.

  - On the other hand, if Loop predicts that your glucose levels will fall below the Glucose Safety Limit within the next 3 hours, you will receive an alert before you can administer the bolus.

- The Overrides Icon enables you to set a temporary target value or percentage of insulin release. You can customize and preset overrides as a % of the insulin that needs to be delivered, or as a target value that needs to be higher or lower. Overrides can be enabled indefinitely or for a limited time period. If you activate an override, this will appear as a dark blue bar in your glycemic curve.

- The Settings Icon provides access to various settings. You can adjust the Dosing Strategy here and choose "Automatic Bolus" to make the algorithm more aggressive. Other settings are quite self-explanatory.

By understanding and utilizing the features and functions within the DIY Loop app, users can effectively manage their diabetes and make informed decisions about their insulin therapy.

## 

## ***4.2 Auto Mode (Closed Loop Mode)***

### ***Starting Closed Loop Mode***

Once your sensor and insulin pump are paired, you are able to turn on Closed Loop Mode. It’s recommended to start the system in Manual Mode, and only enable the Closed Loop option once you have tested your basal rates and settings.

- Enabling the Closed-Loop option can be done via the settings

<!-- -->

- The loop icon is now a full green circle and you will be able to track the automated basal insulin adjustments on the home screen.

<!-- -->

- In the DIY Loop app, you can track very nicely how the basal insulin is modulated based on the predicted glycemia.

  - On the home screen, the first thing you see is your glycemic forecast.

  - If you press on this glycemic curve, you will see the full glycemic prediction for the next 6 hours, that is until all insulin has worn off. You can see how Loop takes into account 4 parameters to make this prediction, namely carbohydrate on board, insulin on board, glucose momentum and retrospective correction..

    - So these 4 parameters together lead to 1 predicted glycemic curve for the next 6 hours, which you can see at the top. You can also see here the final glycemia that the algorithm predicts you would have in 6 hours.

      - However, you should not worry if this is very low or very high, because in reality you will probably never have this final glycemia. This is because the algorithm recalculates your insulin level every 5 minutes, which will bring you closer to your target glycemia. This is also why the curve on the home screen only shows the glycemic prediction for the next 3 hours.

      - The glycemic curve over 6 hours is kind of interesting to understand why you are or are not getting basal insulin. Sometimes it can be that your glycemia is high, and yet you don't get basal insulin. This is then usually because it is predicted that there is a chance of hypoglycemia in the next 3 hours, and you will clearly see that on the glycemic curve.

  - You can see the increase or decrease in basal insulin on the home screen in 2 places: at the top right next to the insulin pump icon and in the insulin delivery curve.

    - If the set basal insulin is increased, there will be a step up.

    - If the set basal insulin is decreased, there will be a step down.

    - And if the set basal insulin is not adjusted, you will see a straight line.

    - A triangle in the insulin delivery curve represents an insulin bolus.

### ***Use a preset Temp Target*** 

Via the DIY Loop app, you can use Overrides, Pre-Meal Range or Manal Temporary Basals to adjust insulin delivery based on specific circumstances when you require either less or more insulin. These situations may include exercise, hypoglycemia, illness, menstruation, stress, or high-fat meals.

It is highly recommended to utilize overrides extensively in your daily life and to have multiple overrides preset to provide flexibility and choices. For instance, you can set an override with 50% insulin release fur during exercise and 130% insulin release for when experiencing stress or illness.

- The Pre-Meal range allows you to set a lower target range before your meals, eliminating the need to bolus 15 minutes before the meal as commonly recommended in other automated insulin delivery systems. This approach provides a safer way to administer extra insulin before meals, although it is not widely promoted within the community.

If you use Omnipod Pods, you can also set a Manual Temporary basal. To do this, you can go to your pump screen and choose a Temporary Basal, and select the basal insulin rate and the duration

### ***Adjusting parameters***

In the DIY Loop app, you can customize your therapy settings to personalize your insulin delivery. You have the ability to adjust the correction range, pre-meal range, glucose safety limit, carb ratio, and insulin sensitivity.

Additionally, you can modify overrides directly through the Overrides icon, and you can set a Manual Temp Basal as mentioned earlier.

These adjustments allow you to optimize your automated insulin delivery system according to your specific requirements and circumstances.

### ***Giving an insulin bolus***

In the DIY Loop app, you can give an insulin bolus by selecting the bolus icon. When you want to use the bolus calculator, you can choose to enter carbs via the Meal icon. After entering the carbohydrates for the bolus, you will also need to specify the absorption rate.

Loop provides preset options like lollipop, taco, and pizza to help estimate the absorption time for different types of meals.

- For fast sugars, you can choose the lollipop with a 30-minute absorption time.

- The taco is suitable for most normal meals with a 3-hour absorption time.

- For high-fat meals or larger meals, the pizza option represents a 5-hour absorption time.

Keep in mind that determining the precise absorption time for a specific meal may require some trial and error due to limited data.

Within the version 3.4 of DIY Loop, there will also be a possibility to add favorite meals.

### ***Suspending insulin***

When using the DIY Loop app, you have the option to suspend insulin delivery or set a manual temporary basal rate of 0 U/hour.

To suspend insulin delivery, you can tap on the "Suspend Delivery" icon in the pump screen, and you will see on the home screen that the insulin is suspended. You can easily restart insulin delivery via the pump screen.

If you use an Omnipod Pod, you will be asked to set an audible alert in 30 minutes to 2 hours.

Alternatively, you can set a manual temporary basal rate by tapping on the "Set Temporary Basal Rate" icon in the pump screen. This brings up the Temporary Basal screen where you can select a basal rate of 0 U/hour and duration.

Selecting a manual temporary basal rate of 0 U/hr instead of suspending insulin allows the basal delivery to automatically resume at the end of the selected duration, without an audible alert.

## ***4.3 Manual Mode***

In certain situations, it may be necessary to switch to Manual Mode in DIY Loop. This can be done by disabling Closed Loop via the settings. In Manual Mode or Open-loop, the following adjustments can be made:

- Basal insulin rate, carbohydrate ratio, and insulin sensitivity can be adjusted in the therapy settings.

- Temporary basal rates can be set through the pump screen.

- And boluses can be given using the bolus icon or the meal icon if the bolus calculator is preferred.

In conclusion, working with DIY Loop in closed-loop mode offers the opportunity for enhanced glycemic control and flexibility in diabetes management. While it may require some initial setup and understanding of the app's features, you are not alone in this process.

The Loop community is a valuable resource, ready to provide support and guidance as you navigate through the various aspects of the app. Whether it's transitioning from open-loop to closed-loop or adjusting therapy settings, you can rely on the collective knowledge and experience of the community.

So, embrace the journey, reach out for assistance when needed, and leverage the available resources to make the most of DIY Loop in your diabetes management. Together, we can work towards achieving optimal glycemic control and improving quality of life.

# **<u>5. Creating and interpreting reports</u>**

Welcome to this video on creating and interpreting reports of DIY Loop via Nightscout.

Previous videos have covered the steps to create a Nightscout website and connect your DIY Loop app to Nightscout for data transmission every 5 minutes.

In this video, we will cover the following topics:

- What information you can find on Nightscout

- The various reports available in Nightscout

- And how to interpret these reports effectively

By the end of this video, you will have a comprehensive understanding of how to access and utilize the reports in Nightscout, empowering you to make informed decisions about your diabetes management.

## ***5.1 Nightscout Interface***

In the Nightscout interface, the website is typically black and can be customized based on your preferences. Here are the different sections of a Nightscout website:

1.  The title bar displays the name of your site on the left and includes buttons on the right, such as the menu button with various settings options. You may also find edit and audio icons, which are rarely used. Depending on your authentication status, you will also see a plus sign, where you can log treatments.

2.  The system information section shows the current information of all systems connected to Nightscout. It may include gray boxes or plugins, providing additional details when hovered over. In Nightscout we call these pills.

3.  The user and treatment information section displays information about you and your treatments. You'll find pills or abbreviations that will be explained further in the settings section.

4.  The basal insulin section shows your basal insulin release.

5.  The sensor glucose and treatments section displays your sensor glucose readings, carbohydrate and/or insulin treatments, as well as predictions from DIY Loop.

6.  This data history section shows the last 48 hours of data.

In Nightscout, you can access various settings through the hamburger menu at the top. Here's an overview of the available options:

- Reports allows you to generate reports.

- Via Profile and Food Editor you can change settings, although the settings are usually managed through the DIY Loop app rather than Nightscout.

- Admin Tools enable you to create access tokens for sharing data with healthcare providers or family members.

- Account settings provide options to adjust units, time format, language, and more. You can also customize the appearance of your Nightscout account, including the display of plugins or pills. Additionally, this section explains the abbreviations used in the interface.

- Changes can be saved if you enter your API password. Below that, you can see the authentication status.

By exploring these settings and making appropriate adjustments, you can personalize your Nightscout experience to suit your needs.

## ***5.2 Types of reports***

When using DIY Loop, you can access reports through your Nightscout website via the menu in the top right.

Some of the key reports you can access include:

- Day to day Reports: These shows how the algorithm adjusts basal insulin and provides insights into microbolus delivery.

- Distribution Report: This report displays Time in Range, Time Below Range, and estimated HbA1c. The Coefficient of Variation can be calculated by dividing the standard deviation by the mean glucose level and multiplying it by 100.

- The Percentile Chart Report offers an Ambulatory Glucose Profile-like picture to analyze glucose trends.

- The Profiles Report allows you to review and record insulin settings, such as insulin duration, carbohydrate ratio, insulin sensitivity, basal insulin rate, and target value.

- And the Loopalyzer Report provides visualizations of average basal adjustments over a 24-hour period within a specified time frame. This can help identify patterns and trends in basal insulin adjustments made by the algorithm.

Alternatively, reports from Nightscout can be visualized using the Nightscout Reporter software. This free web-based platform provides a more user-friendly interface and allows you to select the desired reports, set the time period, and generate a PDF document to forward to your healthcare provider. Interesting reports available include analysis, profiles, glucose percentile chart, and daily reports.

There are three ways to discuss these reports with your healthcare provider:

1.  You can provide your healthcare provider with your Nightscout URL and a secure token that you have created. This allows them to access and view the reports directly.

2.  While you can't directly generate a PDF from Nightscout, you can save the reports as PDF files. Simply open the desired report, press "Ctrl+P" (or Command+P on a Mac computer), and select "Save as PDF" as the printer option. This will create a PDF file that you can save and email to your healthcare provider if needed.

3.  Another option is to use Nightscout Reporter to create more visually appealing reports that can be easily forwarded to your healthcare provider.

By effectively utilizing Nightscout and Nightscout Reporter, you can provide your healthcare provider with comprehensive reports that highlight the performance and trends of your diabetes management with DIY Loop.

## ***5.3 Interpreting reports***

In DIY Loop, the main parameters that can be adjusted are the target value or Correction Range, carbohydrate ratio, basal insulin rate, and insulin sensitivity. This can be done via the Therapy Settings in the DIY Loop app.

It can be helpful to follow a structured approach when interpreting reports and making adjustments. Here is a detailed guide:

1\. Assess Glycemic Information:

- Check on the Distribution report if treatment goals, particularly Time in Range and Time Below Range, are being met over the past 2 to 4 weeks. Following international guidelines, time in range should be above 70% and time below range should be below 4%.

- If you have access to the Analysis report of Nightscout Reporter, take note of the frequency of meal bolusing, which you would expect to be on average 3 to 4 times per day.

2\. Optimize AID Settings:

- Analyze the Ambulatory Glucose Profile (AGP) to identify trends of hypo- or hyperglycemia. If you spot trends, try to find out on the Daily reports, if these are related to meal boluses.

- For trends related to meal boluses: assess factors such as bolus timing, carbohydrate counting, and consider adjusting the carbohydrate ratio.

  - You can also explore the option of faster-acting insulins like Fiasp or Lyumjev.

- For trends after manual correction boluses or after hyperglycemia: you can consider changing the insulin sensitivity factor, to adjust the aggressiveness of the algorithm.

- You can also control the aggressiveness of the insulin delivery by adjusting the maximum basal rate and maximum bolus.

  - Lowering these limits can help prevent excessive insulin administration, especially in cases of frequent hypoglycemia.

  - On the other hand, if these delivery limits are restricting the system's ability to correct high blood glucose levels effectively, it may need to be increased. This should be done with caution.

- For trends outside of meals or boluses: you can adjust the Correction Range per time block or change the basal insulin rate from 1 hour before and during the corresponding period with 10-20%.

It's also important to explore possible correlations with missed boluses, exercise, alcohol or hypoglycemia.

In DIY Loop, it is important to ensure that the basal insulin rate is appropriately set. If you notice a consistent pattern of increasing or decreasing basal insulin during a specific period of the day, for example in the Loopalyzer Report, the aim is to adjust the basal insulin rate at that time to align with the user's requirements.

3\. Guide Behavioral Recommendations: Ensure proper usage of the automated insulin delivery system in the Daily reports:

- Sensor wear time, activation of Auto Mode, and adherence to pre-meal bolusing can best be checked in the Day to day reports.

- You can also check the correct use of Pre-Meal Range and Overrides, and evaluate for overcorrection of hypo- or hyperglycemia.

- Also ask about the appropriateness of alarm settings and reminders, to avoid alarm fatigue.

4\. Review Pump Settings and Emergency Plans:

- Document all pump settings, including at least basal insulin rate, carbohydrate ratio, insulin sensitivity, Correction Range, Pre-meal Range and Glucose Safety Limit. Also consider checking the algorithms type, pre-mael range, glucose safety limit and maximum delivery settings.

- Establish an emergency plan, including the availability of insulin pens for short- and long-acting insulin, in case of a pump malfunction or other emergencies.

When making changes, it is recommended to modify one setting at a time. After implementing a change, closely monitor the effects over a period of 1-2 weeks. It is possible that your initial adjustment may not yield the desired results, in which case, you can explore alternative options and make further adjustments accordingly. The key is to iterate and fine-tune your settings based on the feedback provided by your Nightscout reports, ensuring optimal performance of your Loop system.

By following these guidelines and considering the provided details, you can effectively interpret reports, optimize insulin settings, and ensure proper usage of DIY Loop for improved diabetes management.

Please note that DIY Loop is highly customizable through patches and code variations. These versions can have modified standard settings. Keep it in mind and ask your patient about his personal customizations before analyzing his data.

**<u>6. Managing special situations</u>**

In this video, we will provide specific tips for managing special situations with DIY Loop.. These tips are in addition to the general guidelines discussed in the module on automated insulin delivery systems.

We will cover strategies for handling hypo- and hyperglycemia, high-fat meals, exercise, illness, alcohol, travel, and more.

By implementing these tips, you can optimize your glucose control and enhance your overall diabetes management with DIY Loop.

## ***6.1 Hypoglycemia***

In the case of hypoglycemia, using an automated insulin delivery system like DIY Loop will require fewer carbohydrates to recover compared to a non-automated insulin delivery system, especially if you have minimal insulin on board. The insulin on board and recent insulin history can be seen on the home screen and graph of DIY Loop, allowing you to assess your insulin levels.

To prevent further episodes of hypoglycemia, you can adjust the system to provide less insulin using an Override with a reduced percentage of insulin delivery or with a higher target range.

It's worth noting that at times, the algorithm may increase basal insulin even during low blood sugar levels. This can occur when the predicted glucose level is higher than the target value. In most cases, the algorithm proves to be accurate in its predictions.

## ***6.2 Hyperglycemia***

In the case of mild hyperglycemia, it is generally advised to trust DIY Loop and allow it to handle the situation. However, if a hyperglycemic episode goes unnoticed by DIY Loop, you can manually administer an insulin bolus using the bolus icon. Loop may recommend an insulin bolus if it predicts hyperglycemia, and you have the choice to accept or decline the recommendation. The effect of the bolus can be observed in the curve displayed above.

Alternatively, you can use an Override with a higher percentage of insulin release or a lower Correction Range, to temporarily increase insulin delivery.

In the case of prolonged and severe hyperglycemia, it is important to consider if there is an issue with your infusion set or pod. When in doubt, it is recommended to replace your pod. Remember the saying, "If in doubt, change it out." Ensure that you have enough equipment on hand to perform all necessary replacements.

## ***6.3 High-fat meals***

When consuming a high-fat meal while using the Loop app, it is advisable to take certain measures:

- Set a longer absorption time, exceeding 4 hours or using the pizza icon, to ensure slower delivery of meal insulin.

- Consider adding additional carbohydrates to compensate for the fats and proteins consumed.

  - You could try to enter approximately 10% of the grams of fat as carbohydrates and around 25% of the grams of protein as carbohydrates.

- In the Loop app, you can also set the start time for absorption 1 to 2 hours in the future, allowing for a better match of the insulin delivery with the digestion process.

It is important to note that individual experiences with diabetes may vary, so these guidelines serve as a starting point and may require adjustments based on personal needs and responses.

After the meal, you can monitor in the carbohydrate curve if the observed glucose change aligns with the predicted glucose change.

By analyzing the carbohydrate curve, you can gain insights into the effectiveness of your approach to managing a high-fat meal with Loop.

Additionally, it is recommended to keep a food log to track your meals and their impact on your glucose levels. By recording details such as the type of food, portion sizes, and any adjustments made in Loop, you can identify patterns and make informed decisions about managing your diabetes. A food log helps you understand how different meals affect your glucose control and allows for continuous improvement in your management approach.

## ***6.4 Exercise***

During sports activities with DIY Loop, it is recommended to consider the following strategies:

- Use overrides to set a higher target range before and during exercise to mitigate the risk of hypoglycemia.

- As discussed in the general module on automated insulin delivery systems, reducing the meal bolus can also be beneficial.

- Monitor your glucose trends closely and make adjustments accordingly.

- Consider connecting your **DIY Loop** app to a smartwatch or cycling computer for easier access to glucose readings during exercise.

- If you consume small amounts of carbohydrates during physical activity, you do not need to enter them in the DIY Loop app.

Remember that these strategies are starting points, and it's important to fine-tune your insulin dosage and carbohydrate intake based on your personal experience and observations during exercise.

## ***6.5 Illness***

During illness, it is generally recommended to keep DIY Loop in Auto Mode or Closed Loop Mode unless advised otherwise by your healthcare provider.

You can consider using an override specifically designed for illness, such as a higher percentage of insulin delivery.

Please refer to the guidelines about illness discussed in the general module on automated insulin delivery systems.

It's important to note that illness can have varying effects on blood glucose levels, and individual responses may differ. Monitoring your glucose levels closely and making adjustments based on the guidance provided for hyperglycemia will help you manage your diabetes effectively during times of illness.

## ***6.6 Alcohol*** 

When consuming alcohol while using DIY Loop, it is important to take proactive measures to prevent hypoglycemia. Consider setting a temporary Override with a lower percentage of insulin delivery and or a higher Target Range.

It is important to note that increasing carbohydrate intake is not an effective strategy, as DIY Loop will compensate for any rise in glucose levels by increasing insulin administration.

Always monitor your glucose levels closely when consuming alcohol and be prepared to make further adjustments as needed.

## ***6.7 Travel*** 

When traveling with DIY Loop, it is important to be prepared and take sufficient supplies with you.

If you are flying, keep the following considerations in mind:

- The Bluetooth functionality of your mobile phone and pump can remain on during the flight.

- However, **some** airlines require passengers to switch their phones to airplane mode during take-off and landing. Normally Bluetooth can stay on during Airplane Mode. If not, the pump will revert to the preset basal insulin rate. Remember to turn on Bluetooth as soon as possible to resume Auto Mode functionality.

- The Wi-Fi and 4G capabilities of your SIM card may be unavailable during the flight, but this will not affect the operation of the DIY Loop app, which will continue to function perfectly via Bluetooth. However, data transmission to Nightscout will be temporarily interrupted.

The DIY Loop app automatically adapts to different time zones and daylight savings time. On the other hand, you can choose when to match your pump time to the time zone of your location. The pump time defines your therapy settings like basal insulin rate, carbohydrate ratio, ISF and correction range.

You can easily adjust the pump time to match your time zone via the pump screen. For daylight savings time changes, you can promptly update the pump time. When traveling, you have the flexibility to leave the pump time unchanged for short trips. This way, DIY Loop provides convenience and flexibility in managing time zone adjustments during your travels.

On top of these recommendations, you can also check out the Pro tips for all above mentioned unique situations provided by Loop and Learn. Join the Loop and Learn Facebook group, subscribe to Loop and Learn Youtube channel, follow @loopandlearn on Instagram and visit Loop and Learn official website www.loopandlearn.org.

# **<u>7. Case report</u>**

In this final chapter, we would like to refer to a valuable free webinar about DIY Loop. In this video, Nabeel Khan, a Diabetes Technologist from BCDiabetes in Canada, shares a comprehensive overview of adjusting therapy settings in Loop based on real-time data from Nightscout.

Please click on the link below this video as Nabeel Khan's expertise and examples will further enhance our understanding of DIY Loop, empowering us to optimize our glycemic control.

https://youtu.be/c7EeS5scVN8?t=513 (8:33-18:35)

In addition to the valuable information provided in this chapter, we encourage you to watch a YouTube video by diabetes technology blogger Justin, where he demonstrates how he personally utilizes DIY Loop with Dexcom G7 and specifically highlights how he analysis his carb inputs, how he uses overrides, and why he loves the connection with his Apple Watch. This video offers a practical and real-life perspective on using DIY Loop and can enhance your understanding of its functionality.

https://www.youtube.com/watch?v=Z\_\_ebveEUYQ&t=16s

Congratulations on completing this module on DIY Loop! You have gained a comprehensive understanding of the features, functionalities, and best practices associated with this innovative automated insulin delivery system. Armed with this knowledge, you are now equipped to harness the power of DIY Loop and embark on a journey towards better diabetes management.

Remember, diabetes management is an ongoing process, and continuous learning and adaptation are key. Stay connected with the Loop community, seek support when needed, and always prioritize your health and well-being. With DIY Loop and the insights of Nabeel and Justin, you have the tools and knowledge to take control of your diabetes and live life to the fullest.
