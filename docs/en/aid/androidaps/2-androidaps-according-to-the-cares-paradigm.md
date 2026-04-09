<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/_Q5BNBdijeI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. AndroidAPS according to the CARES paradigm</u>**

In this video, we will cover AndroidAPS according to the CARES paradigm.

We will discuss how AndroidAPS calculates and adjusts the automated insulin delivery, when it reverts back to Manual Mode specific education tips and sensor issues, and how it shares data. After that we will go over AndroidAPS indications and software updates. Let's get started!

### ***2.1 AndroidAPS according to CARES paradigm***

### ***\#1 Calculate***

In AndroidAPS, the preset basal insulin rate is adjusted based on the predicted glycemia of the next 5 to 9 hours. Here's a breakdown of how AndroidAPS works:

- AndroidAPS combines different blood glucose or "BG" predictions to calculate the minimal predicted blood glucose:

  - <span class="mark">Android APS calculates a carb predicted BG, which is a prediction based on the carbohydrates on board,</span>

  - an insulin predicted BG, which is a prediction based on the insulin on board,

  - an UnAnnounced Meal predicted BG, which is a prediction in case of unannounced carbohydrate consumption,

  - and a Zero Temp predicted BG, which is worst-case scenario, in case insulin is suddenly no longer administered or carbohydrates are no longer absorbed.

- AndroidAPS takes into account any errors in predictions because the Eventual BG prediction is adjusted based on the deviation between the current glucose and the predicted glucose, also known as the blood glucose impact. The algorithm also considers the glycemia trend by calculating the delta or difference between current and past glycemia. And it also takes into account the short-term and long-term glucose momentum, which is the amount of change between current and the glucose of 15 and 40 minutes ago.

<!-- -->

- The insulin requirement or InsulReq is calculated by subtracting the target blood glucose from the minimal predicted blood glucose, and dividing this difference by the insulin sensitivity or ISF. This insulin requirement will determine whether to increase or decrease the manually preset basal insulin.

<!-- -->

- If hypoglycemia is predicted, basal insulin will be stopped, and rescue carbohydrates may be recommended.

AndroidAPS offers two options for insulin delivery: OpenAPS Advanced Meal Assist (or AMA) and OpenAPS SuperMicroBolus (or SMB).

- In AMA, the required insulin is delivered as a temporary basal with a specified duration and insulin rate.

- In SMB, half of the calculated temporary basals is given as a microbolus, delivering the same insulin dose faster, followed by a temporary pause in basal insulin delivery. These temporary basals or supermicroboluses are recalculated every 5 minutes and can be adjusted within predefined safety settings.

AndroidAPS offers optional functions such as Autosens and Unannounced Meal detection**.**

- Autosens is a feature in AndroidAPS that increases or decreases the insulin delivery, based on the user's insulin sensitivity over the past 4, 8 or 24 hours.

  - It calculates a percentage that reflects how the insulin sensitivity in the past hours differs from the currently set sensitivity, and uses that % to adjust insulin sensitivity and basal insulin rate.

  - The autosens function can also be applied to the target value, adjusting it based on the calculated sensitivity ratio.

  - The autosens function does not integrate the period when carbohydrates are on board in its calculation. If you use the autosens function, it is important to enter all e<span class="mark">aten ca</span>rbs. Otherwise carbs deviations will be identified wrong as a sensitivity change. On the other hand, if you are continuously eating carbs over an extended period, the effectiveness of autosens will be reduced during that period.

  - Changing a Pod or infusion set, or changing a profile, will reset the Autosens ratio back to 100%.

- Using the Unannounced Meal function allows the SMB algorithm to recognize unannounced meals. This is helpful if you forget to tell AndroidAPS about your carbs or estimate your carbs wrong and the amount of entered carbs is wrong or if a meal with lots of fat and protein has a longer duration than expected. Without any carb entry, UAM can recognize fast glucose increments caused by carbs, adrenaline, etc., and tries to adjust it with supermicroboluses. This also works the opposite way: if there is a fast glucose decrease, it can stop SMBs earlier.

The target value for glycemia can be adjusted between 80 and 200 mg/dl or 4.4 and 11 mmol/l.

