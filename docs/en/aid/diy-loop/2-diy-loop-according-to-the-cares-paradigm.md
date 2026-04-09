<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/T6HUtFWrOMY" frameborder="0" allowfullscreen></iframe>
</div>

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

