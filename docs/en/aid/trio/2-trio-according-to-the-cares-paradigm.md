<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/sVKbouqSub8" frameborder="0" allowfullscreen></iframe>
</div>

## <u>2. Trio according to the CARES paradigm (26.5 min)</u>

In this video, we will cover Trio according to the CARES paradigm.

We will discuss how Trio calculates and adjusts the automated insulin delivery, when it reverts back to Manual Mode, specific education tips and sensor issues, and how it shares data. After that we will go over Trio indications and software updates. Let's get started!

### 1) Trio according to the CARES paradigm

### 2.1 Calculate

In Trio, the default algorithm adjusts basal insulin only. The preset basal insulin rate is adjusted based on the predicted glycemia of the next 5 to 9 hours. Here's a breakdown of how Trio works:

Trio combines different blood glucose or "BG" predictions to calculate what the user's glucose is predicted to be at the end of the currently administered insulin's full Duration of Insulin Action or DIA:

- Trio calculates a carb predicted BG, which is a prediction based on the carbohydrates on board,
- an insulin predicted BG, which is a prediction based on the insulin on board,
- an UnAnnounced Meal predicted BG, which is a prediction in case of unannounced carbohydrate consumption or other conditions resulting in an unexpected change in insulin needs,
- and a Zero Temp predicted BG, which is the worst-case scenario, in case insulin is suddenly no longer administered and remaining entered carbohydrates are no longer absorbed.

Trio takes into account any errors in predictions, because the Eventual BG prediction is adjusted based on the deviation between the current glucose and the predicted glucose, also known as the blood glucose impact. The algorithm also considers the glycemia trend by calculating the delta, or the difference between the current and past glycemia. And it also takes into account the short-term and long-term glucose momentum, which is the amount of change between current and the glucose of 15 and 40 minutes ago.

The insulin requirement or InsulReq is calculated by subtracting the target blood glucose from the minimal predicted blood glucose, and dividing this difference by the insulin sensitivity or ISF. This insulin requirement will determine whether to increase or decrease the manually preset basal insulin.

If hypoglycemia is predicted, basal insulin will be stopped, and rescue carbohydrates may be recommended. This Minimum Safety Threshold is determined by the target glucose, but can be overridden to up to 120 mg/dl or 6.7 mmol/l.

In conclusion, the insulin delivery, including the baseline basal, will be raised or decreased based on the calculated insulin requirement. This is shown in the app as a temporary or temp basal with a specified insulin rate and duration or a microbolus, and these temp basals are recalculated every 5 minutes. A new calculation from Trio is also called a loop cycle.

In Trio, there is the option to deliver the insulin required calculation as a super micro bolus or the traditional temp basal. When given as a microbolus, the same insulin dose is delivered faster, followed by a temporary pause or reduction in basal insulin delivery. How these super micro boluses or SMBs are calculated based on the temp basals, can be adjusted within predefined safety settings.

Trio also uses an autosens feature, which increases or decreases the insulin delivery, based on a comparison of the user's insulin sensitivity from the past 8 and 24 hours.

- It calculates a percentage that reflects how the insulin sensitivity in the past hours differs from the currently set sensitivity, and uses that % to adjust your insulin sensitivity and basal insulin rate.
- The Autosens function can also be applied to the target value, adjusting it based on the calculated sensitivity ratio.
- The max and min Autosens ratio are set at 120% and 70% respectively. They determine the maximum and minimum adjustment percentages based on the Autosens function. This means that the values, and thus insulin delivered, can be adjusted by no more than 120% and no less than 70% using Autosens.
- If you activate the UnAnnounced Meal function, the algorithm will detect fast glucose increments caused by carbs, adrenaline, etc., and tries to adjust it with SMBs. This also works the opposite way: if there is a fast glucose decrease, it can stop SMBs earlier.

Additionally, Trio offers Dynamic ISF which is a more aggressive way to adjust your insulin sensitivity.

