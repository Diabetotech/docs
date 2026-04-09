**<u>Diabetes Technology Expert Program</u>**

# **AndroidAPS** 

## **<u>1. Introduction</u>** 

Welcome to this comprehensive video series on AndroidAPS, the widely used open-source automated insulin delivery system for Android phones. In these videos, we will explore the key components of AndroidAPS, including the insulin pumps and glucose sensor options, and the OpenAPS algorithm. Additionally, we will delve into important topics such as viewing reports with Nightscout and remotely monitoring users as a caregiver.

Open-source automated insulin delivery systems are as safe and effective as commercial automated insulin delivery systems, but they have not been approved by any medical authorities. Consequently, if you choose to use it, you'll need to build and use it at your own risk. To access the manual for building the app, you can visit androidaps.readthedocs.io.

Additionally, you can seek assistance and support from various online communities, such as the "AndroidAPS Users" or <span class="mark">"Looped" group on Facebook, and the "We are not waiting" group on Discord.</span>

Before we begin, it is essential to note that these videos are not meant as medical advice. Always consult with your healthcare provider for personalized medical advice and therapy adjustments.

The content in these videos was created by Dr. Inge <span class="mark">V</span>an Boxelaer, founder of Diabetotech and endocrinologist at the St-Lucas hospital in Ghent in Belgium. The material has been reviewed by <span class="mark">dr. Per Winterdijk, pediatrician at the Diabeter institute in Rotterdam in the Netherlands, and Theo Van Elsberg, an individual living with type 1 diabetes and user and contributor of the AndroidAPS system. It's important to note that AndroidAPS is available</span> for free, and therefore, no financial interests are involved, ensuring an unbiased assessment of this open-source automated insulin delivery system.

Throughout the series, you will gain valuable insights into AndroidAPS, including its performance based on the CARES paradigm, practical usage of the AndroidAPS app, creating and interpreting reports in Nightscout, and guidance for managing various situations such as hypo and hyperglycemia, high-fat meals, exercise, illness, alcohol, and travel.

By the end of these videos, you will have a comprehensive understanding of AndroidAPS and be equipped with helpful tips and tricks to enhance your experience with the system. Whether you are a caregiver supporting AndroidAPS users or an AndroidAPS user yourself, we wish you success on your journey with this powerful automated insulin delivery system. Good luck!

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

## **<u>3. Linking components together</u>**

In this video tutorial, we will guide you through the process of creating the necessary links within the AndroidAPS automated insulin delivery system. These links establish connections between various components to ensure seamless communication and data exchange.

AndroidAPS operates in the following manner:

- <span class="mark">Glycemia is measured every 5 minutes using a glucose sensor, such as Dexcom or FreeStyle Libre sensor.</span>

- <span class="mark">The sensor sends the glucose readings to a dedicated sensor app on your mobile device, which then transmits the data to the AndroidAPS app.</span>

- <span class="mark">AndroidAPS calculates the required insulin dosage and sends it to your insulin pump, such as Accu-Chek Combo or Insight pump, Dana pump, Omnipod DASH, TouchCare Nano Pump or older Medtronic pumps.</span>

- <span class="mark">The insulin pump delivers the necessary insulin and provides pod data back to the AndroidAPS app.</span>

- <span class="mark">AndroidAPS shares the glycemia and insulin data with Nightscout or Tidepool, which serves as the readout program.</span>

- <span class="mark">If you transmit the glycemia data to xDrip on your mobile device, caregivers can remotely monitor the data through their own xDrip a</span>pp.

- Additionally, the AndroidAPS app or xDrip can <span class="mark">transmit your sensor and insulin data to compatible smartwatches. Some smartwatches can also provide the functionality for remote control like bolus insulin directly from the watch, adding convenience to your diabetes management and adding awareness on your glycemic status without the need to take out the smartphone.</span>

In this video tutorial, we will guide you through the process of creating various links in the AndroidAPS automated insulin delivery system. Specifically, we will cover the following steps:

- How to link your sensor to a dedicated sensor app, enabling the transmission of sensor readings to your AndroidAPS app.

- How to pair you<span class="mark">r insulin pum</span>p with AndroidAPS for seamless communication.

- The process of creating a Nightscout account, which serves as the data hub for AndroidAPS.

- How to establish a connection between the AndroidAPS app and Nightscout, ensuring the smooth transfer of glycemia and insulin data.

- And how to link AndroidAPS to your smartwatch.

By following these steps, you will be able to establish the necessary links within the AndroidAPS system, enabling effective automated insulin delivery functionality for diabetes management.

### ***3.1 Linking Sensor to AndroidAPS App***

When it comes to linking sensors to the AndroidAPS app, there are different options depending on the sensor you are using.

Since AndroidAPS cannot directly connect to native sensor apps like the Dexcom or LibreLink app, an additional open-source sensor app is required to bridge the gap and transmit the sensor data to AndroidAP<span class="mark">S. This can be xDrip+ or Juggluco, depending on your sensor type.</span>

- xDrip+ is a powerful app that can be used for different sensors. It can also connect to other platforms such as Nightscout, Tidepool, smartwatches, and other mobile devices.