AndroidAPS places a high priority on safety and incorporates various safety settings and limits to prevent potentially dangerous insulin delivery. To ensure users configure the system correctly and understand its functionality, AndroidAPS includes a series of Objectives.

- These Objectives serve as a step-by-step guide, helping users properly set up the system, including insulin pump settings and gain a comprehensive understanding of its operations.

- It typically takes around two months to complete these Objectives, and it is essential to successfully finish them before fully utilizing the automated insulin delivery functionality.

### ***\#2 Adjust***

In AndroidAPS, you have the flexibility to adjust various parameters to personalize your treatment.

- You can set the target glycemia value per time block of 60 minutes between 80 and 200 mg/d<span class="mark">l (or 4.4</span> and 11 mmol/l).

- It is recommended to use a single target value instead of a range for better performance with An<span class="mark">droidAPS. International guidelines suggest starting with a target range of 110 to 120 mg/dl (or 6 to 6.5 mmol/l). Many users opt for a target value of 100 mg/dl (or 5.6 mmol/l) during the day and even lower during the night - for example 90 mg/dl (or 5 mmol/l). This can be considered if this doesn’t cause significant hypoglycemia.</span>

- AndroidAPS allows you to set different basal insulin profiles based on your individual needs.

- You can also set any temporary target value or % of insulin delivery within a safe range.

- AndroidAPS has 3 default temp targets: Eating Soon, Activity and Hypo:

  - Eating Soon is a temporary Target of 90 mg/dl or 5 mmol/l for 45 minutes,

  - Activity is a temporary target of 140 mg/dl or 7.8 mmol/l for 90 minutes,

  - And Hypo is a temporary target of 160 mg/dl or 8.9 mmol/l for 60 minutes.

  - These default settings can be changed through the Preferences

Carbohydrate Ratio, Insulin Sensitivity, and Duration of Insulin Action can be adjusted according to your specific requirement.

- In AndroidAPS, the duration of insulin action can be set between 5 to 8 hours, which is typically longer than in traditional insulin models due to the consideration of insulin's long tail effect. Most users prefer 6 to 7 hours. If you require a longer duration, check your ISF settings as they might be too aggressive. In general, the actual duration of insulin action does not differ that much between users.

- AndroidAPS allows you to select the type of insulin you use.

- You can choose from options such as fast-acting profiles for Novorapid or Humalog, an ultra-fast profile for Fiasp, a separate profile for Lyumjev, or a profile with adjustable peak operation for unlisted insulin or mixtures.

- Depending on the selected insulin type, AndroidAPS will provide a corresponding profile.

Within AndroidAPS, there are numerous other adjustable parameters, and we will delve into the primary ones: algorithm type, unannounced meal function, autosens, and delivery limits.

- When starting AndroidAPS, you can choose between the OpenAPS AMA or OpenAPS SMB algorithm.

- Initially, it is recommended to use supermicroboluses (SMB) only after consuming carbohydrates. If this works well for you, you can <span class="mark">choose to activate SMB at other times as well. This option is only possible with trusted blood glucose data sources like most Dexcom and FreeStyle Libre sensor.</span>

- <span class="mark">Dynamic ISF is an experimental algorithm available in AndroidAPS, in addition to OpenAPS AMA and SMB. With Dynamic ISF, insulin sensitivity is dynamically calculated based on the total daily insulin dose and current and predicted blood glucose values. This algorithm considers the insulin resistance that occurs at higher blood glucose levels compared to lower ones. By using Dynamic ISF, the system determines your insulin sensitivity independently of the user-set values.</span>

- <span class="mark">The UAM detection feature helps the algorithm interpret significant glycemic increases as unannounced meals.</span>

- <span class="mark">It's important to note that this feature is only recommended for use only if you have relatively stable blood sugar control and glucose sensor values. If your glucose control is poor, activating UAM may introduce additional variability. The same can happen if your sensor values are unstable, for example during the first day after a sensor change.</span>

- <span class="mark">Autosens is one of the most important unique features of AndroidAPS. It analyzes your response to insulin over the past 4, 8 or 24 hours and adjusts insulin sensitivity and basal insulin rate accordingly. You have the option to allow Autosens to modify your target value as well. Be aware that your diabetes may vary. It’s recommended to evaluate the use of the Autosens results before activating it permanently.</span>

