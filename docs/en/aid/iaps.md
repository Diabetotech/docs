**<u>Diabetes Technology Expert Program</u>**

# **iAPS** 

## <u>1. Introduction</u>

Welcome to this comprehensive video series on iAP<span class="mark">S, an</span> open-source automated insulin delivery system for iPhones. iAPS stands for iPhone Artificial Pancreas System, and in these videos, we will explore the key components of iAPS, including the insulin pumps and glucose sensor options, and the Oref algorithm. Additionally, we will delve into important topics such as viewing reports with Nightscout and remotely monitoring users as a caregiver.

Open-source automated insulin delivery systems are as safe and effective as commercial automated insulin delivery systems, but they have not been approved by any medical authorities. Consequently, if you choose to use it, you'll need to build and use it at your own risk. To access the manual for building the app, you can visit [<u>https://iaps.readthedocs.io</u>](https://iaps.readthedocs.io/en/main/operate/build.html).

Additionally, you can seek assistance and support from various online communities, such as the group on Facebook, and the group on Discord.

<span class="mark">As a number of developers made a spin-off from the mainstream iAPS and continued under the name TRIO, the [<u>comprehensive Youtube recorded sessions</u>](https://www.youtube.com/playlist?list=PLfnu6D6qjfHv4D7P6ki_6oTIFrBfdVWc1) on the algorithm made available and now re-branded under TRIO are relevant.</span>

<span class="mark">This is NOT intended to be any judgment or evaluation of iAPS versus TRIO but an awareness creation statement that both approaches exist in the open-source community.</span>

<span class="mark">Before we begin, it is essential to note that these videos are not meant as medical advice. Always consult with your healthcare provider for personalized medical advice and therapy adjustments.</span>

<span class="mark">The content in these videos was created and updated by Christophe</span> Merlot, an individual living with type 1 diabet<span class="mark">es and experienced of t</span>he iAPS system and dr. Inge van Boxelaer, founder of Diabetotech and endocrinologist at the St-Lucas hospital in Ghent in Belgium. The material has been reviewed by dr. Per Winterdijk, pediatrician at the Diabeter institute in Rotterdam in the Netherlands, and by dr Kate Hawke, Australian endocrinologist completing a Diabetes Technology Fellowship at BCDiabetes in Vancouver. It's important to note that iAPS is available for free, and therefore, no financial interests are involved, ensuring an unbiased assessment of this open-source automated insulin delivery system.

Throughout the series, you will gain valuable insights into iAPS, including its performance based on the CARES paradigm, practical usage of the iAPS app, creating and interpreting reports in Nightscout, and guidance for managing various situations such as hypo and hyperglycemia, high-fat meals, exercise, illness, alcohol, and travel.

By the end of these videos, you will have a comprehensive understanding of iAPS and be equipped with helpful tips and tricks to enhance your experience with the system. Whether you are a caregiver supporting iAPS users or an iAPS user yourself, we wish you success on your journey with this powerful automated insulin delivery system. Good luck!

## <u>2. iAPS according to the CARES paradigm</u>

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

## <u>3. Linking components together</u>

In this video tutorial, we will guide you through the process of creating the necessary links within the iAPS automated insulin delivery system. These links establish connections between various components to ensure seamless communication and data exchange.

iAPS operates in the followi<span class="mark">ng manner:</span>

- <span class="mark">Glycemia is measured every 1 to 5 minutes using a glucose sensor, such as Dexcom G6, G7, Dexcom ONE Plus, FreeStyle Libre 2 or FreeStyle Libre 2 Plus.</span>

- <span class="mark">After starting your sensor with your Dexcom or LibreLink app, the sensor sends the glucose readings directly to your iAPS app, except for the Dexcom G7 and the Dexcom ONE Plus, where the Dexcom App needs to stay active.</span>

- <span class="mark">iAPS calculates the required insulin d</span>osage and sends it to your insulin pump, such as Omnipod DA<span class="mark">SH, Dana-I, TouchCare Nano, Omnipod Eros, DanaRS (firmware 3 only) or older Medtroni</span>c pumps.

- The insulin pump delivers the necessary insulin and provides pump data back to the iAPS app.

- iAPS shares the glycemia and insulin data with Nightscout, which serves as the readout program. iAPS also shares this information to Apple Health, and the Dexcom and LibreLink app send glucose data to Dexcom Clarity and LIbreView respectively.

- Additionally, the iAPS app provides an Apple Watch version being installed during the same buil<span class="mark">ding & installation process. This allows you to view your glucose values in real-time on your Apple Watch, and bolus insulin and even activate predefined Profiles directly from your Apple Watch, adding convenience to your diabetes management.</span>

  - <span class="mark">Recently support for Garmin Watch was added</span>

<!-- -->

- <span class="mark">iAPS also provides calendar events, in conjunction with Apple Carplay it permits the visual follow-up of the carb value and evolution on the Carplay window when driving.</span>

<span class="mark">In this video tutorial, we will guide you through the process of creating various links in the iAPS automated insulin delivery</span> system. Specifically, we will cover the following steps:

- How to link your glucose sensor to your iAPS app.

- How to pair your Omnipod DASH.

- The process of creating a Nightscout account, which serves as the data hub for iAPS.

- How to establish a connection between the iAPS app and Nightscout, ensuring the smooth transfer of glycemia and insulin data.

- And how to configure iAPS on your Apple Watch.

By following these steps, you will be able to establish the necessary links within the iAPS system, enabling effective automated insulin delivery functionality for diabetes management.

### 3.1 Linking Sensor to iAPS App

Let's delve into the process of connecting the most used sensors such as the FreeStyle L<span class="mark">ibre 2, 2 Plus, Dexcom G6, G7 and ONE Plus.</span>

<span class="mark">For European FreeStyle Libre 2 or 2 Plus sensors, the initial step involves starting your sensor via the LibreLink app. After the one-hour warm-up period, you can make the connection between your sensor and the iAPS app. Within iAPS, navigate to Settings, select CGM, and then opt for the Libre Transmitter. Tap the configuration option to select Libre 2 Direct. Here, you can start the pairing process and scan your sensor. This enables iAPS to directly receive data from your FreeStyle Libre 2 or 2 Plus sensor. On</span>ce scanned, your sensor information will populate the screen, and your current senso<span class="mark">r glucose will be visible on the iAPS homescreen. After 14 days, the FreeStyle Libre 2 or 2 Plus sensor will stop functioning. You can start a new sensor via the LibreLink and iAPS app. To make sure that iAPS picks up the correct sensor signal, it's advisable to restart your iPhone and place the old sensor in a separate room. If you want uninterrupted glucose values, you can switch your sensor in the LibreLink app first and then in the iAPS app after the warm-up period. It’s good to know that the sensor life of FreeStyle Libre 2 sensors in the iAPS app extends 12 hours longer than in the LibreLink app.</span>

<span class="mark">For Dexcom G6 sensors, first start the sensor using the Dexcom G6 app. Then, connect your Dexcom G6 sensor to the iAPS app by selecting Dexcom G6 and entering the transmitter serial number. After a two-hour warm-up, you'll receive your results.</span>

<span class="mark">For the Dexcom G7 and Dexcom ONE Plus sensor, start the sensor using the Dexcom G7 or Dexcom ONE Plus app, preferably after the warm-up period of at least 30 min, to allow overlap of sensors. Within iAPS, select Dexcom G7 for both types of sensors. iAPS should automatically detect the sensor signal.</span>

<span class="mark">You can opt to receive sensor alerts from either the</span> LibreLink or Dexcom app or via the iAPS app through Notifications in the Settings. The iAPS only has high and low glucose alerts, offering minimal alert types. If you require more alert options, consider using your native sensor app or an open-source application like xDrip4iOS.

### 3.2 Linking Insulin Pump to iAPS App

Most people will use iAPS with an Omnipod DASH insulin pump. If you want to use Omnipod Eros or an older Medtronic pump, you’ll need to use a Riley link.

We’ll show the process of linking an Omnipod DASH Pod.

- First go to the Settings, and choose Omnipod DASH.

- You will first be asked to set your expiration reminder, low reservoir reminder, and your insulin type.

- Then you can tap Omnipod DASH to go to the pump screen and select "Pair Pod".

The app will take you to the different steps, similar as the Omnipod DASH PDM does. First fill your Pod with insulin, then link your Pod, remove the needle guard and place the Pod to your body. Finally continue to insert the cannula.

Once your Pod is paired, you’ll see a dedicated DASH pop-up in the app interface. If you tap it, you go to the pump screen, where you can access information about your Omnipod DASH pump and control its functions. The buttons are intuitive and serve as replacements for the functions performed by the Omnipod's PDM. Although the PDM is not needed if you are using iAPS, it is recommended to keep it as a backup device.

For users of other insulin pumps, the app interface will display different options corresponding to the specific pump type. These features ensure that you can effectively manage and control insulin delivery through your linked pump using the iAPS app.

### 3.3 Creating a Nightscout Website

Nightscout is not a platform to log into but a website that you build or have built, which may involve some additional costs.

A Nightscout account consists of a website URL (name) and a password to access the website.

Nightscout accounts are created as individual user accounts. There is no Nightscout platform specifically for healthcare providers.

Nightscout enables real-time tracking of your sensor and insulin data, allowing you to share it with your loved ones or healthcare provider. Additionally, Nightscout is the exclusive method for generating reports from your iAPS automated insulin delivery system.

Nightscout is more than just a website for iAPS data; it can connect to various devices. Nightscout acts as a central hub, receiving data from sensors and distributing it to multiple devices such as mobile phones, smartwatches, computers, and other monitoring devices. It provides diverse options to access and display glucose information, including through smartwatches, desktop widgets, wall-mounted devices, and integration with voice assistants like Alexa.

There are multiple ways to create a Nightscout website.

Nightscout is open-source software. You can find all the information on github.nightscout.io.

- You can set it up yourself using step-by-step plans available <span class="mark">**[<u>online</u>](https://nightscout.github.io/nightscout/new_user/#free-diy).**</span>

- Or there are firms that offer Nightscout setup services, such <span class="mark">as T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u, Nightscout-easy and Opensource.clinic</span>

- Nightscout and its associated services are not FDA approved, except for T1Pals' service.

<!-- -->

- There is no approval from European authorities, so its use is at your own risk.

- Nightscout appears to be GDPR and HIPAA compliant but does not claim official compliance due to the absence of auditors.

- It is crucial to handle sensor glycaemia data securely and protect your Nightscout URL with a password.

- If you want to share your Nightscout website with a loved one or healthcare providers, it is recommended to create a separate token for them.

By following these steps, you can create a Nightscout website easily and securely, allowing you to track and share your diabetes data effectively.

### 3.4 Linking iAPS App to Nightscout

To connect your iAPS data to your Nightscout website, just head to Settings, then Nightscout, and enter your Nightscout URL and password.

Once connected, your iAPS data will show up on your Nightscout website. This gives you, your family, and your healthcare provider realtime information about how you're managing your diabetes.

If you turn on "Remote Control," trusted individuals can give you insulin, input carbs, or adjust your insulin settings using their Nightscout login.

***3.5 iAPS App on Apple Watch***

Using an Apple Watch will not only allow you to follow your sensor glucose and insulin on board on your wrist, but also allow you to add carbs, bolus and <span class="mark">select/set/stop a profile from your watch.</span>

<span class="mark">iAPS will automatically be downloaded on your connected Apple Watch. On your Apple Watch, you can set an iAPS complication in a modular watch face.</span>

<span class="mark">If you tap the iAPS complication on your watch face, you will see an iAPS screen where you can see your glucose and loop data, your insulin on board and 3 action buttons. Here you give an insulin bolus based on the carbs you are going to eat, select/set/stop a profile or give a manual insulin bolus.</span>

<span class="mark">In this chapter, we explored t</span>he different connections available in iAPS. From glucose sensors to insulin pumps and Nightscout, these links enable seamless communication for effective diabetes management. By establishing these connections, users can fully leverage the capabilities of iAPS and take control of their diabetes.

## <u>4. How iAPS works</u>

Welcome to this video on the functionality of iAPS.

Controlling your insulin delivery with the iAPS automated insulin delivery system is done through the iAPS app which is installed on your iPhone.

The app offers two main operating modes: Closed Loop or Auto Mode and Open Loop.

- In Closed Loop, iAPS automatically adjusts insulin delivery every 5 minutes based on real-time sensor glucose readings.

- If Closed Loop is disabled, you are in Open Loop. Open Loop can be considered as a sort of Manual Mode, although iAPS provides the suggestions for adjusting basal insulin based on the underlying algorithms, which can be manually confirmed.

In this video, we will delve into the functionality of the iAPS app in general, and explore how you can use the iAPS app in both Closed Loop and Open Loop Mode.

### 4.1 iAPS app

When you open the iAPS app, you can see the iAPS homescreen.

- <span class="mark">The top row shows a loop icon with a timestamp of the latest loop cycle.</span>

  - <span class="mark">The loop icon color should be green. If the last loop cycle was more than 5 min ago, the circle changes to orange, and after more than 10 minutes, it changes to red. If Closed loop is disabled, it mentions “Open” referring to Open Loop.</span>

> <span class="mark">Next to the loop icon, your sensor glucose value including the timestamp and the tendency of your sensor glucose and the difference with the previous glucose value.</span>

- <span class="mark">The 2<sup>nd</sup> row shows your carbs on board, your insulin on board, 2 status icons related to your insulin pump, such as time since last infusion set or Pod change and remaining insulin units.</span>

  - <span class="mark">If you tap on the pump status icons, you can see your pump settings screen.</span>

  - <span class="mark">Note that the Insulin on Board can be negative if the algorithm has reduced the preset basal insulin rate.</span>

- <span class="mark">The 3<sup>rd</sup> row gives a view on the actual basal insulin being provided to your pump, the active Profile</span>

  - <span class="mark">Normal profile stands for the default profile from the settings.</span>

  - <span class="mark">If you tap on profile, you can easily change the default profile and save this as a separate profile. You can change the % of insulin delivery and the target glucose value. Via More Options, you can disable SMBs or change the SMB minutes. And you can decide if you want the change in % of insulin delivery to have an effect on the ISF or carb ratio.</span>

  - <span class="mark">As soon as the new profile is activated, the settings are visible on the main screen by indicating the profile name and the settings in the right top corner.</span>

> <span class="mark">and the calculated glucose value that will be reached within 2 hours based on all parameters available to the algorithm. This value is changing every loop cycle.</span>

- <span class="mark">In the middle of the iAPS homescreen you can see your basal insulin delivery in blue. The horizontal dashed line is your preset basal insulin rate.</span>

- <span class="mark">Below that you can see your glucose curve.</span>

  - <span class="mark">The curve left of the dashed line shows your recent glucose readings. Orange circles are entered carbs, and blue arrows are insulin boluses.</span>

  - <span class="mark">The curves right of the dashed line show the different predictions for your glucose. There is a legend for these prediction lines below the curve.</span>

  - <span class="mark">The scale of the graph and additional graph options can be set via the Settings.</span>

  - <span class="mark">If you tap on the glucose curve, you can see your History screen with your recent insulin delivery and glucose values.</span>

- <span class="mark">The bottom row shows 4 different action buttons: Meal bolus, Correction bolus, Profiles and Settings.</span>

  - <span class="mark">Via Meal, you can enter your carbs, fat and protein, and an insulin bolus will be suggested. If you tap on the i-icon, you can see how this is calculated. You can enter the insulin bolus you want to give, and tap enact bolus to deliver it.</span>

  - <span class="mark">Via the insulin drop icon you can deliver a manual correction bolus. This is not recommended if you are using SMB and UAM features. You can als enter insulin without delivering it via your pump, for example when you use an insulin pen.</span>

  - <span class="mark">Via Profile you can define/select/cancel a higher or lower target glucose value for a specific duration, adapt your ISF/CR/ and generic insulin delivery and you can also make presets.</span>

  - <span class="mark">All settings can be accessed via the Settings icon on the main screen.</span>

    - <span class="mark">First you can see your iAPS version information</span>

    - <span class="mark">Then you have the Closed Loop selector</span>

    - <span class="mark">And the link to your device screens for your insulin pump, CGM and Watch.</span>

    - <span class="mark">Then you have a link to your services, which is Nightscout, Apple Health and Notifications.</span>

    - <span class="mark">Next you can configure your Pump Settings, Basal profile, Insulin Sensitivity, Carb Ratios, Target Glucose.</span>

    - <span class="mark">In the OpenAPS section you can define all OpenAPS parameters as well as the Autotune settings.</span>

    - <span class="mark">In the Extra Features several parameters on UI/UX, App Icons, Bolus Calculator, Fat and Protein conversion, Dynamic ISF, sharing and Contact image can all be settled.</span>

    - <span class="mark">Finally, you have Hypo Treatment setting, Debug Options, you can turn on an Animated Background and there is a link to share your recent logs for if you want help from a developer.</span>

- <span class="mark">Statistics are available by scrolling *down* on the main screen.</span>

  - <span class="mark"><u>Today:</u> indicating the Time In Range. By selecting that item, a new window opens providing all possible options for the Time In Range info (today, day, week, month, total of 3 months) as well as the HbA1c estimates, % of successful loops, standard deviation, coefficient of variation and average glucose.</span>

  - <span class="mark"><u>Loops</u>: indicating the % of successful loops, quantity of loops, average loop cycle (in min), Upon selection the same window appears as previously described.</span>

  - <span class="mark"><u>Active Carbohydrates</u>: view of the last 24 hours of carb entries</span>

  - <span class="mark"><u>Active Insulin</u>: 24 hour view, with on top total daily insulin for today, yesterday and the day before yesterday and also a daily average from the last 10 days.</span>

<span class="mark">We’ll go over the OpenAPS options in detail.</span>

- <span class="mark">You will find all OpenAPS parameters in Settings. These are divided into OpenAPS Main Settings, OpenAPS SMB Settings, OpenAPS Target Settings and OpenAPS Other Settings.</span>

> <span class="mark">If you tap on one of the OpenAPS settings, you can see a short description. You can also find more information in detail in the OpenAPS documentation.</span>

- <span class="mark">Also, Autotune can be enabled.\
  </span>

- <span class="mark">Via the Pump Settings, you can set your Maximum Basal, Maximum Bolus, Maximum Carbs and your duration of insulin action, which is set at 6 hours by default.</span>

- <span class="mark">Via Basal Profile, Insulin Sensitivity and Carb Ratio, you can set your core settings per time block of 1 hour. These are referred to as your “Normal Profile”.</span>

- <span class="mark">Here you can also set your Target Glucose value per time block of 1 hour.</span>

<span class="mark">By navigating through these sections, you can effectively manage your diabetes using the iAPS app.</span>

### 4.2 Closed-Loop 

Now that we know how the iAPS works, we will discuss how to use iAPS in Auto Mode or Closed Loop mode.

#### Starting iAPS Closed loop mode

Once you have checked that your core settings are fairly accurate, you can enable Closed Loop via the Settings.

#### Use a pre<span class="mark">set Temporary Target</span>

<span class="mark">In iAPS, you can set a Temp Target via a profile switch,.</span>

- <span class="mark">Most common presets are a high target for exercise, and a low target in preparation for meals.</span>

- <span class="mark">A profile switch also allows adjustments of your carb ratio, ISF and SMB settings, according to your individual needs and preferences.</span>

#### Adjusting parameters

In iAPS, you have the flexibility to change your default or Normal Profile via the Settings. Here you can change your basal insulin rate, carb ratio, insulin sensitivity, and target glucose. The duration of insulin action can be found in the pump <span class="mark">settings.</span>

***Giving an insulin bolus***

you can give insulin for a meal in 2 ways:

- Via the Meal action button, you can e<span class="mark">nter carbs, and an insulin bolus will be calculated. You can either confirm or correct prior to “e</span>nacting” the bolus.

- Or via the insulin drop icon button, you can directly enter the number of units of insulin you want to deliver.

#### Suspending insulin

If you need to temporarily stop the insulin delivery, such as during exercise to avoid the risk of hypoglycemia, you can go to your Pump screen by tapping the pump icons on the homescreen or via the settings. From there, you can choose the option to "Suspend Insulin Delivery” for a duration ranging from 30 minutes to 2 hours. This will temporarily suspend the insulin delivery from the pump. Here you can also resume insulin delivery.

### 4.3 Open Loop

In certain situations, it may be necessary to switch to Manual Mode in iAPS. In theory iAPS should be able to handle illness and other disturbances. However, sometimes it may be more appropriate to go back to the basics.

You can go to Manual Mode by disabling Closed Loop via the Settings.

<span class="mark">In Manual Mode, iAPS operates like Closed Loop Mode:</span>

- <span class="mark">you can adjust the basal insulin rate, carb ratio, insulin sensitivity, target glucose value and duration of insulin action via the Settings</span>

- <span class="mark">you can switch profiles or set a new profile via the homescreen</span>

- <span class="mark">And you can deliver a bolus via the Meal ic</span>on or via the Insulin drop icon.

In conclusion, iAPS offers a lot of additional settings on top of the core settings from Manual Mode. It’s best to experiment with the app in Open Loop and go through the documentation before closing the loop and using advanced and dynamic settings.

While it may seem daunting to adjust the system yourself, it is important to remember that you are not alone in this journey. The iAPS community is there to support you every step of the way. So, have confidence, seek help when needed, and refer to the extensive documentation as you work towards achieving optimal glycemic control with iAPS.

## <u>5. Creating and interpreting reports</u>

In this video, we will explore the process of creating and interpreting reports in Nightscout, which is used in conjunction with iAPS.

Previous videos have covered the steps to create a Nightscout website and connect your iAPS app to Nightscout for data transmission every 5 minutes.

Now, we will delve into the features and functionality of the Nightscout interface and reports, helping you understand and leverage the valuable information they provide for managing your diabetes.

### 5.1 Nightscout Interface

In the Nightscout interface, the website is typically black and can be customized based on your preferences. Here are the different sections of a Nightscout website:

1.  The title bar displays the name of your site on the left and includes buttons on the right, such as the menu button with various settings options. You may also find edit and audio icons, which are rarely used. Depending on your authentication status, you will also see a plus sign, where you can log treatments.

2.  System information: The system information section shows the current information of all systems connected to Nightscout. It may include gray boxes or plugins, providing additional details when hovered over. In Nightscout we call these pills.

3.  User and treatment information: The user and treatment information section displays information about you and your treatments. You'll find pills or abbreviations that will be explained further in the settings section.

4.  Basal insulin: The basal insulin section shows your basal insulin release.

5.  Sensor glucose and treatments: The sensor glucose and treatments section displays your sensor glucose readings, carbohydrate and/or insulin treatments, as well as predictions from iAPS.

6.  Data history: This data history section shows the last 48 hours of data.

In Nightscout, you can access various settings through the hamburger menu at the top. Here's an overview of the available options:

- Reports: Allows you to generate reports.

- Profile and Nutrition: Via Profile and Food Editor you can change settings, although the settings are usually managed through the iAPS app rather than Nightscout.

- Admin Tools enable you to create access tokens for sharing data with healthcare providers or family members.

- Account settings: Account settings provide options to adjust units, time format, language, and more. You can also customize the appearance of your Nightscout account, including the display of plugins or pills. Additionally, this section explains the abbreviations used in the interface.

- Saving settings: Changes can be saved if you enter your API password. Below that, you can see the authentication status.

By exploring these settings and making appropriate adjustments, you can personalize your Nightscout experience to suit your needs.

### 5.2 Types of reports

When using iAPS, you can access reports through your Nightscout website via the menu in the top right.

Some of the key reports you can access include:

- Day to day Reports: These shows how the algorithm adjusts basal insulin and provides insights into micro bolus delivery.

<!-- -->

- Distribution Report: This report displays Time in Range, Time Below Range, and estimated HbA1c. The Coefficient of Variation can be calculated by dividing the standard deviation by the mean glucose level and multiplying it by 100.

<!-- -->

- The Percentile Chart Report offers an Ambulatory Glucose Profile-like picture to analyze glucose trends.

- The Profiles Report allows you to review and record insulin settings, such as insulin duration, carbohydrate ratio, insulin sensitivity, basal insulin rate, and target value.

- And the Loopalyzer Report provides visualizations of average basal adjustments over a 24-hour period within a specified time frame. This can help identify patterns and trends in basal insulin adjustments made by the algorithm.

Alternatively, reports from Nightscout can be visualized using the Nightscout Reporter software. This free web-based platform provides a more user-friendly interface and allows you to select the desired reports, set the time period, and generate a PDF document to forward to your healthcare provider. Interesting reports available include analysis, profiles, glucose percentile chart, and daily reports.

There are three ways to discuss these reports with your healthcare provider:

1.  You can provide your healthcare provider with your Nightscout URL and a secure token that you have created. This allows them to access and view the reports directly.

2.  While you can't directly generate a PDF from Nightscout, you can save the reports as PDF files. Simply open the desired report, press Command+P on Mac (or "Ctrl+P" on Windows), and select "Save as PDF" as the printer option. This will create a PDF file that you can save and email to your healthcare provider if needed.

3.  Another option is to use Nightscout Reporter to create more visually appealing reports that can be easily forwarded to your healthcare provider.

By effectively utilizing Nightscout and Nightscout Reporter, you can provide your healthcare provider with comprehensive reports that highlight the performance and trends of your diabetes management with iAPS.

### 5.3 Interpreting reports

In iAPS, the main parameters that can be adjusted are the target glucose value, basal insulin rate, carbohydrate ratio and insulin sensitivity.

**This can be done via the Settings.**

It is important to follow a structured approach when interpreting reports and making adjustments. Here is a detailed guide:

1\. Assess Glycemic Information:

- Check on the Distribution report if treatment goals, particularly Time in Range and Time Below Range, are being met over the past 2 to 4 weeks. Following international guidelines, time in range should be above 70% and time below range should be below 4%.

- If you have access to the Analysis report of Nightscout Reporter, take note of the frequency of meal bolusing, which you would expect to be on average 3 times per day.

2\. Optimize AID Settings:

- Analyze the Ambulatory Glucose Profile to identify trends of hypo- or hyperglycemia. If you spot trends, try to find out on the Daily reports, if these are related to meal boluses.

- For trends related to meal boluses: assess factors such as timing, carbohydrate counting, and consider adjusting the carbohydrate ratio.

  - If postprandial hyperglycemia is an issue, also consider using a lower Temp Target before meals.

  - You can also explore the option of faster-acting insulins like Fiasp or Lyumjev.

<!-- -->

- For trends after manual correction boluses or after hyperglycemia: change the insulin sensitivity or duration of insulin action, to adjust the aggressiveness of the algorithm.

- For trends outside of meals or boluses: you can adjust the Target glucose value per time block or change the basal insulin rate from 1 hour before and during the corresponding period with 10-20%.

- It's also important to explore possible correlations with missed boluses, exercise, alcohol or hypoglycemia.

In iAPS, it is important to ensure that the basal insulin rate is appropriately set. If you notice a consistent pattern of increasing or decreasing basal insulin during a specific period of the day that <span class="mark">cannot be</span> explained by SMB or manual bolusing, for example in the Loopalyzer Report, the aim is to adjust the basal insulin rate at that time to align with the algorithm's requirements.

If you are an experienced iAPS user, and you seek additional profile tuning, you can consider enabling Autotune.

On top of that, you can also control the aggressiveness of the iAPS algorithm's insulin delivery in several ways.

- You can adjust the max basal and max IOB settings.

  - Lowering these limits can help prevent excessive insulin administration, especially in cases of frequent hypoglycemia.

  - On the other hand, if the max IOB setting is restricting the system's ability to correct high blood glucose levels effectively, it may need to be increased. This should be done with caution.

- You can also adjust the SMBs by changing the Max Delta-BG Threshold, enabling the UAM feature, changing the Max SMB Basal Minutes, the SMB Delivery Ratio and the SMB Interval.

- If you use Dynamic ISF, you can change the Adjustment factor, the type of algorithm, the Weighted Average of total daily insulin and the Threshold Setting.

3\. Guide Behavioral Recommendations: Ensure proper usage of the automated insulin delivery system in the Daily reports:

- Sens<span class="mark">or wear time, activation of Auto Mode, and adherence to pre-meal bolusing can best be checked in the Day-to-day reports.</span>

- <span class="mark">You can also check the correct use of temporary targets and profile switches, and evaluate for overcorrection of hypo- or hyperglycemia.</span>

- <span class="mark">Also ask about the appropriateness of alarm set</span>tings and reminders, to avoid alarm fatigue.

4\. Review Pump Settings and Emergency Plans:

- Document your pump settings, including at least your basal insulin rate, carbohydrate ratio, insulin sensitivity and target glucose value.

- Establish an emergency plan and always have insulin pens with you, in case of a pump malfunction or other emergencies.

When making changes, it is important to modify only one setting at a time. After implementing a change, closely monitor the effects over a period of 1-2 weeks. It is possible that your initial adjustment may not yield the desired results, in which case, you can explore alternative options and make further adjustments accordingly. The key is to iterate and fine-tune your settings based on the feedback provided by your Nightscout reports, ensuring optimal performance of your iAPS system.

By following these guidelines and considering the provided details, you can effectively interpret reports, optimize insulin settings, and ensure proper usage of iAPS for improved diabetes management.

## <u>6. Managing special situations</u>

In this video, we will provide specific tips and recommendations for managing common situations in diabetes management while using the iAPS automated insulin delivery system.

These tips are in addition to the general guidelines covered in the general AID systems module.

We will cover strategies for handling hypo- and hyperglycemia, dealing with high-fat meals, managing diabetes during physical activities, coping with illness, alcohol and planning for travel.

By implementing these tips, you can optimize your glucose control and enhance your overall diabetes management with iAPS.

### 6.1 Hypoglycemia

With an automated insulin delivery system like iAPS, you require fewer carbohydrates to treat hypoglycemia compared to traditional diabetes management, especially when you have little insulin on board.

iAPS provides the ability to see your insulin on board on the home screen. If you haven't had insulin in the last few hours, a smaller dose of carbohydrates is usually sufficient.

It is recommended to enter the carbs you consume to treat or prevent hypoglycemia into the algorithm using the Meal action button. This allows the algorithm to consider these carbs when calculating insulin requirements, and you will typically only receive insulin as needed.

To prevent further episodes of hypoglycemia, you can make adjustments in the iAPS system to reduce insulin delivery. This can be done by using a higher temporary target value <span class="mark">via the Temp Target button, or via a profile switch.</span>

You can also choose to reduce the percentage of insulin release in your profile. Remember that if you reduce your profile by for example 50%, this will not only reduce your basal insulin rate, but also make your carb ratio and insulin sensitivity 50% less aggressive. Via “More Options” you have the option to not apply the % to your ISF and carb ratio or also turn off SMBs, which might be a good strategy if you’re experiencing hypoglycemia.

It's important to note that in some cases, the algorithm may increase basal insulin even when you are experiencing low glucose levels. This could be necessary if the predicted glucose level is higher than the target value. In the majority of cases, iAPS is accurate regarding its predictions.

### 6.2 Hyperglycemia

In the case of mild hyperglycemia, it is generally recommended to trust iAPS and allow the system to work on its own. However, you can consider giving a manual correction bolus using the bolus calculator without entering carbohydrates.

To address hyperglycemia, you also have the option to increase the percentage of insulin release in your profile or temporarily set a lower target value.

In situations of prolonged and severe hyperglycemia, it is important to consider the possibility of an infusion set problem. When in doubt, it is advisable to change your infusion set or Pod. Remember the phrase "If in doubt, change it out."

It is essential to ensure that you have enough equipment on hand to carry out all necessary substitutions and replacements. Being prepared with the required supplies is crucial for effectively managing hyperglycemia and maintaining the proper functioning of your iAPS system.

### 6.3 High-fat meals

When consuming a high-fat meal while using iAPS, there are several recommended approaches you can consider:

1\. In iAPS, you have the flexibility to include carbs, fat and proteins into the bolus calculator. Via the settings you see and adjust how these fats and proteins are taken into account in the calculation of the insulin delivery.

2\. You can also enter only 70% of the carbohydrate portion, allowing the algorithm to account for the remaining portion. An alternative approach is to set a temporary profile with a higher insulin delivery of for example 130% for 2 to 3 hours to take into account the slowly absorbed part of the meal.

3\. Another option is to administer your bolus in two parts. For example, you can deliver 50% of the insulin dose before the meal and the remaining 50% 2 hours later. In the app it is also possible to enter carbs in the future, but not an insulin bolus in the future.

It's important to note that individual responses to high-fat meals can vary, so it may be helpful to experiment with different approaches and monitor your glucose levels closely to find the most effective strategy for managing your blood sugar levels during such meals.

### 6.4 Exercise

When participating in physical activities with iAPS, it is advisable to implement the following strategies:

1.  Most people use a dedicated profile in iAPS specifically designed for exercise. This profile should incorporate a higher target glucose, and a lower insulin delivery percentage to accommodate the impact of physical activity.

2.  You can also just set a higher target value during exercise to mitigate the risk of hypoglycemia.

3.  In iAPS, you have the option to disable SMBs when using a higher target value. This allows for more conservative insulin delivery during exercise.

4.  As discussed in the general AID module, it is also recommended to reduce your mealtime insulin if you exercise within 3 hours of your meal.

5.  Take advantage of the integration capabilities of iAPS by connecting your dedicated iAPS app to an Apple Watch. This allows for convenient monitoring of glucose levels and trend data during exercise.

It's important to remember that these recommendations serve as a starting point, and adjustments may be necessary based on individual responses to exercise. Regular monitoring, self-observation, and collaboration with healthcare professionals will aid in refining insulin dosing and achieving optimal blood sugar management during physical activity with iAPS.

### 6.5 Illness

During illness, it is generally recommended to keep iAPS in Closed Loop Mode unless advised otherwise by your healthcare provider.

Please refer to the guidelines about illness discussed in the general module on automated insulin delivery systems.

***6.6 Alcohol***

When consuming alcohol while using iAPS, it is important to take certain precautions to prevent hypoglycemia. Here are some recommendations:

You can adjust your target value to a higher level than usual, or set a lower % of your insulin profile, when consuming alcohol. This can help prevent the system from administering excessive insulin in response to any increase in glucose levels.

It is worth noting that simply consuming more carbohydrates is not an effective strategy to prevent hypoglycemia, as the automated insulin delivery system will compensate for any rise in glucose levels by increasing insulin delivery.

Always monitor your glucose levels closely when consuming alcohol and be prepared to make further adjustments as needed.

### 6.7 Travel 

When traveling with iAPS, it's important to be prepared and consider some specific factors. Here are some considerations for travel:

1\. Ensure that you have enough diabetes supplies, including insulin, infusion sets, sensors, test strips, and backup devices, to last throughout your trip. It's always better to be prepared with extra supplies in case of any unexpected situations.

2\. When traveling by air, you may need to make some adjustments. Keep in mind the following:

- The Bluetooth function of your mobile phone, pump, and transmitter can typically remain on during the flight. If you're instructed to activate Airplane Mode, there's no need to be concerned, as iPhones will still maintain Bluetooth connectivity even when Airplane Mode is enabled.

- During the flight, the Wi-F, 4G and 5G connectivity of your SIM card will not be available. This should not affect the operation of the iAPS app as it will continue to function perfectly via Bluetooth. However, the data will not be forwarded to Nightscout until you regain a stable internet connection.

- The iAPS app usually detects time zone changes automatically and adjusts the time accordingly, although depending on pump and CGM setup, jumps in time can lead to problems. However, it's a good practice to double-check the time settings in the app after arriving at your destination to ensure accurate data recording.

Remember to always comply with airline regulations and guidelines regarding the use of electronic devices, and inform the airline staff that you are wearing a medical device such as an insulin pump.

By taking necessary precautions and planning ahead, you can enjoy your travel while ensuring the continued functionality of your iAPS system.

In this chapter, we covered how to manage special situations such as hypo/hyperglycemia, high-fat meals, exercise, illness, alcohol and travel with iAPS. We provided recommendations and strategies to address these situations effectively. You’ve got this! Remember, individual responses may vary, so experimentation and monitoring are key. Seeking support from the iAPS community and healthcare providers is also valuable.

By leveraging iAPS and connecting with peers, individuals can navigate these situations and improve their diabetes management effectively.

## <u>7. Case report</u>

In this final chapter of the iAPS course, we will explore the practical use of Nightscout, a powerful tool for monitoring and analyzing diabetes data. We will showcase real-life examples of Nightscout in action, highlighting the benefits of iAPS and its impact on glucose control. By understanding these examples, you will gain insights into how iAPS and Nightscout work together to optimize insulin delivery and improve quality of life for individuals with diabetes.

- In this Nightscout example, you can observe an individual experiencing regular hypoglycemia after meal boluses. This pattern may indicate a carbohydrate ratio that is too low. Increasing the carbohydrate ratio can help prevent post-meal hypoglycemia and ensure better glucose control.

- Examining another Nightscout example, you may notice hypoglycemia occurring by noon, despite the algorithm regularly lowering the basal insulin between 8 am and 12 pm. If this pattern constantly repeats, it suggests that the morning basal insulin rate might be set too high. Adjusting the morning basal rate can help prevent excessive insulin delivery during that period and reduce the risk of hypoglycemia.

- In this Nightscout example, you can observe a borderline low glucose level in the morning, accompanied by negative insulin on board (IOB). These indications suggest that the basal insulin rate overnight might be too high. Lowering the overnight basal rate can help maintain stable glucose levels upon waking and avoid hypoglycemia.

- If you notice significant glucose fluctuations after automatic temporary basal adjustments, it may indicate that the automatic insulin delivery is responding too aggressively. This could be due to an overly aggressive or low insulin sensitivity setting. Modifying the sensitivity settings can help mitigate glucose fluctuations and optimize glucose control.

If you’d like to know more about iAPS and how the Dynamic Settings work, we highly recommend watching the video series of Loop and Learn about the system. These videos take some time, but they explain very well how to use these advanced iAPS settings.

Congratulations on completing the full iAPS module! By integrating iAPS with Nightscout, you can effectively monitor and manage your diabetes using real-time data. Nightscout allows you to visualize the impact of iAPS on your glucose control and identify areas for improvement. The examples presented highlight the importance of fine-tuning iAPS settings, such as carbohydrate ratios, basal insulin rates, and insulin sensitivity, to achieve optimal glucose management and enhance your quality of life.

Remember, always consult with your healthcare provider before making any adjustments to your diabetes management regimen. iAPS, in combination with Nightscout, empowers you to take control of your diabetes and make informed decisions to achieve your treatment goals.