<span class="mark">xDrip+ cannot be downloaded direct</span>ly from the Play Store. Instead, you can obtain it from the GitHub repository. You can download the xDrip+ APK file and install it on your mobile device. Once installed, you will be prompted to choose a data source within the app's settings. Select the appropriate option based on yo<span class="mark">ur sensor type, and follow the on-screen instructions to link the transmitter and start the sensor.</span>

When using xDrip with AndroidAPS, you gain additional features such as sharing sensor data with loved ones, customizable alarms, a smartphone widget, Bluetooth integration for car audio systems, and Nightscout integration for comprehensive data management.

<span class="mark">If you only have access to older FreeStyle Libre sensors, you will need an additional NFC to Bluetooth bridge, such as a MiaoMiao Reader, Bubble or Blucon Nightrider. These NFC to Bluetooth bridges can link to specific open-source apps to receive the glucose values on your phone, after which they can be sent to AndroidAPS.</span>

By utilizing open-source sensor apps, you can receive sensor readings and seamlessly transmit them to the AndroidAPS app, allowing for effective diabetes management through the automated insulin delivery system.

### ***3.2 Linking Insulin Pump to AndroidAPS App***

When using the AndroidAPS app, you will have the option to link it to your insulin pump. Upon launching the app, you will be prompted to select the type of pump you are using. You can also change this setting later through the configurator.

If you have chosen the Omnipod DASH as your pump type, you will see a dedicated DASH tab at the top of the app interface.

- In this tab, you can access information about your Omnipod DASH pump and control its functions.

- The refresh button allows AndroidAPS to establish a connection with the Omnipod and retrieve its status. This can be helpful in disabling certain Omnipod alarms.

- Under the pump management section, you will find four options specific to the Omnipod DASH:

  - Activate Pod: This guides you through the steps of filling a pod with insulin, inserting it, and starting its operation.

  - Deactivate Pod: This allows you to deactivate an active pod.

  - Play Test Beep: This option controls the auditory alerts on the Omnipod DASH.

  - Pod History: Here you can access the history of your Omnipod DASH pods.

- In certain situations, a third button may appear in the DASH tab. This can be the "Resume Delivery" button or the "Silence Alert" button, depending on the circumstance. The "Resume Delivery" button can restore insulin delivery after a profile change, while the "Silence Alert" button silences alarms related to pod expiration or low insulin reservoir. The appearance of these buttons provides specific options for addressing pump-related issues.

<!-- -->

- These buttons are intuitive and serve as replacements for the functions performed by the Omnipod's <span class="mark">"Personal Diabetes Manager" or</span> PDM. Although the PDM is not needed if you are using AndroidAPS, it is recommended to keep it as a backup device.

For users of other insulin pumps, the app interface will display different options corresponding to the specific pump type. Each pump type will have its own dedicated tab at the top. The available options and settings may vary, depending on the pump model.

These settings ensure that you can effectively manage and control insulin delivery through your linked pump using the AndroidAPS app.

### ***3.3 Creating a Nightscout Website***

- Nightscout is not a platform to log into but a website that you build or have built, which may involve some additional costs.

- A Nightscout account consists of a website URL (name) and a password to access the website.

- Nightscout accounts are created as individual user accounts. There is no Nightscout platform specifically for healthcare providers.

- Nightscout enables real-time tracking of your sensor and insulin data, allowing you to share it with your loved ones or healthcare provider. Additionally, Nightsc<span class="mark">out allows for generating reports from your AndroidAPS automated insulin deliver</span>y system.

- Nightscout is more than just a website for AndroidAPS data; it can connect to various devices.

- Nightscout acts as a central hub, receiving data from sensors and distributing it to multiple devices such as mobile phones, smartwatches, computers, and other monitoring devices. It provides options to access and display glucose information, including through smartwatches, desktop widgets, wall-mounted devices, and integration with voice assistants like Alexa.

- There are multiple ways to create a Nightscout website.

- Nightscout is open-source software. You can find all information on github.nightscout.io.

- You can set it up yourself using step-by-step plans available online. Or there are firms that offer Nightscout setup services, such as <span class="mark">T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u, Nightscout-easy and Opensource.clinic.</span>

- <span class="mark">Nightscout and its associated services are not FDA approved, except for T1Pals' service. There is no approval from European authorities, so its use is at your own risk. Nightscout appea</span>rs to be GDPR and HIPAA compliant but does not claim official compliance due to the absence of auditors.

- It is crucial to handle sensor glycaemia data securely and protect your Nightscout URL with a password.

- If you want to share your Nightscout website with a loved one or <span class="mark">healthcare</span> providers, it is recommended to create a separate token for them.

By following these steps, you can create a Nightscout website easily and securely, allowing you to track and share your diabetes data effectively.

### ***3.4 Linking AndroidAPS App to Nightscout***

When setting up the AndroidAPS app, you will be prompted to enter your Nightscout URL and password. If you haven't done so during the initial setup, you can also enter this information later via the configurator.

Once you have entered your Nightscout credentials, you can navigate to the Nightscout tab within the AndroidAPS app. In this tab, you can see which data is being forwarded to your Nightscout website.