- The sensitivity for the autosens function can be selected, and the Oref1 option is recommended for users of OpenAPS SMB and UAM.

- The advanced settings for Autosens in AndroidAPS are best left unchanged. These include:

  - The min_5min_carbimpact determines the rate at which carbohydrates are assumed to be broken down when your blood glucose is not rising. The standard value for AMA is 5 mg/dl/5 minutes, while for SMB it's 8 mg/dl/5 minutes.

  - The meal maximum absorption time is the duration after which it is assumed that all carbohydrates have been absorbed. By default, it is set to 6 hours.

  - The max and min autosens ratio are set at 1.2 and 0.8, respectively. They determine the maximum and minimum adjustment percentages based on the Autosens function. This means that the values can be adjusted by a maximum of 120% and a minimum of 80% using Autosens.

- Finally, there are also safety settings and limits in AndroidAPS that can be adjusted within a safe range based on the user's age and type.

- These settings include:

  - Maximum basal: For adults, It is recommended to set this limit at 3-5 times the highest basal setting.

  - Maximum insulin on board: This limit refers to the maximum combined amount of basal and bolus insulin allowed at once.

- There are also several advanced safety settings, that are recommended to be left unchanged:

  - AndroidAPS offers the option to always use the short average difference instead of relying solely on the most recent sensor glycemia. This is particularly useful when using glycemia sensors with more noise, such as data from xDrip and Libre sensors. The short average difference considers the average sensor glycemia from the last 15 minutes or the last 3 sensor values.

  - Maximum daily safety multiplier and current basal safety multiplier are additional limits for the maximum basal insulin rate, and it's generally best to leave them unchanged. The maximum daily multiplier is set to 3 by default, allowing a maximum of 3 times the highest manually set basal rate. The current basal mode multiplier is set to 4, allowing a maximum of 4 times the manually set basal rate.

  - In OpenAPS AMA, there is another specific safety setting, namely "bolus snooze dia divider". It determines the duration for delivering additional insulin after a meal bolus. By default, it is set to half the duration of insulin action.

  - In OpenAPS SMB, there are also additional security settings related to supermicroboluses. These include for example the maximum minutes basal to limit supermicroboluses, which is defaulted to 30 minutes.

Remember that these settings and parameters should be adjusted in consultation with your healthcare provider, taking into account your individual needs and medical guidance.

### ***\#3 Revert***

In AndroidAPS, if there is no connection to the sensor or pump for more than 15 minutes, the system will revert to Manual Mode.

When the connection is lost, the pump will initially switch to the last set temporary basal. After a maximum of 120 minutes, it will transition to Manual Mode.

In Manual Mode, the basal insulin delivery is set to the preset rate without the suspend-before-low function. You have the option to enable the suspend-before-low function manually, but this will only be possible if the sensor and pump are connected.

Once the connection to the pump or sensor is reestablished, the system will automatically resume the Auto Mode, which is called automated insulin delivery in AndroidAPS. In this automated insulin delivery Mode, the system calculates and administers a temporary basal every 5 minutes.

It's worth noting that in AndroidAPS, the term <span class="mark">“Open-Loop" does</span> not refer to the Manual Mode. Instead, Open-Loop Mode indicates that temporary basals only appear as notifications, and you need to confirm them manually. This Open-Loop Mode is recommended for users who are new to AndroidAPS and want to observe how the algorithm functions before fully relying on it.

### ***\#4 Educate***

Proper education is crucial when starting an automated insulin delivery system. For general education points, please refer to the generic module.

The general education points covered were:

- Using fewer carbohydrates to correct hypoglycemia.

- Considering infusion set problems if blood glucose levels remain high without an apparent reason.

- Trusting the automated insulin delivery system and avoiding unnecessary manual interventions.

- Timing meal boluses 15 minutes before meals.

- Utilizing Exercise Mode 1 to 2 hours before activity.

- Stopping insulin delivery if the pump is disconnected for more than 15 minutes.

- Responding to alarms and being mindful of automatic updates on mobile phones.

- Seeking peer support for guidance and sharing experiences.

AndroidAPS is a powerful tool for managing diabetes, but it's important to remember that it is not a fully automated system that you can “set and forget”. It requires active monitoring and understanding of its actions. Here are some additional education points specific to using AndroidAPS:

