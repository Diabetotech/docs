<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/fNQ_OjGLvSM" frameborder="0" allowfullscreen></iframe>
</div>

## <u>2. iAPS according to the CARES paradigm (28.5 min)</u>

In this video, we will cover iAPS according to the CARES paradigm.

We will discuss how iAPS calculates and adjusts the automated insulin delivery, when it reverts to Manual Mode, specific education tips and sensor issues, and how it shares data. After that we will go over iAPS indications and software updates. Let's get started!

### 1) iAPS according to the CARES paradigm

### 2.1 Calculate

In iAPS, the preset basal insulin rate is adjusted based on the predicted glycemia of the next 5 to 9 hours. Here's a breakdown of how iAPS works:

- iAPS combines different blood glucose or "BG" predictions to calculate the minimal predicted blood glucose:

  - iAPS calculates a carb predicted BG, which is a prediction based on the carbohydrates on board,

  - an insulin predicted BG, which is a prediction based on the insulin on board,

  - an UnAnnounced Meal predicted BG, which is a prediction in case of unannounced carbohydrate consumption,

  - and a Zero Temp predicted BG, which is the worst-case scenario, in case insulin is suddenly no longer administered or carbohydrates are no longer absorbed.

- iAPS <span class="mark">considers</span> any errors in predictions, because the Eventual BG prediction is adjusted based on the deviation between the current glucose and the predicted glucose, also known as the blood glucose impact. The algorithm also considers the glycemia trend by calculating the delta, or the difference between the current and past glycemia. And it also takes into account the short-term and long-term glucose momentum, which is the amount of change between current and the glucose of 15 and 40 minutes ago.

<!-- -->

- The insulin requirement or InsulReq is calculated by subtracting the target blood glucose from the minimal predicted blood glucose, and dividing this difference by the insulin sensitivity or ISF. This insulin requirement will determine whether to increase or decrease the manually preset basal insulin.

<!-- -->

- If hypoglycemia is predicted, basal insulin will be stopped, and rescue carbohydrates may be recommended.

In conclusion, the preset basal insulin rate will be raised or decreased based on the calculated insulin requirement. This is shown in the app as a temporary or temp basal with a specified insulin rate and duration or a microbolus, and these temp basals are recalculated every 5 minutes. A new calculation from iAPS is also called a loop cycle.

In iAPS, the temp basals are usually given as a microbolus, delivering the same insulin dose faster, followed by a temporary pause in basal insulin delivery. How these supermicroboluses or SMBs are calculated based on the temp basals, can be adjusted within predefined safety settings.

iAPS also uses an autosens feature, which increases or decreases the insulin delivery, based on the user's insulin sensitivity over the past 8 and 24 hours.

- It calculates a percentage that reflects how the insulin sensitivity in the past hours differs from the currently set sensitivity, and uses that % to adjust your insulin sensitivity and basal insu<span class="mark">lin rate. The Autosens function can also be applied to the target value, adjusting it based on the calculated sensitivity ratio.</span>

- <span class="mark">The max and min Autosens ratio are set at 1.2 and 0.7, respectively. They determine the maximum and minimum adjustment percentages based on the Autosens function. This means that the values can be adjusted by a maximum of 120% and a minimum of 70% using Autosens.</span>

- <span class="mark">If you activate the UnAnnounced Meal function, the algorithm will detect fast glucose increments caused by carbs, adrenaline, etc., and tries to adjust it with SMBs. This also works the opposite way: if there is a fast glucose decrease, it can stop SMBs earlier. It's important to note that the UAM feature is only recommended for use if you have relatively stable blood sugar control and glucose sensor values. If your glucose control is poor, activating UAM may introduce additional variability. The same can happen if your sensor values are unstable, for example during the first day after a sensor change.</span>

<span class="mark">Additionally, iAPS offers 3 dynamic features, which can be enabled in the app: Dynamic ISF, Dynamic Carb Ratio and Auto ISF (for advanced users).</span>