Linking AndroidAPS to Nightscout allows you to seamlessly transmit your diabetes data to your Nightscout website, where it can be accessed and monitored in real-time. This provides you, your loved ones, and your healthcare provider with valuable insights into your diabetes management.

### ***3.5 Linking AndroidAPS App to Smartwatch***

When it comes to linking the AndroidAPS app to a smartwatch, there are several options available:

- If you have a smartwatch running the Wear operating system, you can not only view your AndroidAPS data on the watch but also perform actions such as giving a bolus or setting a temporary target value. You can find information on which watches have been tested and how to set them up in the AndroidAPS documentation.

- Another option is to forward the sensor data from xDrip+ to your smartwatch. This allows you to view your glucose data on the watch, but you won't have the ability to control your insulin pump or give commands to it. Different types of smartwatches may have specific options for integrating with xDrip+, you can find m<span class="mark">ore information on the xDrip documentation</span>

<span class="mark">In this chapter, we explored the different connection</span>s available in AndroidAPS. From CGM sensors to insulin pumps and Nightscout, these links enable seamless communication for effective diabetes management. By establishing these connections, users can fully leverage the capabilities of AndroidAPS and take control of their diabetes.

## **<u>4. How AndroidAPS works</u>**

Welcome to this video on the functionality of AndroidAPS.

Controlling your insulin delivery AndroidAPS is operated through the AndroidAPS app on your Android mobile phone. To fully utilize its functionalities, users must first complete 10 objectives.

The app offers four different operating modes: Closed Loop or Auto Mode, Open Loop and Low Glucose Suspend. Loop can also be disabled, which results in a sort of Manual Mode. In AID or Auto Mode, AndroidAPS automatically adjusts insulin delivery every 5 minutes based on real-time sensor glucose readings. In Open Loop, the suggestions for adjusting basal insulin have to be manually confirmed.

In this video, we will delve into the functionality of the AndroidAPS app in general, how to complete the 10 objectives, and then explore how you can use the AndroidAPS app in both Auto Mode and Manual Mode.

### ***4.1 AndroidAPS app***

When you open the AndroidAPS app, you will be greeted by the home screen, which typically opens on the overview tab. Let's go through the different sections of the home screen from A to H:

- In the top-left corner, you'll find a hamburger menu where you can access various settings and options.

- Next to the hamburger menu, you'll see the tabs for different sections of the app.

- On the far right, there is a menu with three dots that provides access to advanced settings, treatments, history, setup wizard, statistics, and app version information.

- In section B of the AndroidAPS app's home screen, you will find the profile and target boxes:

  - The profile box is located on t<span class="mark">he left sid</span>e. It displays your current profile name or the number of basal insulin units, depending on your setup.

    - Tapping on the profile box allows you to see your profile details, and a long press hold on the profile box allows you to switch profiles or adjust the percentage of your current profile.

    - Adjusting the percentage in your profile not only affects your basal insulin, but also adjusts your carbohydrate ratio and insulin sensitivity factor.

  - The target box is located on the right side. It displays your current target value or target range for glucose levels.

    - Pressing the target box allows you to set a temporary target value, which can be used to modulate your insulin delivery.

    - You can also activate preset temporary targets for specific situations like Eating Soon, Activity, or Hypo.

    - If the autosens function is enabled and it is allowed to adjust the target value, the target value button will turn green to indicate adjustments in the target value.

- The sensor glycaemia section displays your current glucose readings. The color of the readings indicates whether they are within the target range or not.

- Red and yellow triangles indicate sensor data import issues.

  - A red triangle indicates a critical issue where duplicate sensor values are being received, such as from both xDrip and Nightscout. This must be resolved before the closed-loop functionality can be re-enabled.

  - A yellow triangle is a warning signifying that some sensor values are missing. This can occur when using a Libre sensor in combination with other sensor-related problems. Unless it occurs alongside other significant issues, this warning can generally be ignored.

- The Loop status indicator on the right represents the current operating mode of the automated insulin delivery system. Here are the different statuses and their colors. Tapping the Loop status icon allows you to manually change the <span class="mark">mode if needed.</span>

- <span class="mark">The next section shows insulin on board, carbohydrates on board, carbohydrates requested, basal insulin rate, and autosens status.</span>

- <span class="mark">Tapping on the values provides more detailed information about the breakdown of insulin and carbs on board.</span>

  - <span class="mark">Note that the Insulin on Board (IOB) value is divided into basal and bolus insulin. The basal insulin on board can be negative if the algorithm has reduced the preset basal insulin rate. If you frequently have negative insulin on board, it may indicate that your basal insulin rate is set too high and may need adjustment.</span>

  - <span class="mark">The Autosens icon shows arrows if it's active and a cross if it's inactive. When enabled, the percentage adjustments for basal insulin rate and insulin sensitivity are displayed below the icon. When Dynamic Sensitivity is selected, it will also show current ISF adjustments.</span>

- The next section displays status icons related to your insulin pump and glucose sensor, such as time since last infusion set or Pod change, insulin units remaining, and sensor age.

- The CGM graph shows your glucose levels over time, with the green zone indicating the target range.

- The scale of the <span class="mark">graph and additional graph options can be adjusted using the arrow at the top left and right.</span>