1.  Active Monitoring: AndroidAPS controls your insulin delivery, so it's crucial to watch it closely and understand how it works. Be attentive to any potential errors or unexpected behavior and learn how to interpret the system's actions.

2.  Phone Usage: Once paired, the phone can instruct the pump to perform various actions. Your phone with AndroidAPS is to be regarded as a medical device and be handled accordingly. Only use the phone for AndroidAPS and essential communications. Consider starting out with separate phones for AndroidAPS and daily smartphone use. Avoid installing unnecessary apps or games that could introduce malware and potentially interfere with the system's operation.

3.  Security Measures: Install all security updates provided by your phone manufacturer and Google to keep your device protected. This helps safeguard against potential security vulnerabilities.

4.  Proximity to Pump and CGM: Keep your mobile phone in close proximity to your insulin pump and CGM to maintain a reliable connection.

5.  Passwords and Backups: Keep a record of all passwords used and store a backup copy of your app in the cloud. Regularly exporting your settings to the cloud simplifies the reinstallation process and prevents the need to redo all your objectives.

6.  Spare Mobile Phone: It's advisable to have a spare mobile phone available for emergencies. This ensures that you have a backup device in case of any technical issues with your primary phone.

7.  Advanced Settings: Utilize advanced settings, such as OpenAPS SMB, only after you have a good understanding of the basics and have achieved stable blood glucose control. Note that features like the Unannounced Meal (UAM) function and Autotune may not work optimally for everyone.

8.  "Eating Soon" Temp Target: If you experience hyperglycemia after meals, make use of the "Eating Soon" temporary target. This feature helps you proactively address high blood sugar levels in preparation for upcoming meals.

9.  Healthcare Provider Access: Ensure that your healthcare provider has access to your reports generated by Nightscout <span class="mark">or Tidepool. This enabl</span>es them to stay informed about your diabetes management and make informed decisions during your medical consultations.

10. Master Insulin Pump and Sensor Use: Make sure you are able to use your insulin pump and sensor properly as well.

By following these guidelines and maintaining a proactive approach to using AndroidAPS, you can optimize the system's effectiveness and ensure a safe and reliable automated insulin delivery experience.

### ***\#5 Sensor*** 

AndroidAPS can be linked to the Dexcom, FreeStyl<span class="mark">e Libre, Eversense, Enlite, POCTech, Sibionics, Ottai, Syai Tag and CareSens Air sensors.</span>

<span class="mark">Be aware that only Dexcom and FreeStyle Libre sensors are considered to be trusted blood glucose data sources as they have regulatory approval for use in commercial automated insulin delivery systems. Trusted blood glucose data sources allow SMB delivery all the time, while other data sources will only allow supermicroboluses after carbs.</span>

Since AndroidAPS cannot directly connect to native sensor apps like the Dexcom or LibreLink app, an additional open-source sensor app (like xDrip+ <span class="mark">or Juggluco) is</span> required to bridge the gap and transmit the sensor data to AndroidAPS.

<span class="mark">If you have doubts about the accuracy of your sensor readings or feel that they do not reflect your condition, perform a finger prick test to confirm. If you notice a significant discrepancy—such as a difference of more than 20% between the sensor and finger prick readings, even when your blood glucose is stable within the target range - it's advisable to disable Auto Mode and or replace the sensor.</span>

<span class="mark">Some sensors can be calibrated with a finger prick value. This should only be done if your sensor values are stable and in range.</span>

### ***\#6 Share***

In AndroidAPS, sharing insulin and glucose data with healthcare providers and family members is possible through various means:

To enable your h<span class="mark">ealthcare provider to monitor your data, it is essential to set up a Nightscout website or create an account on Tidepool. AndroidAPS can send the data to the Nightscout website or Tidepool cloud, allowing your healthcare provider to access and review the information in real-time. Users can download reports from Tidepool or Nightscout, or use tools like Nightscout Reporter to generate comprehensive reports that can be shared with healthcare providers for in-depth analysis and evaluation.</span>