- <span class="mark">If you enable Dynamic ISF, it replaces Autosens.</span>

  - <span class="mark">The default formula for Dynamic ISF uses a logarithmic scale to determine the ratio for ISF adjustment. </span>

  - <span class="mark">It also adjusts your ISF, but in a dynamic way, based on your current and predicted glucose value and on the total daily insulin dose.</span>

  - <span class="mark">As you are more insulin resistant if your glucose is higher, it is a more aggressive way to adjust your insulin sensitivity.</span>

  - <span class="mark">The aggressiveness of the Dynamic ISF can be changed using several parameters, like the Adjustment Factor, the weight of the total daily insulin dose of the last 24 hours compared to the last 2 weeks, and the Autosens max and min %.</span>

  - <span class="mark">Alternatively, a sigmoid scale may be employed for a more aggressive approach. Unlike other methods, the sigmoid scale does not reference Total Daily Insulin; instead, it determines adjustments exclusively based on the deviation of the current glucose reading from the target value. With Sigmoid, Dynamic ISF uses the profile ISF when you are at your target glucose. Sigmoid’s aggressiveness can be adjusted using 3 settings: Sigmoid Adjustment Factor, Autosens Maximum, and Autosens Minimum. Sigmoid is also a great option for users with rapid variability in insulin sensitivity.</span>

- <span class="mark">If you enable Dynamic Carb Ratio, your carb ratio will be altered every loop cycle, based on your current blood glucose and total daily insulin dose. It is based on the fact that you might need a more aggressive carb ratio when you have a higher blood glucose.</span>