- <span class="mark">The yellowline represents insulin activity, and blue triangles indicate microboluses.</span>

- <span class="mark">The next sections display additional user selectable graphs, such as absolute insulin, insulin on board, carbohydrates on board, deviations, and sensitivity.</span>

- <span class="mark">You can choose which graphs to see via the arrow in the top right of the sensor graph.</span>

- <span class="mark">The action buttons in the final section allow you to perform various actions related to insulin and carbohydrates.</span>

  - <span class="mark">The insulin action button enables manual bolus delivery or registering a bolus administered with an insulin pen.</span>

<!-- -->

- <span class="mark">The carbohydrate action button allows you to enter carbs without bolusing. With duration you can optionally indicate the absorption speed of those carbohydrates. 1 hour for fast sugars, 2 ho</span>urs for medium absorption and 3 hours for something like pizza.

- The Bolus Calculator or Bolus Wizard button calculates an insulin bolus based on carb count and current glucose level.

  - You have the option to administer only a percentage of the calculated bolus and choose whether to consider the glycemic trend or not.

  - You can view the detailed calculation and see what factors the Bolus Wizard takes into account.

  - Under carb time, you can indicate if you plan to eat the carbohydrates later or if you have already eaten. You can set a reminder alarm for the planned eating time.

  - In the advanced overview settings, there is a Super Bolus function. When enabled, this option appears in the Bolus Wizard. It combines the planned basal insulin for the next 2 hours with the bolus at mealtime. During the next 2 hours, no basal insulin will be delivered. The goal is to provide more insulin in a shorter time to minimize post-meal hyperglycemia. However, caution should be exercised as it can increase the risk of hypoglycemia.

In addition to the home screen, there are other tabs available in the app, including Actions, Insulin model, your pump screen, Loop, APS Mode, Profile, Automation, NSClient, and your BG source. These tabs provide access to specific information and functionalities related to AndroidAPS. You can choose which tabs are shown here via the configurator in the hamburger menu.

By navigating through these tabs an<span class="mark">d sections, you can effectively manage your diabetes using the AndroidAPS app. Via the tree-dot Treatments menu option, you can monitor AndroidAPS’s treatments and actions in more detail.</span>

### ***4.2 Completing the 10 Objectives***

To use AndroidAPS in Closed Loop or Auto Mode, y<span class="mark">ou are required to co</span>mplete 10 objectives. These objectives help you familiarize yourself with the app and gradually transition into automated insulin delivery operation.

It typically takes about 2 months to complete all the goals.

Going through these goals helps you learn about the AndroidAPS algorithm and gradually optimize your settings. It requires patience and a willingness to experiment and learn from the online community. It's important to make use of this initial period to fine-tune your basal insulin, carbohydrate ratio, and insulin sensitivity factor.

Once you have completed the objectives and optimized your settings, you will have a more stable automated insulin delivery system that requires fewer adjustments. It's an involved process initially, but it offers the potential for improved diabetes management without the constant need for manual intervention.

<span class="mark">Note that it is of the utmost importance for users to do regular backup exports of the AndroidAPS settings through the app maintenance menu or automation and store a copy of recent settings exports in a safe place. The export file does not only contain all settings but also the Objectives required to run in automated mode. In case of emergencies the export file is the only way to restore AndroidAPS and continue normal operation.</span>

### ***4.3 Closed-Loop or Auto Mode***

#### ***Starting Auto mode***

In the AndroidAPS app, you can activate Auto Mode by clicking on the Loop icon on the home screen. However, before enabling Auto M<span class="mark">ode, it's important to ensure that the pump and sensor are properly paired and that all required objectives have been completed.</span>

Once auto mode is active, you will see the mode indicator on the home screen turn green, indicating that the system is making automated adjustments to basal insulin. You can also track these adjustments on the home screen. If you want to check the calculation behind the adjustments, you can go to the Loop or OpenAPS tab.

#### ***Use a preset Temp Target*** 

In AndroidAPS, you can access preset temporary targets by pressing on the target box in the app. This allows you to choose from options such as "Eating Soon," "Activity," or "Hypo." These preset targets can be adjusted according to your individual needs and preferences.

#### ***Adjusting parameters***

In AndroidAPS, you have the flexibility to change your insulin profiles by either holding the profile box on the home screen or accessing the Profile tab. Here you can modify various parameters such as duration of insulin action, carb ratio, insulin sensitivity factor, basal insulin rate and target value.

To switch profiles or adjust the insulin delivery percentage, simply go to the Profile tab in the home screen.

- When changing the percentage in your profile, remember that it affects not only basal insulin but also your carbohydrate ratio and insulin sensitivity.

To modify your target value, you can click on the target box. Here, you have the option to set your target value for a specific duration.

The configurator in the menu provides additional customization options. You can choose the type of algorithm, namely OpenAPS AMA or OpenAPS SMB, configure specific settings for the Super Micro Boluses, enable Autosens and or Unannounced Meal functions, and more.

Moreover, AndroidAPS allows you to set up specific automations based on various conditions such as glucose readings, insulin delivery, insulin on board, carbs on board, location, and other apps. This allows for personalized and dynamic control of your diabetes management.

#### ***Giving an insulin bolus***