- If you enable Dynamic ISF, it replaces the Autosens percentage calculation.
- It adjusts your ISF, but in a dynamic way, based on your current glucose reading. There is an inverse adjustment to ISF. The higher your glucose reading, the lower your ISF, and vice versa.
- The default formula for Dynamic ISF uses a logarithmic scale to determine the ratio for ISF adjustment.

  - This calculation uses a combination of the Total Daily Insulin from the last 2 hours and the last 10 days, current glucose reading, and accounts for the insulin type being used to determine what the current insulin sensitivity is for this loop cycle. This is considered the more physiologically accurate method for determining insulin sensitivity based on glucose readings.
  - Logarithmic Dynamic ISF must first be manually tuned at the time it is enabled. The Logarithmic Adjustment Factor should start at approximately 0.02 x your average total daily insulin dose. Adjustment Factor is a very individual value and will be different for each person.
  - Logarithmic's aggressiveness can be adjusted using the Autosens Maximum and Minimum settings. Logarithmic Adjustment Factor should not be used to change aggressiveness.

- The second option for Dynamic ISF uses a Sigmoid formula.

  - This formula is simpler and contains fewer variables, but is less physiologically accurate. Sigmoid does not utilize your Total Daily Insulin, but relies solely on how far from target your current glucose reading is. With Sigmoid, Dynamic ISF uses the profile ISF when you are at your target glucose.
  - Sigmoid's aggressiveness can be adjusted using 3 settings: Sigmoid Adjustment Factor, Autosens Maximum, and Autosens Minimum. In Sigmoid, the Adjustment Factor should never be greater than 100% and should stay around 50% for most users. Under 50% will cause a slower response, above 50% causes a more rapid response.
  - If a user is unable to tune their Logarithmic settings, Sigmoid is the recommended option. Sigmoid is also a great option for users with rapid variability in insulin sensitivity, such as women who have variations during their menstrual cycle.

The target glucose value of Trio can be adjusted between 72 and 180 mg/dl or 4 and 10 mmol/l.

Trio places a high priority on safety and incorporates various safety settings and limits to prevent potentially dangerous insulin delivery. To ensure users configure the system correctly, the user community proposes defensive settings, and has disabled Dynamic ISF for the first 7 days of closed loop use. Over the course of several weeks, you can gradually move towards more aggressive settings.

### 2.2 Adjust

In Trio, you have the flexibility to adjust various parameters to personalize your treatment.

You can set a single target glucose value per time block of 30 minutes between 72 and 180 mg/dl (4 and 10 mmol/l). International guidelines suggest starting with a target value between 110 to 120 mg/dl (or 6 to 6.5 mmol/l). Many users opt for a target value of 100 mg/dl (or 5.6 mmol/l) during the day and even lower during the night - for example 90 mg/dl (or 5 mmol/l). This can be considered if this doesn't cause significant hypoglycemia.

Carbohydrate Ratio, Insulin Sensitivity, and Insulin Peak Time can be adjusted according to your specific requirement.

- The duration of insulin action in open-source closed-loop systems is typically longer than in traditional insulin models due to the consideration of insulin's long tail effect and the impact adjusting this will have on the insulin decay model. Trio uses a Duration of Insulin Action of 10 hours as the internal formula used for insulin decay most closely matches the reported decay from insulin manufacturers.
- Trio allows you to select the type of insulin you use. You can choose from options such as Apidra, Humalog, Novorapid or NovoLog, Fiasp and Lyumjev. Depending on the selected insulin type, Trio will provide a corresponding profile. Additionally, while Duration of Insulin Action should not be adjusted, Insulin Peak Time can vary by person and this setting can be fine tuned, if necessary.

Within Trio, there are numerous other adjustable parameters, and we will delve into the primary ones: SMB options, Recommended Bolus Percentage, Autosens options, Dynamic ISF and Delivery limits.