- <span class="mark">Another, more experimental feature—Auto ISF—can be configured for advanced users to enable a full closed-loop mode without meal boluses or carbohydrate entries. Proper use of this feature requires in-depth understanding of ISF limits and glucose acceleration parameters. The algorithm is documented at [<u>https://github.com/bernie4375/FCL-potential-autoISF</u>](https://github.com/bernie4375/FCL-potential-autoISF)</span>

The target glucose value of iAPS can be adjusted between 72 and 180 mg/dl or 4 and 10 mmol/l.

iAPS places a high priority on safety and incorporates various safety settings and limits to prevent potentially dangerous insulin delivery. To ensure users configure the system correctly, the user community proposes defensive settings, and to start the system without any dynamic features. Over the course of several weeks, you can gradually move towards dynamic iAPS and more aggressive settings.

<span class="mark">For the Auto ISF feature, experienced iAPS users recommend not enabling it until you have at least three months of experience with dynamic iAPS and consistently stable day-to-day results.</span>

### 2.2 Adjust

In iAPS, you have the flexibility to adjust various parameters to personalize your treatment.

- You can set a target glucose value per time block of 30 minutes between 72 and 180 mg/dl (or 4 and 10 mmol/l). International guidelines suggest starting with a target va<span class="mark">lue of 110 to 1</span>20 mg/dl (or 6 to 6.5 mmol/l). Many users opt for a target value of 100 mg/dl (or 6 mmol/l) during the day and even lower during the night - for example 90 mg/dl (or 5 mmol/l). This can be considered if this doesn’t cause significant hypoglycemia.

- iAPS allows you to set different basal insulin profiles based on your individual needs. The default profile is cal<span class="mark">led the “Normal Profile”. You can save iterations of this "Normal Profile" with a different % of insulin delivery, target glucose value, and SMB and dynamic features. The alternative profiles created can be permanent or with a specific duration (for example for scheduled sport activities).</span>

Carbohydrate Ratio, Insulin Sensitivity, and Duration of Insulin Action can be adjusted according to your specific requirement.

- The duration of insulin action in open-source closed-loop systems is typically longer than in traditional insulin models due to the consideration of insulin's long tail effect. Most users prefer 6 to 7 hours. If you require a longer duration, check your ISF settings as they might be too aggressive. In general, the actual duration of insulin action does not differ that much between users.

- iAPS allows you to select the type of insulin you use. You can choose from options such as Apidra, Humalog, Novorapid or NovoLog, Fiasp and Lyumjev. Depending on the selected insulin type, iAPS will provide a corresponding profile. Additionally, you have the option to change your insulin curve or set a custom insulin peak time.

Within iAPS, there are numerous other adjustable parameters, and we will delve into the primary ones: SMB options, Recommended Bolus Percentage, Autosens options, Dynamic features, Delivery limits and Autotune.

- When starting to use iAPS in “closed loop”, it is recommended to use supermicroboluses only after consuming carbohydrates. If this works well for you, you can choose to activate SMB at other times as well. You can make the SMBs more or less aggressive by adjusting the Max Delta-BG Threshold, the Max SMB Basal Minutes, the SMB Delivery Ratio and the SMB Interval. Additionally, if you enable the UAM feature, the SMBs will react faster to rapid changes in glucose, to cover for unannounced meals.

- In iAPS, you can change how much insulin is suggested via the bolus calculator by changing the Recommended Bolus Percentage. iAPS first calculates an insulin dose based on the integrated bolus calculator, which will then be multiplied by your “Recommended Bolus Percentage” to display your suggested insulin dose. iAPS will deliver the remaining insulin via SMBs as the blood sugar starts to rise.

- iAPS automatically adjusts your insulin sensitivity based on an Autosens feature. <span class="mark">You can enable Autosens to also adjust your target glucose value.</span> You can set the maximum and <span class="mark">minimum % your ISF can be adapted. And you can allow Autosens to adjust your ISF when you set a Temporary Profile.</span>

- <span class="mark">The Dynamic features that can be enabled are Dynamic ISF and Dynamic Carb Ratio. The aggressiveness of the Dynamic ISF can be adapted by changing the max and min Autosens, the profile ISF, the Adjustment Factor, the Weighted Average of the total daily insulin dose of the last 24 hours in comparison to the last 2 weeks, and by enabling the Sigmoid function.</span>

- <span class="mark">Additionally, there are delivery limits in iAPS that can be adjusted within a safe range based on the user's age and type.</span>

  - Within the pump settings, you can set your maximum basal, maximum bolus and maximum carbs. For adults, it is recommended to set the maximum basal to 3 to 5 times the highest basal setting.

  - In the OpenAPS Settings, you can set your Maximum insulin and carbs on board. The maximum insulin on board refers to the maximum combined amount of basal and bolus insulin allowed at once.

  - Maximum daily safety multiplier and current basal safety multiplier are additional limits for the maximum basal insulin rate, and it's generally best to leave them unchanged. The maximum daily multiplier is set to 3 by default, allowing a maximum of 3 times the highest manually set basal rate. The current basal mode multiplier is set to 4, allowing a maximum of 4 times the manually set basal rate.

  - In the dynamic settings, you can find a Threshold Setting, which functions as a hypoglycemia threshold. If blood sugar at any point is predicted to go below this value, iAPS will suspend insulin delivery and wait till its algorithms predict otherwise.

Finally, you can also opt to enable Autotune.

- Autotune makes suggestions or adjustments to your basal rates, ISF, and carb ratio based on your last 24 hours of data. There’s an option to have Autotune adjust profile basal rates only. Autotune is run nightly by default, or you can tap on Run Now to do an immediate calculation. The adjustments made by autotune are small, with a maximum of 10% change to the current carb ratio and ISF, or 20% change to the current basal rates per run, but add up over days.

- Autotune is desi<span class="mark">gned to work over weeks to slowly improve the accuracy of your initially set basal rates, ISF and carb ratio. The output of autotune formulas produces a ratio, similar to that of Autosens. This ratio is also limited by the Autosens max and min preferences.</span>

<!-- -->

- <span class="mark">Note that Autotune requires fixed values for carb ratio and insulin sensitivity. So, it will not be effective when using the full Dynamic settings in iAPS, and it is not recommended to permanently activate Autotune when iAPS uses Dynamic ISF and Dynamic Carb Ratio.</span>

- <span class="mark">Autotune may also not work if Nightscout has additional security measures, like a token.</span>

Remember that all settings and parameters should be adjusted in consultation with your healthcare provider, taking into account your individual needs and medical <span class="mark">guidance. The activation of Auto ISF requires additional medical guidance.</span>

### 2.3 Revert

In iAPS, if there is no connection to the sensor or pump for more than 15 minutes, the system will revert to Manual Mode.

When the connection is lost, the pump will initially switch to the last set temp basal. After a maximum of 120 minutes, it will transition to Manual Mode.

In Manual Mode, the basal insulin delivery is set to the preset basal rate without a suspend-before-low function.

Once the connection to the pump or sensor is reestablished, the system will automatically resume the Auto Mode, which is calle<span class="mark">d closed loop in i</span>APS.

It's worth noting that in iAPS, the term "Open-Loop" does not refer to the Manual Mode. Instead, Open-Loop Mode indicates that temporary basals only appear as notifications, and you can set them manually. This Open-Loop Mode is recommended for users who are new to iAPS and want to observe how the algorithm functions before fully relying on it.

### 2.4 Educate

Proper education is crucial when starting an automated insulin delivery system. For general education points, please refer to the generic module.

The general education points covered were:

- Using fewer carbohydrates to correct hypoglycemia.

- Considering infusion set problems if blood glucose levels remain high without an apparent reason.

- Trusting the automated insulin delivery system and avoiding unnecessary manual interventions.

- Timing meal boluses 15 minutes before meals.

- Utilizing an Exercise Mode 1 to 2 hours before activity.

- Stopping insulin delivery if the pump is disconnected for more than 15 minutes.

- Responding to alarms and being mindful of automatic updates on mobile phones.

- Seeking peer support for guidance and sharing experiences.

iAPS is a powerful tool for managing diabetes, but it's important to remember that it is not a fully automated system that you can “set and forget”. It requires active monitoring and understanding of its actions. Here are some additional education points specific to using iAPS:

- Active Monitoring: iAPS controls your insulin delivery, so it's crucial to watch it closely and understand how it works. Be attentive to any potential errors or unexpected behavior and learn how to interpret the system's actions.

- Phone Usage: Once paired, the phone can instruct the pump to perform various actions. Your phone with iAPS is to be regarded as a medical device and be handled accordingly. Avoid installing unnecessary apps or games that could introduce malware and potentially interfere with the system's operation.

- Security Meas<span class="mark">ures: Install all security updates provided by Apple to keep your device protected. This helps safeguard against potential security vulnerabilities. Do not activate “Automatic Updates” or “Beta Updates” in the Software Update settings of your iPhone. Check first the support of a specific iOS release in the iAPS community prior to upgrading your iPhone operating system.</span>

- <span class="mark">Proximity to Pump and CGM: Keep your mobile phone in close proximity to your insulin pump and CGM. It should be within the recommended distance (which is usually within 5 meters o</span>r 15 feet for the CGM) to maintain a reliable connection.

- Passwords and Backups: Keep a record of all passwords used and store a backup of your app in iCloud. Regularly exporting your settings to iCloud simplifies the reinstallation process and prevents resetting your personalized parameters.

- Spare Mobile Phone: It's advisable to have a spare mobile phone available for emergencies. This ensures that you have a backup device in case of any technical issues with your primary phone.

  - <span class="mark">A dedicated Extra Feature called Sharing was added to iAPS in order to safeguard your personal settings, for example all dynamic behaviors as well as your ISF, Carb Ratio, glucose targets, profiles, etcetera. This allows you to restore the settings when re-installing, or moving to another device when needed.</span>

- Check basic settings first: It is recommended to start iAPS first in “Open Loop” in order to configure and to check all your basic settings like basal insulin rate, carb ratio and insulin sensitivity.

  1.  The results of the iAPS system depend largely on the correctness of these basic settings, so they need to be fairly accurate.

  2.  Next slowly raise “maximum insulin on board”, to allow iAPS to automatically dose insulin. This is set by default on 0 and can slowly be raised to the sum of your average meal bolus plus 3 times your highest basal rate.

  3.  Next you can enable Supermicroboluses and change the Max Delta-BG Threshold SMB from the default 0.2 to 0.3 to allow iAPS to use SMB when your blood glucose is rising quickly.

<!-- -->

- Advanced Settings: Utilize advanced settings, such as UnAnnounced Meal function, Max SMB Basal Minutes, Autotune, Dynamic ISF and Dynamic Carb Ratio, only after you have a good understanding of the basics and have achieved stable blood glucose control. Note that these features may not work optimally for <span class="mark">everyone.</span>

- Healthcare Provider Access: Ensure that your healthcare provider has access to your reports generated by Nightscou<span class="mark">t. This enables them to stay informed about your diabetes management and</span> make informed decisions during your medical consultations.

- Master Insulin Pump and Sensor Use: Make sure you are able to use your insulin pump and sensor properly as well.

By following these guidelines and maintaining a proactive approach to using iAPS, you can optimize the system's effectiveness and ensure a safe and reliable automated insulin delivery experience.

### 2.5 Sensor 

iAPS can be <span class="mark">linked to the Dexcom sensors G5, G6, G7, Dexcom One Plus, European FreeStyle Libre 2 and Libre 2 Plus sensors, and Medtronic Enlite sensors via older Medtronic pumps.</span>

<span class="mark">Since iAPS can directly connect to Dexcom G5, G6 and to the European FreeStyle Libre 2 and Libre 2 Plus sensors, the Dexcom or LibreLink app is only needed to start a new sensor in these cases.</span>

<span class="mark">For Dexcom G7 and One+, you’ll need to have the associated Dexcom App running on your iPhone to allow iAPS to retrieve your glucose value. It’s recommended to use the Dexcom App for Bluetooth Connectivity alarms.</span>

<span class="mark">iAPS also accepts additional open-source se</span>nsor apps such as Glucose Direct or xDrip4iOS. These apps can be used to transmit sensor data to iAPS, although the native connections to CGM are more stable. Some people choose to use these open-source apps for better alarms and connection to other devices.

In an automated insulin delivery system, continuous and accurate sensor values are essential for proper insulin dosing. If your sensor glycemia is jumpy or noisy, it can lead to incorrect insulin dosing, resulting in high or low blood glucose levels. In such cases, it is important to disable the Auto Mode until the issue is resolved. The problem may be related to the configuration of the glucose sensor or issues with the sensor or site. If necessary, replacing the glucose sensor may be required to address the problem.

If you experience jumpy or noisy sensor values, you might try to enable the “Smooth Glucose Value” feature via the Settings.

If your sensor does not show a number or arrow, or your readings do not match your symptoms, use your meter to make diabetes treatment decisions. When in doubt, get your meter out.

If you experience a significant difference between your sensor glucose and finger prick value, although you have a stable and in range glucose, you might try to calibrate your sensor. You can do this via the iAPS Settings, via the CGM menu, or directly in the sensor app.

### 2.6 Share

In iAPS, sharing glucose data with healthcare providers and family members is possible through Nightscout, Apple Health and via Dexcom Share or LibreView. Sharing glucose and insulin data is only possible via Nightscout and Tidepool, with Nightscout being the preferred options, as Tidepool requires manual uploads, which are quite time consuming.

To use Nightscout, you'll need to set up a personal Nightscout website. iAPS can send the data to the Nightscout website, allowing your healthcare provider to access and review your reports in real-time.

Caregivers can access the data on the personal Nightscout website, ideally with a token. This allows them to view and track your insulin and glucose information and stay updated on your diabetes management.

Caregivers can even give an insulin bolus, enter carbs and change the insulin profile remotely, via the Nightscout website or app like Nightscout X <span class="mark">or Loop Follow. T</span>o be able to use remote care, Nightscout has to be set up to use remote commands, and the remote care has to be enabled in the iAPS app.

<span class="mark">In the iAPS Bolus Calculator settings, iOS Bolus shortcuts can be activated with a maximum value by “iOS Shortcuts”. This could also help parents to assist their young children remotely.</span>

Users can download reports from Nightscout or use tools like Nightscout Reporter to generate comprehensive reports that can be shared with healthcare providers for in-depth analysis and evaluation.

By leveraging these sharing capabilities, iAPS users can facilitate effective communication and collaboration with their healthcare team and loved ones, fostering a supportive and informed diabetes management environment.

### 2.7 Indications

iAPS is an open-source app that does not have official indications approved by the FDA or European authorities. It can be used with all rapid-acting insulin analogues.

The iAPS app is not available for download from app stores. Users are required to build the app themselves at their own risk. Setting up the system requires determination and a bit of technical knowledge. If you don’t have the technical know-how at the beginning, you will have by the end.

All the information you need can be found in the iAPS documentation that is available online, and from others who have already done it – support is available via the iAPS Facebook group or other forums like Discord.

Discord is mainly used for development and build topics, whereas Facebook is more used for end-user help. Both can be used in parallel, but do not repeat each problem or topic in both environments simultaneously.

Both Facebook and Discord are highly recommended platforms for interactive chat among iAPS and Nightscout users, parents, and developers. It covers a wide range of subjects, from first-time user queries to more technically advanced discussions about the inner workings of iAPS and the OpenAPS algorithm. The primary language is English.

Many people have successfully built iAPS and are now using it entirely safely, but it is essential that iAPS users:

- Understands how their insulin pump and glucose sensor works.

- Adjusts its individual dosage algorithm with the help from his or her diabetes team.

- Maintains and monitors the system to ensure it is working properly.

- Build the system themselves so that they thoroughly understand how it works, or rely on a trustworthy source to download and use the iAPS App from Testflight. Testflight Apps have a 90 day validity, as this iOS environment is supported by Apple for testing new Apps.

To utilize iAPS, you will need a compatible iPhone that is running on iOS 16 or newer. The minimum requirements for your devices can be found in the iAPS documentation.

For building, you’ll need a yearly renewable Apple Developer license, which costs 99 US dollar per year. Once this license is activated you can start the building process in 2 different ways.

- You can follow the “Build iAPS with Script” procedure, using Mac computer with Xcode [<u>iAPS build</u>](https://iaps.readthedocs.io/en/main/operate/build.html). For this method you will first have to put your iPhone and Apple Watch if applicable to Developer Mode. On your device, you can enable this via Settings and Privacy & Security**.**

- Or you can follow the “Build iAPS with GitHub” procedure, which is also called the “browser build” as you can use any computer for this ([<u>iAPS browser build</u>](https://github.com/Artificial-Pancreas/iAPS/blob/main/fastlane/testflight.md)). After completion of this method, you can download the iAPS app on your iPhone via Testflight. The main advantage of this method is that it is an easier method to build and update your iAPS app.

Some people don’t build the iAPS app themselves, but are invited to use it via a TestFlight invitat<span class="mark">ion. Some healthcare professionals may be comfortable sharing the app. If your healthcare professional provides you with the app, you won’t need an Apple Developer license.</span>

<span class="mark">You may find other users in the iAPS support community also willing to share their TestFlight build.</span>

### 2.8 Software updates

Regular software updates are crucial for maintaining the optimal performance and accessing the latest features of iAPS. The iAPS team releases new versions periodically. These updates often include bug fixes and improvements to enhance <span class="mark">the functionality of the system.</span>

<span class="mark">The version of iAPS is mentioned on top of the Settings screen, and below what “Branch” of the development is being used. If there is a more recent “main” version, the most recent version is mentioned below the “branch” line, to indicate “newer” version(s) available.</span>

<span class="mark">Once every 3 months you’ll need to update your iAPS app. To update iAPS, follow these steps:</span>

- <span class="mark">It’s good practice to update your iPhone settings to iCloud. This way all your settings of the iAPS will have a backup on iCloud. You can back up your iPhone via the settings.</span>

<!-- -->

- <span class="mark">When building, keep the same signi</span>ng keys as the previous installation.

- If you are using the “Build iAPS with script<span class="mark">” method, you’ll use Xcode to refresh the code to the new version, while your iPhone and Apple Watch are connected and powered.</span>

- <span class="mark">In the case of the “Browser build” method, upon successful execution of the build process, the new version needs to be install</span>ed via a Testflight download.

If you encounter any issues, stay calm and seek support from the iAPS community and documentation. Remember that troubleshooting is a normal part of software usage, and with patience, you can overcome any challenges that arise.

In conclusion, staying informed and proactive with iAPS is key to optimizing your diabetes management. By keeping up with software updates, following care guidelines, and addressing any issues promptly, you can ensure a smooth and effective experience. Prioritize safety, maintain accurate records, and utilize available resources for support. Embrace the possibilities that iAPS offers to enhance your health and well-being.