For meal boluses, you have several options:

- The bolus wizard button calculates the insulin dose based on the number of carbohydrates you plan to eat.

- The insulin button allows you to directly enter the number of units of insulin you want to deliver.

- The carbohydrates button enables you to enter the number of grams of carbohydrates, which the algorithm will consider in its calculations.

#### ***Suspending insulin***

If you need to temporarily stop the insulin delivery, you can click on the Loop icon in the home screen. From there, you can choose the option to "Disconnect Pump" for a duration ranging from 30 minutes to 3 hours. This will temporarily suspend the insulin delivery from the pump.

### ***4.4 Manual mode***

In certain situations, it may be necessary to switch to manual mode in AndroidAPS, such as when the automatic insulin delivery does not meet the current insulin needs (for example, during illness). Disabling Loop Mode can be done easily by using the Loop button on the home screen.

In manual mode, AndroidAPS operates similarly to auto mode:

- You can adjust the basal insulin rate, carbohydrate ratio, insulin sensitivity, and duration of insulin action in the profile settings.

- You can set a temporary basal rate by long pressing the profile button and making the necessary adjustments.

- You can administer a bolus manually using the insulin action button or use the bolus wizard action button if you prefer to use the bolus calculator.

In conclusion, using the AndroidAPS app requires completing specific objectives, transitioning from open-loop to Automated Insulin Delivery, and understanding how to work in both auto mode and manual mode. While it may seem daunting to adjust the system yourself, it is important to remember that you are not alone in this journey.

The AndroidAPS community is there to support you every step of the way. So, have confidence, seek help when needed, and refer to the extensive documentation as you work towards achieving optimal glycemic control with AndroidAPS.

## **<u>5. Creating and interpreting reports</u>**

In this video, we will explore the process of creating and interpreting reports in Nightscout, which is used in conjunction with AndroidAPS.

Previous videos have covered the steps to create a Nightscout website and connect your AndroidAPS app to Nightscout for data transmission every 5 minutes.

Now, we will delve into the features and functionality of the Nightscout interface and reports, helping you understand and leverage the valuable information they provide for managing your diabetes.

### ***5.1 Nightscout Interface***

In the Nightscout interface, the website is typically black and can be customized based on your preferences. Here are the different sections of a Nightscout website:

1.  The title bar displays the name of your site on the left and includes buttons on the right, such as the menu button with various settings options. You may also find edit and audio icons, which are rarely used. Depending on your authentication status, you will also see a plus sign, where you can log treatments.

2.  System information: The system information section shows the current information of all systems connected to Nightscout. It may include gray boxes or plugins, providing additional details when hovered over. In Nightscout we call these pills.

3.  User and treatment information: The user and treatment information section displays information about you and your treatments. You'll find pills or abbreviations that will be explained further in the settings section.

4.  Basal insulin: The basal insulin section shows your basal insulin release.

5.  Sensor glucose and treatments: The sensor glucose and treatments section displays your sensor glucose readings, carbohydrate and/or insulin treatments, as well as predictions from AndroidAPS..

6.  Data history: This data history section shows the last 48 hours of data.

In Nightscout, you can access various settings through the hamburger menu at the top. Here's an overview of the available options:

- Reports: Allows you to generate reports.

- Profile and Nutrition: Vi<span class="mark">a Profile and Food Editor you can change settings, although the settings are not used by AndroidAPS.</span>

- Admin Tools enable you to create access tokens for sharing data with healthcare providers or family members.

- Account settings: Account settings provide options to adjust units, time format, language, and more. You can also customize the appearance of your Nightscout account, including the display of plugins or pills. Additionally, this section explains the abbreviations used in the interface.

- Saving settings: Changes can be saved if you enter your API password. Below that, you can see the authentification status.

By exploring these settings and making appropriate adjustments, you can personalize your Nightscout experience to suit your needs.

### ***5.2 Types of reports***

When using AndroidAPS, you can access reports through your Nightscout website via the menu in the top right.

Some of the key reports you can access include:

- Day to day Reports: These shows how the algorithm adjusts basal insulin and provides insights into microbolus delivery.

<!-- -->

- Distribution Report: This report displays Time in Range, Time Below Range, and estimated HbA1c. The Coefficient of Variation can be calculated by dividing the standard deviation by the mean glucose level and multiplying it by 100.

<!-- -->

- The Percentile Chart Report offers an Ambulatory Glucose Profile-like picture to analyze glucose trends.

- The Profiles Report allows you to review and record insulin settings, such as insulin duration, carbohydrate ratio, insulin sensitivity, basal insulin rate, and target value.

- And the Loopalyzer Report provides visualizations of average basal adjustments over a 24-hour period within a specified time frame. This can help identify patterns and trends in basal insulin adjustments made by the algorithm.

Alternatively, reports from Nightscout can be visualized using the Nightscout Reporter software. This free web-based platform provides a more user-friendly interface and allows you to select the desired reports, set the time period, and generate a PDF document to forward to your healthcare provider. Interesting reports available include analysis, profiles, glucose percentile chart, and daily reports.

There are three ways to discuss these reports with your healthcare provider:

1.  You can provide your healthcare provider with your Nightscout URL and a secure token that you have created. This allows them to access and view the reports directly.