- When starting to use Trio in "closed loop", it is recommended to use supermicroboluses only after consuming carbohydrates. If this works well for you, you can choose to activate SMB at other times as well. If any SMB options are enabled, UAM should be enabled as well. You can make the SMBs more or less aggressive by adjusting the Max SMB Basal Minutes.
- In Trio, you can change how much insulin is suggested via the bolus calculator by changing the Recommended Bolus Percentage. Trio first calculates an insulin dose based on the integrated bolus calculator, which will then be multiplied by your "Recommended Bolus Percentage" to display your suggested insulin dose. Trio will deliver the remaining insulin via SMBs as the blood sugar starts to rise. You can view the details of the bolus calculation by tapping the "info icon" next to the recommendation.
- Trio automatically adjusts your insulin sensitivity based on an Autosens feature. You can enable Autosens to also adjust your target glucose value. You can set the maximum and minimum % your ISF can be adapted. And you can allow Autosens to adjust your ISF when you set a Temporary Target.
- Dynamic ISF can be enabled via Dynamic Settings after 7 days of successful closed looping. Adjusting the aggressiveness of Dynamic ISF is dependent upon which formula is used. After the proper Logarithmic Adjustment Factor is set, Logarithmic Dynamic ISF can be adjusted using Autosens Maximum and/or Minimum. Sigmoid Dynamic ISF can be adjusted using Sigmoid Adjustment Factor, Autosens Maximum, and/or Autosens Minimum.
- Additionally, there are delivery limits in Trio that can be adjusted within a safe range based on the user's age and type.

  - You can set your maximum insulin on board, maximum bolus, maximum basal rate, maximum carbs on board and a minimum safety threshold. The maximum insulin on board or IOB is the total amount of basal and bolus insulin allowed to be active at once. It acts as a safety cap on how much insulin Trio can deliver beyond your scheduled basal rates. In Trio, this value defaults to 0 for safety and must be increased manually before automated insulin dosing occurs. For adults, the maximum basal rate is recommended to be set at 3 to 5 times the highest basal rate.
  - Maximum daily safety multiplier and current basal safety multiplier are additional limits for the maximum basal insulin rate, and it's generally best to leave them unchanged at the start. The maximum daily multiplier is set to 300% by default, allowing a maximum of 3 times the highest manually set basal rate. The current basal mode multiplier is set to 400%, allowing a maximum of 4 times the manually set basal rate. These can be safely increased to up to 500% if you have low basal rates compared to your overall insulin needs for carbs.

Remember that all settings and parameters should be adjusted in consultation with your healthcare provider, taking into account your individual needs and medical guidance.

### 2.3 Revert

In Trio, if there is no connection to the sensor or pump for more than 15 minutes, the system will revert to Manual Mode.

When the connection is lost, the pump will continue the last set temp basal. After a maximum of 120 minutes for zero temp basals or 30 minutes for increased temp basals, it will transition to Manual Mode.

In Manual Mode or Open Loop, the basal insulin delivery is set to the preset basal rate without a suspend-before-low function. Currently, Open Loop is not recommended for Trio users. Should you want to use your pump in manual mode, it is best to set Maximum Insulin on Board (Max IOB) to 0 and set Autosens Maximum and Minimum both to 100%. This will give you a suspend-before-low function without any autosens or dynamic functions.

Once the connection to the pump or sensor is reestablished, the system will automatically resume the Auto Mode, which is called closed-loop in Trio. It will take 2-3 consecutive readings after a disconnected sensor for Trio to automatically resume closed loop.

### 2.4 Educate

Proper education is crucial when starting an automated insulin delivery system. For general education points, please refer to the generic module.

The general education points covered were:

- Using fewer carbohydrates to correct hypoglycemia.
- Considering infusion set problems if blood glucose levels remain high without an apparent reason.
- Trusting the automated insulin delivery system and avoiding unnecessary manual interventions.
- Timing meal boluses 15 minutes before meals.
- Utilizing an Exercise Mode 1 to 2 hours before activity.
- Stopping insulin delivery if the pump is disconnected for more than 15 minutes.
- Responding to alarms and being mindful of automatic updates on mobile phones. Automatic iOS updates should be disabled because new iOS releases may not immediately support Trio; compatibility should always be checked first.
- Seeking peer support for guidance and sharing experiences.

Trio is a powerful tool for managing diabetes, but it's important to remember that it is not a fully automated system that you can "set and forget". It requires active monitoring and understanding of its actions. Here are some additional education points specific to using Trio:

- Active Monitoring: Trio controls your insulin delivery, so it's crucial to watch it closely and understand how it works. Be attentive to any potential errors or unexpected behavior and learn how to interpret the system's actions.
- Phone Usage: Once paired, the phone can instruct the pump to perform various actions. Your phone with Trio is to be regarded as a medical device and be handled accordingly. Avoid installing unnecessary apps or games that could introduce malware and potentially interfere with the system's operation.
- Security Measures: Install all security updates provided by Apple to keep your device protected. This helps safeguard against potential security vulnerabilities. Do not activate "Automatic Updates" or "Beta Updates" in the Software Update settings of your iPhone. Check first the support of a specific iOS release in the Trio community prior to upgrading your iPhone operating system.
- Proximity to Pump and CGM: Keep your mobile phone in close proximity to your insulin pump and CGM. It should be within the recommended distance (which is usually within 5 meters or 15 feet for the CGM) to maintain a reliable connection.
- Passwords and Backups: Keep a record of all passwords used and store a backup of your app in iCloud. Regularly exporting your settings to iCloud simplifies the reinstallation process and prevents resetting your personalized parameters.
- Spare Mobile Phone: It's advisable to have a spare mobile phone with the Trio app and CGM apps installed available for emergencies. This ensures that you have a backup device in case of any technical issues with your primary phone.
- Check basic settings first: It is recommended to close the loop and utilize the first 7 days without access to dynamic ISF to check all your basic settings like basal insulin rate, carb ratio and insulin sensitivity.

  1. The results of the Trio system depend largely on the correctness of these basic settings, so they need to be fairly accurate.
  2. Next slowly raise "maximum insulin on board", to allow Trio to automatically dose insulin. This is set by default on 0 and can slowly be raised to the sum of your average meal bolus plus 3 times your highest basal rate.
  3. Next you can enable multiple individual SMB options or SMBs Always.

- Advanced Settings: Utilize advanced settings, such as Max SMB Basal Minutes and Dynamic ISF only after you have a good understanding of the basics and have achieved stable blood glucose control. Note that these features may not work optimally for everyone.
- Healthcare Provider Access: Ensure that your healthcare provider has access to your reports generated by Nightscout or Tidepool. This enables them to stay informed about your diabetes management and make informed decisions during your medical consultations.
- Master Insulin Pump and Sensor Use: Make sure you are able to use your insulin pump and sensor properly as well.

By following these guidelines and maintaining a proactive approach to using Trio, you can optimize the system's effectiveness and ensure a safe and reliable automated insulin delivery experience.

### 2.5 Sensor

Trio can be linked to the Dexcom sensors G5, G6, G7 and One Plus, European FreeStyle Libre 2 and Libre 2 Plus sensors, and Medtronic Enlite sensors via older Medtronic pumps.

Since Trio can directly connect to the European FreeStyle Libre 2 and Libre 2 Plus sensors, the LibreLink app is only needed to start a new sensor in these cases.

For Dexcom sensors, you'll need to have the associated Dexcom App running on your iPhone to allow Trio to retrieve your glucose value.

Trio also accepts additional open-source sensor apps such as Nightscout as CGM or xDrip4iOS. These apps can be used to transmit sensor data to Trio over an internet connection, although the native connections to CGM are more stable. Some people choose to use these open-source apps for better alarms and connection to other devices.

In an automated insulin delivery system, continuous and accurate sensor values are essential for proper insulin dosing. If your sensor glycemia is jumpy or noisy, it can lead to incorrect insulin dosing, resulting in high or low blood glucose levels. In such cases, it is important to disable the Auto Mode until the issue is resolved. The problem may be related to the configuration of the glucose sensor or issues with the sensor or site. If necessary, replacing the glucose sensor may be required to address the problem.

If you experience jumpy or noisy sensor values, you might try to enable the "Smooth Glucose Value" feature via the CGM Device Settings.

If your sensor does not show a number or arrow, or your readings do not match your symptoms, use your meter to make diabetes treatment decisions. When in doubt, get your meter out.

If you experience a significant difference between your sensor glucose and finger prick value, although you have a stable and in range glucose, you might try to calibrate your sensor. You can do this via the Trio Settings, via the CGM menu, or directly in the sensor app.

### 2.6 Share

In Trio, sharing glucose data with healthcare providers and family members is possible through Nightscout, Tidepool, Apple Health and via Dexcom Share or LibreView. Sharing glucose and insulin data is only possible via Nightscout and Tidepool, with Nightscout being the preferred option. Nightscout is the only platform that supports complete Trio data and remote commands; Tidepool does not support remote dosing and requires manual uploads.

To use Nightscout, you'll need to set up a personal Nightscout website. Trio can send the data to the Nightscout website, allowing your healthcare provider to access and review your reports in real-time.

Caregivers can access the data from the personal Nightscout website through the Loop Follow app and Nightscout. This allows them to view and track your insulin and glucose information and stay updated on your diabetes management.

Caregivers can even give an insulin bolus, enter carbs and change the insulin profile remotely, via Loop Follow. To be able to use remote care, Nightscout has to be set up to use remote commands, and the remote care has to be enabled in the Trio app.