1.  <span class="mark">It is important to understand that Tidepool is for reporting only. It is not a real-time follow app. If you need to have followers apart from the main AndroidAPS phone, you must setup Nightscout as well. Caregivers can access the data on the personal Nightscout website, either with a token or through other authorized means. This allows them to view and track your insulin and glucose information and stay updated on your diabetes management. For remote care apart from Nightscout, caregivers can use the NSClient app, in which they can adjust targets, import carbs and other settings. Everything but giving a bolus.</span>

2.  <span class="mark">Family members can also remotely monitor your data using a Dexcom Follow app if you have a Dexcom Share account, or using xDrip or its variants. These applications allow them to access real-time glucose and insulin information, providing an additional layer of support and awareness.</span>

By leveraging these sharing capabilities, AndroidAPS users can facilitate effective communication and collaboration with their healthcare team and loved ones, fostering a supportive and informed diabetes management environment.

### ***2.2 Indications***

AndroidAPS is an open-source app that does not have official indications approved by the FDA or European authorities. It can be used with all rapid-acting insulin analogues.

The AndroidAPS app is not available for download from app stores. Users are required to build the app themselves at their own risk. Setting up the system requires determination and technical knowledge. If you don’t have the technical know-how at the beginning, you will by the end. All the information you need can be found in the AndroidAPS documentation that is available online, and from others who have already done it – you can ask them in Facebook groups or other forums like Discord. Discord is a highly recommended platform for interactive chat among AndroidAPS and Nightscout users, parents, and developers. It covers a wide range of subjects, from first-time user queries to more technically advanced discussions about the inner workings of AndroidAPS and the OpenAPS algorithm. The primary language used on Discord is English.

Many people have successfully built AndroidAPS and are now using it entirely safely, but it is essential that every user:

- Builds the system themselves so that they thoroughly understand how it works

- Adjusts its individual dosage algorithm with the help from his or her diabetes team

- Maintains and monitors the system to ensure it is working properly.

- And understands how their insulin pump and glucose sensor works.

To build and utilize AndroidAPS, you will need a compatible mobile phone. The minimum requirements for your devices can be found in the AndroidAPS documentation. The documentation also provides a list of specific mobile phones that have been tested and proven compatible with AndroidAPS. Checking the minimum requirements and compatibility ensures that your devices are capable of running the application effectively.

<span class="mark">Building the app can be done with a computer using Android Studio, or from your phone using GitHub actions. A step-by-step guide is available in the AndroidAPS documentation. You will need to go through the various steps to generate the APK file. It is important to store the necessary passwords and key store file securely for future updates. Once th</span>e APK file is generated, it can be saved in the cloud and installed on the mobile phone.

After installing the AndroidAPS app, you will need to complete 10 Objectives over the course of approximately 2 months. These Objectives guide you through important features and settings, ensuring that you configure your system correctly and understand its operations. By completing the Objectives, you will gain confidence and trust in the AndroidAPS system, empowering you to effectively manage your diabetes.

In conclusion, AndroidAPS requires users to take an active role in understanding and building the system while adhering to safety precautions and medical guidance.

### ***2.3 Software updates***

Regular software updates are crucial for maintaining the optimal performance and accessing the latest features of AndroidAPS. The AndroidAPS team releases new versions periodically, with major updates occurring annually and minor updates in between. These updates often include bug fixes and improvements to enhance the functionality of the system.

Notifications on the AndroidAPS app will notify you when a new version is available, and it is mandatory to update within 60 days to continue using AndroidAPS.

To update AndroidAPS, follow these steps:

- Export yo<span class="mark">ur current AndroidAPS settings and save them in a secure location.</span>

- <span class="mark">Use Android Studio or GitHub to re</span>fresh the code to the new version.

- Build a new APK file with the same signing key as the previous installation.

- Transfer the new APK file to your phone and update the current installation.

- Verify the operation and settings of AndroidAPS after the update.

If you encounter any issues, stay calm and seek support from the AndroidAPS community and documentation. Remember that troubleshooting is a normal part of software usage, and with patience, you can overcome any challenges that arise.

In conclusion, staying informed and proactive with AndroidAPS is key to optimizing your diabetes management. By keeping up with software updates, following care guidelines, and addressing any issues promptly, you can ensure a smooth and effective experience. Prioritize safety, maintain accurate records, and utilize available resources for support. Embrace the possibilities that AndroidAPS offers to enhance your health and well-being.