2.  While you can't directly generate a PDF from Nightscout, you can save the reports as PDF files. Simply open the desired report, press "Ctrl+P" (or Command+P on Mac), and select "Save as PDF" as the printer option. This will create a PDF file that you can save and email to your healthcare provider if needed.

3.  Another option is to use Nightscout Reporter to create more visually appealing reports that can be easily forwarded to your healthcare provider.

By effectively utilizing Nightscout and Nightscout Reporter, you can provide your healthcare provider with comprehensive reports that highlight the performance and trends of your diabetes management with AndroidAPS.

### ***5.3 Interpreting reports***

In AndroidAPS, the main parameters that can be adjusted are the target value, basal insulin rate, carbohydrate ratio and insulin sensitivity.

This can be done within the Profile tab in the AndroidAPS app if you tap on one of the subtabs.

It is important to follow a structured approach when interpreting reports and making adjustments. Here is a detailed guide:

1\. Assess Glycemic Information:

- Check on the Distribution report if treatment goals, particularly Time in Range and Time Below Range, are being met over the past 2 to 4 weeks. Following international guidelines, time in range should be above 70% and time below range should be below 4%.

- If you have access to the Analysis report of Nightscout Reporter, take note of the frequency of meal bolusing, which you would expect to be on average 3 times per day.

2\. Optimize AID Settings:

- Analyze the Ambulatory Glucose Profile to identify trends of hypo- or hyperglycemia. If you spot trends, try to find out on the Daily reports, if these are related to meal boluses.

- For trends related to meal boluses: assess factors such as timing, carbohydrate counting, and consider adjusting the carbohydrate ratio.

  - If postprandial hyperglycemia is an issue, also consider using the Eating Soon target before meals.

  - You can also explore the option of faster-acting insulins like Fiasp or Lyumjev.

<!-- -->

- For trends after manual correction boluses or after hyperglycemia: change the insulin sensitivity or duration of insulin action, to adjust the aggressiveness of the algorithm.

- You can also control the aggressiveness of the AndroidAPS algorithm's insulin delivery by adjusting the max basal and max IOB settings.

  - Lowering these limits can help prevent excessive insulin administration, especially in cases of frequent hypoglycemia.

  - On the other hand, if the max IOB setting is restricting the system's ability to correct high blood glucose levels effectively, it may need to be increased. This should be done with caution.

- For trends outside of meals or boluses: you can adjust the Target Value per time block or change the basal insulin rate from 1 hour before and during the corresponding period with 10-20%.

It's also important to explore possible correlations with missed boluses, exercise, alcohol or hypoglycemia.

In AndroidAPS, it is important to ensure that the basal insulin rate is appropriately set. If you notice a consistent pattern of increasing or decreasing basal insulin during a specific period of the day that can not be explained by SMB or manual bolusing, for example in th<span class="mark">e Day to day Reports, the aim</span> is to adjust the basal insulin rate at that time to align with the algorithm's requirements.

If you are an experienced AndroidAPS user, and you seek additional profile tuning, you can consider using Autotune. This is a web tool for calculating optimal settings for basal insulin, insulin sensitivity, and carbohydrate ratio. By entering your Nightscout URL into the Autotune website, you can let the program calculate your ideal settings based on your sensor glucose results. If Autotune suggests significant deviations from your current settings, you may consider adjusting them.

- Note that Autotune requires fixed values for carbohydrate ratio and insulin sensitivity.

- And that Autotune may not work if Nightscout has additional security measures like a token.

3\. Guide Behavioral Recommendations: Ensure proper usage of the closed-loop system in the Daily reports:

- Sensor wear time, activation of Auto Mode, and adherence to pre-meal bolusing can best be checked in the Day to day reports.

- You can also check the correct use of temporary targets and profile switches, and evaluate for overcorrection of hypo- or hyperglycemia.

- Also ask about the appropriateness of alarm settings and reminders, to avoid alarm fatigue.

4\. Review Pump Settings and Emergency Plans:

- Document your pump settings, including at least your basal insulin rate, carbohydrate ratio, insulin sensitivity and target value.

- Establish an emergency plan and always have insulin pens with you, in case of a pump malfunction or other emergencies.

When making changes, it is recommended to modify one setting at a time. After implementing a change, closely monitor the effects over a period of 1-2 weeks. It is possible that your initial adjustment may not yield the desired results, in which case, you can explore alternative options and make further adjustments accordingly. The key is to iterate and fine-tune your settings based on the feedback provided by your Nightscout reports, ensuring optimal performance of your AndroidAPS system.

By following these guidelines and considering the provided details, you can effectively interpret reports, optimize insulin settings, and ensure proper usage of AndroidAPS for improved diabetes management.

## **<u>6. Managing special situations</u>**

In this video, we will provide specific tips and recommendations for managing common situations in diabetes management while using the AndroidAPS automated insulin delivery system.

These tips are in addition to the general guidelines covered in the general AID systems module.

We will cover strategies for handling hypo- and hyperglycemia, dealing with high-fat meals, managing diabetes during physical activities, coping with illness, alcohol and planning for travel.