In the Trio settings, multiple iOS shortcuts are available, but iOS Bolus shortcuts must be activated by "Allowing bolusing with Shortcuts". This could also help parents to assist their young children remotely.

Users can download reports from Nightscout and Tidepool or use tools like Nightscout Reporter to generate comprehensive reports that can be shared with healthcare providers for in-depth analysis and evaluation.

By leveraging these sharing capabilities, Trio users can facilitate effective communication and collaboration with their healthcare team and loved ones, fostering a supportive and informed diabetes management environment.

### 2.7 Indications

Trio is an open-source app that does not have official indications approved by the FDA or European authorities. It can be used with all rapid-acting and ultra-rapid insulin analogues.

The Trio app is not available for download from app stores. Users are required to build the app themselves at their own risk. Setting up the system requires determination and the willingness to follow directions and learn. If you don't have the technical know-how at the beginning, you will have by the end.

All the information you need can be found in the Trio documentation that is available online, and from others who have already done it – support is available via the Trio Facebook group or other forums like Discord.

Discord is mainly used for development and build topics, whereas Facebook is more used for end-user help. Both can be used in parallel, but do not repeat each problem or topic in both environments simultaneously.

Both Facebook and Discord are highly recommended platforms for interactive chat among Trio and Nightscout users, parents, and developers. It covers a wide range of subjects, from first-time user queries to more technically advanced discussions about the inner workings of Trio and the OpenAPS algorithm. The primary language is English.

Many people have successfully built Trio and are now using it entirely safely, but it is essential that Trio users:

- Understand how their insulin pump and glucose sensor works.
- Adjust its individual dosage algorithm with the help from his or her diabetes team.
- Maintain and monitor the system to ensure it is working properly.
- Build the system themselves so that they thoroughly understand how it works, or rely on a trustworthy source to download and use the Trio App from Testflight. Testflight Apps have a 90 day validity, as this iOS environment is supported by Apple for testing new Apps.

To utilize Trio, you will need a compatible iPhone that is running on iOS 17 or newer. The minimum requirements for your devices can be found in the Trio documentation.

For building, you'll need a yearly renewable Apple Developer license, which costs 99 US dollar per year. Once this license is activated you can start the building process in 2 different ways.

- You can follow the "Build Trio with Script" procedure, using Mac computer with Xcode Trio build. For this method you will first have to put your iPhone and Apple Watch if applicable to Developer Mode. On your device, you can enable this via Settings and Privacy & Security.
- Or you can follow the "Build Trio with GitHub" procedure, which is also called the "browser build" as you can use any computer for this. After completion of this method, you can download the Trio app on your iPhone via Testflight. The main advantage of this method is that it is an easier method to build and update your Trio app.

Some people don't build the Trio app themselves, but are invited to use it via a TestFlight invitation. Some healthcare professionals may be comfortable sharing the app. If your healthcare professional provides you with the app, you won't need an Apple Developer license.

### 2.8 Software updates

Regular software updates are crucial for maintaining the optimal performance and accessing the latest features of Trio. The Trio team releases new versions periodically. These updates often include bug fixes and improvements to enhance the functionality of the system.

The version of Trio is mentioned on top of the Settings screen. The most recent "main" and "dev" versions are also mentioned, to indicate "newer" version(s) available.

Once every 3 months you'll need to update your Trio app. To update Trio, follow these steps:

- It's good practice to update your iPhone settings to iCloud. This way all your settings of the Trio will have a backup on iCloud. You can back up your iPhone via the settings.
- When building, keep the same signing keys as the previous installation.
- If you are using the "Build Trio with script" method, you'll use Xcode to refresh the code to the new version, while your iPhone and Apple Watch are connected and powered.
- In the case of the "Browser build" method, upon successful execution of the build process, the new version needs to be installed via a Testflight download.

If you encounter any issues, stay calm and seek support from the Trio community and documentation. Remember that troubleshooting is a normal part of software usage, and with patience, you can overcome any challenges that arise.

In conclusion, staying informed and proactive with Trio is key to optimizing your diabetes management. By keeping up with software updates, following care guidelines, and addressing any issues promptly, you can ensure a smooth and effective experience. Prioritize safety, maintain accurate records, and utilize available resources for support. Embrace the possibilities that Trio offers to enhance your health and well-being.