By implementing these tips, you can optimize your glucose control and enhance your overall diabetes management with AndroidAPS.

### ***6.1 Hypoglycemia***

With an automated insulin delivery system like AndroidAPS, you often require fewer carbohydrates to treat hypoglycemia compared to traditional diabetes management, especially when you have little insulin on board.

AndroidAPS provides the ability to see your insulin on board on the home screen, and you can also view an additional insulin activity graph. If you haven't had insulin in the last few hours, a smaller dose of carbohydrates is usually sufficient.

It is recommended to enter the carbohydrates you consume to treat or prevent hypoglycemia into the algorithm using the carbohydrate button. This allows the algorithm to consider the carbohydrates when calculating insulin requirements, and you will typically only receive insulin as needed.

To prevent further episodes of hypoglycemia, you can make adjustments in the AndroidAPS system to reduce insulin delivery. This can be done by using the temporary target value for activity or for hypoglycemia. The default setting of the activity temp target is 140 mg/dl or 7.8 mmol/l for 90 minutes, and the default setting for the hypo temp target is 160 mg/dL or 8.9 mmol/L for 60 minutes.

You can also choose to reduce the percentage of insulin release in your profile. Remember that if you reduce your profile by for example 50%, this will not only reduce your basal insulin rate, but also make your carb ratio and insulin <span class="mark">sensitivity</span> 50% less aggressive.

It's important to note that in some cases, the algorithm may increase basal insulin even when you are experiencing low glucose levels. This could be necessary if the predicted glucose level is higher than the target value. In the majority of cases, AndroidAPS is accurate regarding its predictions.

### ***6.2 Hyperglycemia***

In the case of mild hyperglycemia, it is generally recommended to trust AndroidAPS and allow the system to work on its own. However, you can consider giving a manual correction bolus using the bolus calculator without entering carbohydrates.

To address hyperglycemia, you also have the option to increase the percentage of insulin release in your profile or temporarily set a lower target value.

In situations of prolonged and severe hyperglycemia, it is important to consider the possibility of an infusion set problem. When in doubt, it is advisable to change your infusion set or Pod. Remember the phrase "If in doubt, change it out."

It is essential to ensure that you have enough equipment on hand to carry out all necessary substitutions and replacements. Being prepared with the required supplies is crucial for effectively managing hyperglycemia and maintaining the proper functioning of your AndroidAPS system.

### ***6.3 High-fat meals***

When consuming a high-fat meal while using AndroidAPS, there are several recommended approaches you can consider:

1\. Enter only 70% of the carbohydrate portion, allowing the algorithm to account for the remaining portion. An alternative approach is to set a higher temporary profile of for example 130% for 2 to 3 hours to take into account the slowly absorbed part of the meal.

2\. Another option is to administer your bolus in two parts. For example, you can deliver 50% of the insulin dose before the meal and the remaining 50% 2 hours later. In AndroidAPS, you have the flexibility to schedule boluses for the future using the Bolus Calculator or the Carb button. If you use the bolus calculator, you can specify the time at which you want your meal bolus to be delivered. Alternatively, you can use the carb button to enter the carbs and the time you want to algorithm to take these carbs into account. If you use the Carbs button, AndroidAPS will only administer insulin if necessary.

3\. Additionally, when entering carbohydrates via the carbohydrate button, you have the option to select a longer absorption time for these carbs. If you use this extended carb feature, you will be able to see future carbs in the overview tab.

It's important to note that individual responses to high-fat meals can vary, so it may be helpful to experiment with different approaches and monitor your glucose levels closely to find the most effective strategy for managing your blood sugar levels during such meals.

### ***6.4 Exercise***

When participating in physical activities with AndroidAPS, it is advisable to implement the following strategies:

1\. Set a higher target value during exercise to mitigate the risk of hypoglycemia. As discussed in the general module on automated insulin delivery systems, reducing the meal bolus can also be beneficial.

2\. In AndroidAPS, you have the option to disable SMB (supermicrobolus) when using a higher target value. This allows for more conservative insulin delivery during exercise.

3\. Alternatively, you can create a dedicated basal profile in AndroidAPS specifically designed for exercise. This profile should incorporate lower basal insulin rates and increased insulin sensitivity to accommodate the impact of physical activity.

4\. Take advantage of the integration capabilities of AndroidAPS by connecting your dedicated sensor app to a smartwatch or cycling computer. This allows for convenient monitoring of glucose levels and trend data during exercise

It's important to remember that these recommendations serve as a starting point, and adjustments may be necessary based on individual responses to exercise. Regular monitoring, self-observation, and collaboration with healthcare professionals will aid in refining insulin dosing and achieving optimal blood sugar management during physical activity with AndroidAPS.

### ***6.5 Illness***

During illness, it is generally recommended to keep AndroidAPS in Auto Mode or Loop Mode unless advised otherwise by your healthcare provider.

Please refer to the guidelines about illness discussed in the general module on automated insulin delivery systems.

### ***6.6 Alcohol*** 

When consuming alcohol while using AndroidAPS, it is important to take certain precautions to prevent hypoglycemia. Here are some recommendations:

You can adjust your target value to a higher level than usual, or set a lower % of your insulin profile, when consuming alcohol. This can help prevent the system from administering excessive insulin in response to any increase in glucose levels.

It is worth noting that simply consuming more carbohydrates is not an effective strategy to prevent hypoglycemia, as the automated insulin delivery system will compensate for any rise in glucose levels by increasing insulin delivery.

Always monitor your glucose levels closely when consuming alcohol and be prepared to make further adjustments as needed.

### ***6.7 Travel*** 

When traveling with AndroidAPS, it's important to be prepared and consider some specific factors. Here are some considerations for travel:

1\. Ensure that you have enough diabetes supplies, including insulin, infusion sets, sensors, test strips, and backup devices, to last throughout your trip. It's always better to be prepared with extra supplies in case of any unexpected situations.

2\. When traveling by air, you may need to make some adjustments. Keep in mind the following:

- The Bluetooth function of your mobile phone, pump, and transmitter can typically remain on during the flight. However, some airlines require passengers to switch their mobile phones to airplane mode during take-off and landing. When the phone is in airplane mode, the pump will switch to the preset basal insulin rate. Don’t forget to turn off airplane mode once it is allowed, to resume the normal operation of the app and the closed-loop system.

- During the flight, the Wi-Fi and 4G connectivity of your SIM card will not be available. This should not affect the operation of the AndroidAPS app as it will continue to function perfectly via Bluetooth. However, the data will not be forwarded to Nightscout until you regain a stable internet connection.

- The AndroidAPS app usually detects time zone changes automatically and adjusts the time accordingly, although depending on pump and CGM setup, jumps in time can lead to problems.

- It's a good practice to double-check the time settings in the app after arriving at your destination to ensure accurate data recording.

Remember to always comply with airline regulations and guidelines regarding the use of electronic devices, and inform the airline staff that you are wearing a medical device such as an insulin pump.

By taking necessary precautions and planning ahead, you can enjoy your travel while ensuring the continued functionality of your AndroidAPS system.

In this chapter, we covered how to manage special situations such as hypo/hyperglycemia, high-fat meals, exercise, illness, alcohol and travel with AndroidAPS. We provided recommendations and strategies to address these situations effectively. You’ve got this! Remember, individual responses may vary, so experimentation and monitoring are key. Seeking support from the AndroidAPS community and healthcare providers is also valuable.

By leveraging AndroidAPS and connecting with peers, individuals can navigate these situations and improve their diabetes management effectively.

## **<u>7. Case report</u>**

In this final chapter of the AndroidAPS course, we will explore the practical use of Nightscout, a powerful tool for monitoring and analyzing diabetes data. We will showcase real-life examples of Nightscout in action, highlighting the benefits of AndroidAPS and its impact on glucose control. By understanding these examples, you will gain insights into how AndroidAPS and Nightscout work together to optimize insulin delivery and improve quality of life for individuals with diabetes.

[<u>https://www.youtube.com/watch?v=Rapie09b61M</u>](https://www.youtube.com/watch?v=Rapie09b61M) – 1 min

Here you can see a timelapse video of a Nightscout account to demonstrate the dynamic nature of AndroidAPS and Nightscout. Initially, the system operates with temporary basals, such as in OpenAPS AMA mode. As time progresses, the system transitions to using supermicroboluses. This timelapse vividly displays the ever-changing predictions and adjustments made by the algorithm to maintain glucose levels within the target range.

- In this Nightscout example, you can observe an individual experiencing regular hypoglycemia after meal boluses. This pattern may indicate a carbohydrate ratio that is too low. Increasing the carbohydrate ratio can help prevent post-meal hypoglycemia and ensure better glucose control.

<!-- -->

- Examining another Nightscout example, you may notice hypoglycemia occurring by noon, despite the algorithm regularly lowering the basal insulin between 8 am and 12 pm. If this pattern consistently repeats, it suggests that the morning basal insulin rate might be set too high. Adjusting the morning basal rate can help prevent excessive insulin delivery during that period and reduce the risk of hypoglycemia.

<!-- -->

- In this Nightscout example, you can observe a borderline low glucose level in the morning, accompanied by negative insulin on board. These indications suggest that the basal insulin rate overnight might be too high. Lowering the overnight basal rate can help maintain stable glucose levels upon waking and avoid hypoglycemia.

<!-- -->

- If you notice significant glucose fluctuations after automatic temporary basal adjustments, it may indicate that the automatic insulin delivery is responding too aggressively. This could be due to an overly aggressive or low insulin sensitivity setting. Modifying the sensitivity settings can help mitigate glucose fluctuations and optimize glucose control.

Congratulations on completing the full AndroidAPS module! By integrating AndroidAPS with Nightscout, you can effectively monitor and manage your diabetes using real-time data. Nightscout allows you to visualize the impact of AndroidAPS on your glucose control and identify areas for improvement. The examples presented highlight the importance of fine-tuning AndroidAPS settings, such as carbohydrate ratios, basal insulin rates, and insulin sensitivity, to achieve optimal glucose management and enhance your quality of life.

Remember, always consult with your healthcare provider before making any adjustments to your diabetes management regimen. AndroidAPS, in combination with Nightscout, empowers you to take control of your diabetes and make informed decisions to achieve your treatment goals.
