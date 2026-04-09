<u>Diabetes Technology Expert Program</u>

# **iLet System**

## **<u>1. Introduction</u>**

Welcome t<span class="mark">o this module on the iLet Bionic Pancreas System, or simply the iLet System, one of the easiest automated insulin delivery systems for people with type 1 diabetes. In this comprehensive guide, we will delve into the intricacies of the iLet System technology, providing you with a step-by-step understanding of its functionality and how to effectively manage your diabetes with this system.</span>

<span class="mark">The iLet System seamlessly integrates three key components:</span>

- <span class="mark">the FreeStyle Libre 3 Plus, Dexcom G6 or G7 sensor,</span>

- <span class="mark">the iLet Alternate Controller Enabled Pump, also known as the iLet Device,</span>

- <span class="mark">and the integrated iLet Dosing Decision Software.</span>

<span class="mark">The system allows you to monitor and manage your glucose levels effectively. By utilizing the Beta Bionics platform, you can access detailed reports and analyze your data. Additionally, the iLet Mobile app enables convenient access to your glucose information on your mobile phone. For caregivers, the Bionic Circle app provides the ability to track the user's progress.</span>

It’s important to note that the iLet System is only approved and available in the US. At the moment of making this course, there is no definite timeline for when this technology will be available elsewhere in the world.

In our general module on automated insulin delivery systems, you have already gained valuable knowledge on comparing automated insulin delivery systems using the CARES reference framework, selecting the right system for your needs, interpreting reports, and managing specific situations with automated insulin delivery systems in general.

In the upcoming videos, we will provide detailed insights specifically tailored to the iLet System, ensuring you receive a comprehensive and structured education on getting started. It's essential to remember that these videos do not provide medical advice. Always consult with your healthcare provider before making any adjustments to your therapy.

The videos were produced by <span class="mark">Dr. Inge Van Boxelaer, the founder of Diabetotech and an endocrinologist at the St-Lucas hospital in Ghent, Belgium. The content was reviewed by Dr. Diana Isaacs, the Director of Education in Training in Diabetes Technology at Cleveland Clinic Diabetes Center and Chelsea Lugone, a certified diabetes educator living with type 1 diabetes in the US who has firsthand experience with the iLet Device. Their expertise and personal experiences ensure that the information presented in the videos is comprehensive and unbias</span>ed.

By the end of this video series, you will have a comprehensive understanding of:

- How the iLet System performs within the CARES paradigm,

- Practical implementation of the iLet System,

- Creating and interpreting reports using the Beta Bionics readout software,

- And managing specific situations such as hypo- and hyperglycemia, high-fat meals, exercise, illness, alcohol and travel.

Whether you are a caregiver seeking to better support individuals using the iLet System or a user of the system looking for a successful start, these videos will equip you with the knowledge, tips, and tricks to enhance your experience.

Congratulations on taking the first step towards a better understanding of the iLet System. We wish you the best of luck as you embark on this educational journey, empowering you to live a fulfilling life with improved diabetes management.

## **<u>2. The iLet System according to the C<span class="mark">ARES Paradigm</span></u>**

Welcome to this lesson about the iLet System according to the CARES paradigm.

The iLet System offers a range of features that make it an effective automated insulin delivery system for diabetes management. Let's explore some key points to further understand this system within the CARES paradigm, its indications and its software updates.

### ***1 The iLet System according to the CARES paradigm***

#### ***1.1 Calculate***

The iLet System automates all insulin delivery and it only needs the user’s weight to begin.

<span class="mark">The iLet System operates through three concurrent algorithms:</span>

<span class="mark">1. The basal algorithm determines basal insulin do</span>ses every 5 minutes based on the previous 24-hour glucose profile, and the current glucose level, and trend. It also takes into account trends in insulin needs of the last 7 days. The basal insulin can suspend if glucose levels are low or rapidly decreasing.

<span class="mark">2. The bolus algorithm provides insulin that is required above and beyond basal insulin. It calculates bolus insulin doses every 5 minutes using a model-predictive control algorithm, considering the previous 24-hour glucose profile, current glucose level and trend, and insulin on board. This algorithm responds to glucose levels above the target.</span>

<span class="mark">3. The meal dose algorithm aut</span>omatically determines meal doses in response to user meal announcements, considering meal type (which can be breakfast, lunch or dinner) and meal size (which can be “usual for me”, “more”, or “less”).

Both basal and bolus algorithms aim to steer the glucose level to the current glucose target, for which there are 3 options: “usual” that aims for a glucose target of 120 mg/dl or 6.7 mmol/l, “lower” that aims for a glucose target of 110 mg/dl or 6.1 mmol/l, or “higher” that aims for a glucose target of 130 mg/dl or 7.2 mmol/l. A secondary target can also be set for specific time periods.

The system adapts its insulin dosing aggressiveness based on glucose levels and trends. Basal and bolus dosing adapt continuously, while meal doses adapt separately for breakfast, lunch, and dinner.

Meal doses are adjusted over time, based on the 4-hour postprandial bolus insulin needs of past meal announcements. They aim to provide 75% of required insulin for a meal. <span class="mark">Any additional insulin needed for the meal will be provided by the corrections controller. The insulin dose for a “Less” meal is 50% of that for a “Usual for me” meal, and the insulin dose for a “More” meal is 150% of that for a “Usual for me” meal.</span>

Here's an example of how the iLet System adjusts insulin doses for breakfasts each day. As postprandial hyperglycemia occurs, the system gradually increases insulin amounts for the same meal type, leading to improved control of postprandial glucose levels.

<span class="mark">Meal dose adaptation only occurs if no meal announcements occurred within the 4-hour adaptation window and if the glucose levels at the beginning and at the end of this 4-hour window are less than 80 mg/dl or 4.4 mmol/l above the glucose target.</span>

After a sensor glucose value drops below 60 mg/dl, the bolus algorithm suspends insulin dosing for hyperglycemia correction for one hour, with reduced doses for 30 minutes to prevent overcorrection.

The iLet System learns and adapts to individual insulin needs over time, starting conservatively based on entered weight. Users are encouraged to follow their usual routines initially for optimal adaptation, and <span class="mark">space their meals at least 4 hours apart to facilitate learning of meal doses by the system.</span>

#### ***1.2 Adjust*** 

<span class="mark">Users have limited control over the iLet System settings, being able to adjust only the target glucose value and weight.</span>

<span class="mark">For glucose targets, users can choose between "Usual," "Lower," and "Higher" options, with the flexibility to set up to two targets per day to tailor their diabetes management.</span>

<span class="mark">Upon initializing your iLet Device, you set your weight. Every three months, the iLet will remind you to confirm your body weight. It's recommended to do so if your weight fluctuates by more than 15%. The maximum weight that can be set is 255 kg or 561 pounds.</span>

<span class="mark">Users cannot program any insulin settings such as basal rate, carb ratio, insulin sensitivity, duration of insulin action, or hypoglycemia threshold. The system automates all insulin delivery, requiring users only to announce meals. A hands-off approach is necessary when using this system and some patience is needed as the iLet adapts to changing insulin needs and identifies effective meal bolus doses.</span>

#### ***1.3 Revert***

<span class="mark">In the event of a lost connection with the glucose sensor, the iLet switches from CGM Mode to BG-Run Mode. In this mode, basal insulin dosing persists based on previously learned rates from the last 7 days, requiring manual entry of fingerstick BG or blood glucose values.</span>

- <span class="mark">If a low BG value is entered, the iLet suspends basal insulin for an hour, or until you enter a BG that is not low. Conversely, if a high BG value is entered, the iLet may administer correction insulin.</span>

<!-- -->

- <span class="mark">Meal announcements can still be made, with the iLet delivering insulin for meal type and size based on adapted doses from previous sensor data.</span>

<span class="mark">If BG-run Mode is initiated within 7 days of starting the iLet, alarms will ask for a BG entry every hour until CGM is restored. Failure to enter a BG within 1 hour will lead to insulin delivery cessation. After 48 consecutive hours without a glucose sensor, BG-run mode ends, and all insulin will stop.</span>

<span class="mark">If BG-run Mode begins more than 7 days after iLet initiation, alarms request BG entry every 4 hours until CGM is restored. Failure to comply within 4 hours results in insulin delivery cessation. After 72 consecutive hours without CGM, BG-run mode ends, stopping all insulin delivery.</span>

<span class="mark">Insulin delivery resumes once glucose sensor values are received again. If sensor access is unavailable, users must switch back to insulin pens with basal and bolus insulin.</span>

<span class="mark">Users should strive to prevent insulin cessation by ensuring continuous access to glucose sensors, promptly acknowledging alarms, and entering BG values during BG-Run Mode. Having a backup plan is crucial in case replacement sensors are unavailable. If possible, it is preferable to transition to the backup insulin therapy plan in the morning or the evening, at a usual time for taking long-acting insulin.</span>

<span class="mark">Since the iLet lacks programmed pump settings like basal rates or carb ratios, manual mode is unavailable. However, recent insulin dose information, including total daily insulin, total daily basal dose and meal doses, is provided for reference and calculation if users need to switch to insulin injections for any reason.</span>

#### ***1.4 Educate***

When starting with an automated insulin delivery system like the iLet System, it's important to be aware of both general education points and specific education points for this system.

The general education points covered were:

- Use fewer carbohydrates to correct hypoglycemia.

- Consider infusion set problems if bl<span class="mark">ood glucose levels remain high for an extended period without a clear reason. “If in doubt, change it out.”</span>

- <span class="mark">Trusting the AID system and avoid unnecessary manual interventions.</span>

- <span class="mark">Timing meal boluses 15 minutes before meals.</span>

- <span class="mark">Utilizing Exercise Mode 1 to 2 hours before activity - although this is not relevant for the iLet System</span>

- <span class="mark">Pausing insulin delivery if the pump is disconnected for more than 15 minutes.</span>

- Responding to alarms.

- Being mindful of automatic updates on mobile phones.

- Seeking peer support for guidance and sharing experiences.

Now let's look at the specific education points for the iLet System:

- The iLet System is engineered to handle all insulin delivery automatically, requiring users only to announce meals. It doesn't incorporate any user-adjustable pump settings or bolus options. A hands-off approach is essential, allowing the system to adapt to changing insulin needs and optimize meal bolus doses.

- <span class="mark">Do NOT use meal announcements to try to get more insulin from the iLet outside of meal times or</span> correct a high glucose level. This will disrupt the system's adaptation and increase the chance of low glucose levels.

- Meal announcements should occur just before eating, indicating the meal's carbohydrate content relative to the user's typical intake ("Usual for Me," "More," or "Less"). Most meals should be announced as "Usual for Me." Each meal type (breakfast, lunch, dinner) is adapted to independently, meaning the "Usual" carb amount may differ between meals.

- Meal type selection is based on user preference, with meal size determined by carbohydrate content relative to typical intake. Snacks with similar carbohydrate content to meals should be announced as meals.

- In the initial week of using the iLet, spacing meals at least 4 hours apart aids the system in learning meal doses effectively.

- Always carry a blood glucose meter to manually enter fingerstick values if the sensor fails unexpectedly.

- Ensure spare sensors are readily available, as failure to replace a sensor within 2-3 days results in insulin delivery cessation. Users should have a backup plan in such instances.

- Every 3 months the system will ask you to update your weight, this is only necessary if there is more than 15% difference.

- Access to the Beta Bionics Cloud is limited to the US; users traveling abroad won't be able to upload reports.

By adhering to these educational guidelines, users can optimize the benefits of the iLet System for enhanced diabetes management. Trust in the system's continuous learning capabilities, and exercise patience during the adaptation period.

#### ***1.5 Sensor***

The accuracy of sensor values is vital for the proper functioning of an automated insulin delivery system. If you have doubts about the accuracy of your sensor reading, it is recommended to perform a finger prick blood glucose test for confirma<span class="mark">tion. Be sure to wash your hands before doing a finger prick. If</span> there is a significant discrepancy between the sensor glucose reading and your finger prick result, you may consider calibrating your Dexcom sensor. You can do this via the Dexcom app or via the iLet Device itself.

However, it is important to perform calibration only when your blood glucose levels have been stable and within your target range for the past few minutes. Calibrating under these conditions helps ensure more accurate sensor readings and enhances the overall performance of the automated insulin delivery system.

<span class="mark">The FreeStyle Libre 3 Plus sensors are factory calibrated and manual calibration is not required.</span>

#### ***1.6 Share***

<span class="mark">With the iLet System, it is possible to share insulin and glucose data with healthcare providers and family members. The iLet Mobile app automatically synchronizes to the iLet Cloud, and real-time monitoring for up to 10 family members and caregivers is available via the Bionic Circle app.</span>

Healthcare providers can access the data by logging into the Beta Bionics Portal with their personal account.

Family <span class="mark">members can also remotely monitor glucose levels through the Dexcom Follow app, provided that the user also has the Dexcom G6 or G7 app installed.</span>

<span class="mark">This ability to share</span> data facilitates effective communication and collaboration between users, healthcare providers, and family members, leading to better diabetes management outcomes.

### ***2. Indications***

The iLet Bionic pancreas, which consists of the iLet ACE Pump and the iLet Dosing Decision Software has an FDA-label for use in people with type 1 diabetes who are at least 6 years old. It requires a prescription. The iLet System is designed for single patient use, it is not to be shared.

<span class="mark">The system is approved for use with Novolog and Humalog 100 U/ml and with Fiasp PumpCarts.</span>

<span class="mark">As of the creation of this lesson, the iLet Bionic Pancreas has not obtained approval in Europe.</span>

Please note that the iLet bionic pancreas is not approved for use in pregnancy or in individuals requiring dialysis.

### ***3. Software updates***

Updates to the iLet software can be downloaded to the iLet Mobile smartphone app and delivered to the iLet via a Bluetooth link.

The software version of the iLet Device can be checked via the Settings, when you select “About iLet”.

In conclusion, the iLet System offers a powerful automated insulin delivery system. With the right expectations and clear education, users can experience improved glycemic control and gain more confidence in managing their diabetes.

<span class="mark">It's important to remember that starting a closed-loop system, like the iLet System, will take some time to get used to. Don't get dis</span>couraged if there are initial challenges or setbacks. With time and perseverance, you'll become more proficient in utilizing the system effectively.

## **<u>3. Linking components together</u>**

Welcome to this instructional video, where we will explore the process of linking the various components of the iLet System. Let's dive in!

The iLet Systems operates using the following steps:

- <span class="mark">Every 5 minutes, the FreeStyle Libre 3 Plus, Dexcom G6 or G7 sensor measures your glucose value.</span>

- <span class="mark">The sensor transmits these glucose values to the iLet Device. The algorithm on the pump calculates the appropriate insulin dose and automatically adjusts the insulin delivery accordingly.</span>

- <span class="mark">To access the pump data, you can install the iLet Mobile app on your phone, which will automatically synchronize the data to the Beta Bionics Cloud.</span>

- <span class="mark">The Bionic Circle app allows family and caregivers to follow the user in real-time.</span>

- <span class="mark">Additionally, by installi</span>ng the Dexcom G6 or G7 app on your phone, you can conveniently send your data to Dexcom Clarity and Dexcom Share. This allows caregivers to monitor your gl<span class="mark">ycemia</span> using the Dexcom Follow app.

In this video, we will guide you through the process of establishing these crucial links. Specifically, we will cover:

1.  <span class="mark">How to link the glucose sensor to the iLet Device.</span>

2.  <span class="mark">How to link the iLet Mobile App to the iLet Device.</span>

3.  <span class="mark">How to make a Beta Bionics account and upload the sensor and pump data.</span>

4.  <span class="mark">and how to use the Bionic Circle app i</span>n combination with the iLet System.

So, let's get started and learn how to establish these important connections within the iLet system.

### ***3.1 Li<span class="mark">nking the glucose se</span>nsor to the iLet Device***

With the iLet Device, linking the sensor to the pump is a straightforward process. Here's how you can do it:

1\. Navigate to the <span class="mark">menu on the pump and select “Dexcom sensor”. You can easily switch the sensor type by tapping Switch Sensor.</span>

<span class="mark">2. Choose "Start sensor" and follow the prompts.</span>

- <span class="mark">For FreeStyle Libre 3 Plus sensors, you’ll need to scan the sensor with the iLet Mobile app to start it. Please ensure that your iLet Device is paired with the iLet Mobile App first.</span>

- <span class="mark">For Dexcom G6 sensors you’ll need to link the Dexcom G6 transmitter using the transmitter serial number,</span> and start the Dexcom G6 sensor with the sensor pairing code.

- Dexcom G7 sensors are started the moment you place them on your body. You’ll just need to enter the pairing code to connect them to your iLet Device.

<span class="mark">If you use a Dexcom sensor, you can also connect your sensor to a Dexcom app on your phone. If yo</span>u have already started the sensor with the Dexcom G6 app on your phone, the iLet Device will pick up the sensordata without asking f<span class="mark">or a sensor code. The Dexcom G7 requires the code to be entered.</span>

By following these steps, you can successfully link the Dexcom sensor to the iLet Device.

### ***3.2 How to link the iLet Mobile App to the iLet Device***

The iLet Mobile app is used to synchronize your data to the Beta Bionics Cloud and enables software updates for your iLet Device.

Here are the steps to pair your iLet Device with an iLet Mobile app on your phone:

- First download the iLet Mobile app on your compatible smartphone. You can scan the QR-code on the Beta Bionics website or search for iLet Mobile app in your Google Play Store or Apple App Store. It’s important to note that the app is only available in the US an<span class="mark">d for compatible devices and software versions. A list of compatible devices and software versions can be found on the Beta Bionics website or by calling Beta Bionics Customer Support.</span>

- <span class="mark">Upon opening the app, you'll be asked to create a Beta Bionics User Portal account. Follow the instructions and enter the verification c</span>ode sent to your email.

- Next, tap to connect to your iLet Device within the app. You'll be prompted to enter a pairing code from your iLet Device, and the app will guide you through the process.

Once successfully paired, you'll see your linked iLet Device in your iLet Mobile app. From the<span class="mark">re, you can see the iLet’s insulin and battery level, your current glucose and trend, and the past hours of CGM and insulin dosing.</span> The app also automatically uploads data to the Beta Bionics Cloud if you have your app open in the background.

Clinics can use a phone or tablet with an installed iLet Mobile app for users without compatible phones to upload the glucose and insulin data and to do software updates.

### ***3.3 How to make a Beta Bionics Account and upload the sensor and pump data.***

<span class="mark">As a user, you will be asked to create a personal Beta Bionics User Portal account during the initialisation of the iLet Mobile app, as we just explained.</span>

<span class="mark">As a healthcare provider or caregiver, you can create a personal account on the Beta Bionics User Portal using your computer. Afterward, you can start following a user by inputting the iLet Device's serial number, the user's first and last name, your relationship to the user, and the user's birthdate. This will allow you to get access to the patient's iLet data and reports.</span>

<span class="mark">It's crucial to note that healthcare providers and caregivers can only view the iLet Device’s data if the user has downloaded and linked the iLet Mobile App, and keeps the app open for the data to go to the cloud.</span>

### ***3.4 How to us<span class="mark">e the Bionic Circle app in co</span>mbination with the iLet System***

When using the iLet Syst<span class="mark">em, you have the option to invite family or caregivers to follow your glucose levels, alerts and more in real-time.</span>

- <span class="mark">Go to My Circle on the iLet Mobile app and tap the Invite button to add someone.</span>

<span class="mark">Fill in the caregivers name and email and tap Send Invitation.</span>

<span class="mark">Via the My Circle menu on your iLet Mobile app, you can view your current sharing status, pause sharing and manage followers.</span>

Creating links between the different components of iLet System is an important step in setting up the automated insulin delivery system. While the process is generally smooth and straightforward, there might be instances where you encounter challenges or face technical difficulties. Remember, you don't have to go through this alone. If you experience any issues or need assistance, don't hesitate to reach out for support. You can join the iLet users Facebook support group or connect with other individuals who are using the system. Together, you can share experiences, seek guidance, and find solutions. Remember, resilience comes from seeking help and building a supportive community around you.

## **<u>4. How the iLet System works</u>**

Welcome to this video, where we will discuss how the iLet System works.

The iLet System has 2 main modes of operation: CGM Mode and BG-Run Mode. Unlike oth<span class="mark">er closed-loop systems, the iLet does not have any programmed pump settings such as basal rates, carb ratios or correction factors. Therefore there is no manual mode on the iLet System.</span>

- <span class="mark">CGM Mode is the standard Automode as we know it from other closed-loop systems.</span>

- <span class="mark">BG-Run Mode is a more cautious way to automate insulin delivery, when sensor values are not available. It is based on blood glucose values from finger pricks.</span>

Let's explore both modes in detail.

### ***4.1 CGM Mode or Automode***

#### ***Starting the iLet***

<span class="mark">The first time you use your iLet Device, it will ask you</span>

- <span class="mark">to set the time and date,</span>

- <span class="mark">connect your glucose sensor,</span>

- <span class="mark">and place your insulin cartridge and infusion set.</span>

<span class="mark">The final step is to enter your weight, after which you can turn on the insulin delivery and “Go Bionic”.</span>

<span class="mark">On the homescreen you will see that the circles around the glucose status are turning, representing the 3 algorithms that are automating your insulin delivery.</span>

To monitor your current insulin delivery, you can press the glucose status on the homescreen. The graph screen shows your glucose graph and the amount of insulin that has been delivered in the past hours.

Transitioning from a Multiple Daily Injection regimen with long-acting insulin may lead <span class="mark">to insulin stacking. Users could reduce the last dose of long-acting insulin if necessary. Or they can consider using the higher target while the long acting insulin is still onboard and change to the usual target once it is no longer active in the body.</span>

The initial target for most users should be set as “Usual”.

- Wait at least a week after starting iLet before lowering the target to "Lower."

- Starting with the “Higher” target may be appropriate when the user is transitioning from MDI using a long-acting insulin or if the user has a very high mean glucose at baseline. In these cases, the target can usually be set at Usual after 2 weeks.

- Starting with the “Higher” target may also be appropriate if the user has a very low insulin total daily dose for their body weight such as less than 0.3 units per kg per day. In this case, the “Higher” target may be appropriate for the long term if their mean glucose is meeting the goal for therapy.

#### ***Using <span class="mark">SecondaryTarget </span>***

<span class="mark">You can specify a secundary target via the therapy settings. The default Secundary CGM Target setting is Usual. Turn on the Secondary CGM Target using the On/Off toggle. This Secondary CGM Target allows you to set a different target for sleep periods, or other times of the day. You can customize the start and end times.</span>

#### ***Adjusting Parameters***

In the iLet System, you cannot change the basal rate, carb ratio, or correction factor settings. The only thing you can change is the CGM tar<span class="mark">get, Secondary CGM target and the body weight. These can all be changed via therapy settings.</span>

#### ***Giving an insulin bolus***

<span class="mark">With the iLet Device you cannot deliver a manual insulin bolus or enter the amount of grams of carbs you are going to eat. You can only announce a meal. This can be done via the Meal Announcement button on the homescreen. You’ll first need to select the type of meal you are going to eat, and then the size of the meal and indicate if the amount of carbohydrate being consumed is more or less or usual for you.</span>

<span class="mark">You can find more information about this in the module about the iLet Device.</span>

#### ***<span class="mark">Suspending insulin</span>***

<span class="mark">The iLet has a pause insulin feature located in the main menu. The user can pause the insulin when disconnected to prevent the loss of insulin. The user can set a timer (up to 2 hours) to remind the user to restart insulin delivery. The insulin will not automatically resume. The user must manually restart the insulin.</span>

### ***4.2 BG-Run Mode***

In the events where CGM stops providing glucose data to the iLet, BG-run mode will serve to continue a safe level of insulin delivery, but it will not provide the same level of glucose control as the iLet with CGM. BG-run use should be temporary and always for the shortest duration possible with the goal to resume CGM-guided iLet insulin dosing as soon as possible.

In BG-run mode:

- Your iLet will continue dosing basal insulin based on its previously learned basal rates as long as you enter the required fingerstick BG values.

- If you enter a BG that is <span class="mark">equal to or lower then 80 mg/dl or 4.4 mmol/l the iLet will shut off your basal insulin for an hour, or until you enter a BG</span> that is not low.

<!-- -->

- If you enter a BG that is high, the iLet may give you correction insulin.

- You can continue to announce meals and the iLet will give you insulin for your meal type and size.

However, you will need to enter BG values frequently or all insulin dosing will be stopped. If you are unable to enter the required blood glucose values, you will need to switch to your backup therapy plan as prescribed by your healthcare provider.

Throughout your journey with the iLet System, it's important to maintain open communication with your healthcare provider for personalized guidance and support. They will be able to help you adjust to your iLet System and make necessary changes based on your individual needs. It may require some trial and error during your consultations to find the optimal way to deal with the iLet System. By working together with your healthcare provider and staying resilient, you can effectively manage your diabetes and lead a fulfilling life. Stay empowered and prioritize your health and well-being.

## **5. Creating and interpreting reports**

Welcome to this video on report creation and interpretation for the iLet System.

We will discuss how to do this with the Beta Bionics Reports.

In this video, we will explore the different types of reports available in the Beta Bionics User Portal, discuss how to interpret them, and provide some important do's and don'ts.

### ***5.1 Types of Reports***

iLet Bionic Reports can be found when you log into the Beta Bionics User Portal.

- Users who have a paired iLet Mobile app on their phone, will sync their data to the B<span class="mark">eta Bionics cloud as long as the app is open in the background.</span>

- Clinics can use a phone or tablet with an installed iLet Mobile app to upload data of users without compatible phones.

- Worst case scena<span class="mark">rio, some data is acce</span>ssible on the iLet Device itself. The Time in Range for different time periods is available on the therapy summary, and you can find the average insulin dosages via the Insulin History.

The iLet Bionic Report or HCP report consists of only 3 pages. The first page contains the summary information, and the other 2 pages contain the daily plots from the last 14 days or from whatever period you select on page 1.

We’ll go over the main components of the iLet Bionic Report:

- The Glucose and Insulin Overview presents an AGP-like profile illustrating glucose and insulin trends over the selected time period, enabling visualization of hypo and hyperglycemic patterns.

- The Glucose Target Settings display the glucose target settings for a 24-hour period, which is essential to record in the user's electronic health record. Although it is recommended to start with a Usual target throughout the day, many users transition to a Usual target overnight, and a Lower target during the day. This is of course dependent on your insulin needs and should be discussed with your healthcare provider.

- The Time in Range division and Glucose Summary provides information on the time in range and the availability of the CGM. The glucose summary includes metrics such as GMI, average mean glucose, standard deviation, coefficient of variation, and median average glucose.

- The Average Meal Announcements shows the average amount of meal announcements in a day, and the average meal size that is announced for breakfast, lunch, and dinner.

  - <span class="mark">The majority of meals of each meal type should be announced as the “Usual” meal size.</span>

  - <span class="mark">“Less” only appears on the report if the dose for each meal type has been adapted at least once and the Less meal size has been used.</span>

- The Insulin History presents the average insulin doses administered for breakfast, lunch, and dinner, along with basal daily insulin and the total daily insulin doses.

  - The amount of insulin at meals reflects the amount the iLet System thinks that is needed for Usual meals, and it should also reflect the amount of carbs the user is eating at a typical breakfast, lunch and dinner.

  - These insulin doses are also important for establishing an emergency plan in case of pump malfunction.

  - The insulin History section also includes the entered weight, which should be updated if there's a \>15% change from the current weight.

- The Daily Views on the second page provide insights into specific patterns such as hypoglycemia, hyperglycemia, meal announcements, overtreatment of hypoglycemia, and <span class="mark">pausing</span> for exercise, aiding in comprehensive analysis and adjustment of management strategies.

### ***5.2 Interpreting Reports***

Here's a roadmap for interpreting the reports:

**1. Assess Glycemic Information:** Begin by evaluating the Time in Range and Time Below Range over the past 2-4 weeks. Ensure that treatment goals are being met, with Time in Range above 70% and Time Below Range below 4%. Adjust the CGM target or <span class="mark">Secondary C</span>GM target if needed.

- Raise the glucose target if the time below 54 mg/dl or 3 mmol/l is more than 1%, or if the user needs to consume carbs for treating or preventing hypoglycemia more than 2 times per day.

- Lower the target if the average glucose is greater than 180 mg/dl or 10 mmol/l, or if the average glucose is greater than 160 mg/dl or 8.9 mmol/l and the time below 54 mg/dl or 3 mmol/l is less than 0.5% with minimal carb consumption for hypoglycemia.

- Paradoxically, if you have a person with a trend of hypoglycemia after hyperglycemia, it might be ben<span class="mark">eficial to lower the glucose target. Using a higher target could slow down the insulin bolus response, leading to extended periods of hyperglycemia and excessive correction insulin, which can cause insulin stacking and subsequent hypoglycemia. By lowering the target and making the algorithm more responsive, you may reduce both hyperglycemia and hypoglycemia episodes.</span>

Adding a daily injection with a long-acting insulin like Lantus, Toujeo or Tresiba can be considered if the total daily insulin dose delivered by the iLet is ≥160 units daily, or if the mean glucose on the iLet over several days is \>180 mg/dl **or 10 mmol/l** and the user is consistently announcing meals, with the majority announced as Usual for me, the meal doses for all meal types have successfully adapted and the glucose target has been lowered to Lower. The goal for the recommended approach to long-acting insulin dose adjustment is to provide only a fraction of the basal insulin need. If too much long-acting insulin is added, suspension of insulin delivery by the iLet control algorithm may not be effective in preventing hypoglycemia. It’s recommended that the additional long-acting insulin dose is no more than one-half of the “Total Daily Basal” administered by the iLet.

**2. Optim<span class="mark">ize closed-loop S</span>ettings:** Analyze the glucose and insulin overview to identify trends of hypo- or hyperglycemia. Check if these trends are related to meal boluses frequency and accuracy.

- On average, there should be around 3 boluses per day for meals.

  - Some people forget to announce meals, which you can notice by unexplained higher glucose trends during the day.

  - Other people announce extra false meals for example as a response to hyperglycemia.

  - The problem is that if you try to trick the system with putting in the wrong meal announcements, it will have the opposite effect.

  - Paradoxically, people who tend to forget to announce meals might be better off with a lower target, because if you use the lower target, the algorithm will react faster to glucose rises, and the insulin will come at the right time instead of too late, causing less hypoglycemia after hyperglycemia.

  - It’s also important to check the timing of the meal announcements. Late meal announcements can lead to hypoglycemia.

- Most meal announcements should be "Usual for me."

  - Some people might announce most meals as “Less” out of fear of hypoglycemia. The problem is that the algorithm will also raise the insulin dose for a Usual meal, and the user will not be able to use the Usual meal anymore. If current doses are unsafe, it’s advised to consider a Factory Reset. This can be done via the Settings.

  - Here is an example of someone who mostly uses the Usual meal for breakfast and lunch, but for dinner he mostly uses "Less." This could be appropriate if he uses the Less meal for example for after-dinner snacks. However, it's crucial to confirm with the user whether they’re opting for "Less" due to a fear of nighttime hypoglycemia.

  - Another scenario is a very high amount of “More” meal announcements. This can be because the user was frustrated with postprandial hyperglycemia. The problem is that the insulin <span class="mark">dosage</span> for Usual meals will adapt down. Here you can just encourage the user to use more Usual for meals. After a few days, the iLet System will give more insulin for those meals.

  - Another frequent misunderstanding is the fact that people think they cannot use Usual for all meals as they eat more for dinner as for breakfast for example. It’s important to educate people on the fact that the size of the Usual meal is set independently for breakfast, lunch and dinner.

“Less” only appears on the report if the dose for each meal type has adapted at least once and the Less meal size has been used. If one or more meal announcements have not adapted, there are steps the user can take to facilitate adaptation:

- Wait at least 4 hours between meals and snacks for a few days, as this is the interval over which the meal dose algorithm adapts. If a new meal is announced more than 1 hour after, but within the 4-hour interval following a first meal announcement, it will cancel adaptation for the first meal announcement.

- Avoid meals with larger-than-usual amounts of carbohydrates for a few days to allow initial adaptation. If the sensor glucose exceeds 80 mg/dl or 4.4 mmol/l higher than the glucose target, 4 hours after the meal, the algorithm will not use that meal for adaptation.

- Avoid unannounced snacks between meals for a few days. If the sensor glucose at the time of the meal announcement exceeds 80 mg/dl or 4.4 mmol/l higher than the target, the algorithm will not use that meal for adaptation.

- Maintain consistency with the amount of carbohydrates in "Usual for me," "More," and "Less" meals.

- Accurately announce meals of the correct relative size, avoiding attempts to "trick" the iLet. Incorrectly announcing larger or smaller meals will affect subsequent meal doses.

- If more carbohydrates are consumed in a meal than initially announced, announce another meal for the difference within 30 minutes of starting to eat that additional amount. If it has been more than 30 minutes, do not announce additional carbohydrates.

- Never announce meals to treat hyperglycemia when not actually eating, as this may train the iLet to give less insulin for the next meal.

- To encourage meal doses to adapt downwards if initial weight-based doses cause hypoglycemia, avoid overtreatment within the 4-hour postprandial period. <span class="mark">The user should wait to treat hypoglycemia until receiving an alert from the iLet. Here you can see the thresholds for the hypoglycemia alert from the iLet.</span>

**3. Guide Behavioral Recommendations:** Review sensor wear duration, reaction to hypo and hyperglycemia, hypo- or hyperglycemia trends related to exercise and infusion set changes:

- Ensure the sensor wear duration is above 85%. It is normal that the sensor wear duratio<span class="mark">n is not 100%, as the sensor is not available during the warm-up period of the sensor or t</span>emporary connection loss with the pump. With the Dexcom G7 sensor it is possible to overlap sensors and prevent sensor data gaps.

- On the Daily Views you can also assess overcorrection of hypoglycemia, and check if trends in hypo- or hyperglycemia are related to exercise management.

  - If the user systematically takes too many carbs after a hypoglycemia, it will teach the system to be even more aggressive with insulin dosing.

  - Some people also try t<span class="mark">o prevent hypoglycemia by taking carbs too soon. This also will teach the system to be even more aggressive. The user should wait for an alert from the iLet indicating future or current hypoglycemia.</span>

- <span class="mark">Especially if you notice trends of hyperglycemia, you should ask the user about the timeliness of infusion set changements. I</span>f users have a lot of failed infusion sets, it’s recommended to switch to steel infusion sets.

- Verify that the alarm settings and alarm volume align with the user's needs and preferences. Make sure that the user understands how he should respond to alarms.

**4. Review Pump Settings and Emergency Plans:**

- Update weight at each check-up if there is more than 15% difference.

- Document all pump settings and establish an emergency plan based on the insulin data, including insulin pen usage, in case of a pump malfunction. Ensure access to insulin pens.

When interpreting reports with the iLet System, the primary focus lies on making sure that the system can perform optimally. The system works best with a hands-off approach, and people should trust the system. However, it's important to recognize that there is always room for improvement in the user's interaction with the pump. This includes factors such as appropriate meal announcements, <span class="mark">pausing</span> the pump during exercise, and effectively managing infusion set changes. By continuously evaluating and refining these aspects, users can further enhance their experience and outcomes with the iLet System.

In conclusion, the accurate interpretation of reports and ongoing communication with your healthcare provider are essential for maximizing the benefits of the iLet System. By effectively utilizing these tools and staying informed, you can enhance your diabetes management and lead a healthy lifestyle.

## **<u>6. Managing special situations</u>**

Welcome to this video on managing special situations with the iLet System.

In this video, we will provide specific tips for managing hypo- and hyperglycemia, high-fat meals, exercise, illness, alcohol and travel while using the iLet System. These guidelines complement the general recommendations for managing these situations while wearing an automated insulin delivery system, which can be found in the general module on automated insulin delivery systems.

### ***6.1 Hypoglycemia***

With the iLet System, you may <span class="mark">require fewer carbohydrates to treat or prevent hypoglycemia compared to when not using a closed-loop sys</span>tem, especially if you have little insulin on board.

You can get a sense of the amount of insulin that you recently received by checking the insulin curve on the graph screen. The exact insulin on board can be found in the History section under Algorithm Steps.

<span class="mark">Never announce a meal for carbohydrates used to treat a low blood glucose.</span>

<span class="mark">To prevent hypoglycemia, you have the option to temporarily pause insulin delivery. While you can pause insulin delivery or even disconnect the iLet tubing from the infusion set, this is not typically recommended, as the system will reduce and or stop insulin delivery when impending hypoglycemia is detected.</span>

### ***6.2 Hyperglycemia***

Your iLet will automatically deliver insulin in response to rising and high sensor glucose levels, to bring your glucose level safely back into range. This may take longer than you expect. Don’t use meal corrections to try to correct hyperglycemia. This will disrupt the system’s adaptation and increase the chance of hypoglycemia.

Always check to confirm that your iLet is working as it should. Change your insulin infusion site if you have any suspicion that it is not working. When in doubt, change it out!

It’s recommended to do a blood glucose finger prick test, check for ketones and give an insulin injection according to your hyperglycemia plan. Beta Bionics recommends the following Ketone Action plan:

- Check your blood glucose and ketones when you’re feeling nausea, vomiting or having diarrhea, when you think your infusion set is not working, when your sensor glucose has been above 300 mg/dl or 19.7 mmol/l for 90 minutes and when your sensor glucose is above 400 mg/dl or 22.2 mmol/l.

- If you have a moderate ketone rise, change your infusion set, drink extra fluids, and recheck your blood glucose and ketones after 90 minutes.

- If you have high ketones, disconnect the infusion set and give an insulin injection based on the instructions of your healthcare provider. Also drink extra fluids and recheck blood glucose and ketones after 90 minutes.

If an insulin injection is prescribed for elevated ketones, the iLet should be disconnected for 90 minutes because there is no way to inform the iLet control algorithm about insulin that it did not deliver. If the iLet is not disconnected for sufficient time after the insulin injection, stacking of insulin will occur and may cause severe hypoglycemia.

The recommended size of the correction dose of insulin for the ketone action plan during the pivotal trial w<span class="mark">as based on a correction factor derived from 1800 divided by the total daily insulin dose and then multiplied by 1.25.</span>

<span class="mark">To prevent infusion set issues, it's advisable to replace the infusion set promptly. Your iLet Device will alert you when it's</span> time, which is after 3 days for a teflon cannula and after 2 days for a steel cannula.

### ***6.3 High-fat meals***

In the iLet System, there is no specific way to bolus for high-fat meals. Simply announce your meal siz<span class="mark">e based on the carb content of that meal.</span>

<span class="mark">Meal announcements always deliver only 75% of the adapted dose up front and then the system will assess if any insulin is needed after the initial dose and deliver it via the corrections algorithm. For high fat meals with a delayed glycemic excursion, the system has already delivered a conservative meal dose up front and will not deliver correction insulin until the glucose trend indicates a need. Therefore an extended bolus feature is not necessary as the system is already doing this work.</span>

It is important to choose your meal size based on the amount of carbs in the meal, and not the total size of the meal or the amount of protein, fiber, or fat.

### ***6.4 Exercise***

<span class="mark">For planned exercise with an expected glucose decrease, it is recommended to change your glucose target to “Higher” 1 to 2 hours before the planned exercise. If the exercise is planned within 2 hours after a meal, enter a smaller meal amount then you are going to eat, for example “Less” instead of “Usual for me”. If required, pauze insulin delivery at least 30 minutes before the exercise.</span>

<span class="mark">For unplanned exercise, it is recommended to pauze insulin delivery at the start of exercise and eat 10 to 20 grams of carbs prior to the exercise if your sensor glucose is below 126 mg/dl or 7.0 mmol/l.</span>

<span class="mark">During exercise it is recommended to eat 3 to 20 grams of carbs if your glucose is below 126 mg/dl or 7 mmol/l, depending on your trend arrow and insulin on board. You can monitor your insulin on board via the Algorithm Steps in the History section. It might be necessary to pauze insulin delivery or lower your glucose target during exercise.</span>

<span class="mark">Ensure you can still monitor your sensor glucose and hear your sensor alerts using your sensor app on your smartphone. Keep your iLet device nearby to hear the alerts if you do not have a smartphone.</span>

<span class="mark">If you want to disconnect your iLet Device during exercise, for example during swimming or contact sports, it’s important to pause insulin delivery. Remember to reconnect to the iLet Device and resume insulin delivery once you’ve finished exercising.</span>

### ***6.5 Illness***

The iLet autonomously and continuously adjusts to the user's insulin requirements. Hence, in the majority of illness cases, there's typically no need to make any adjustments to the iLet.

During illness, hyperglycemia is often observed. Adhere to the guidelines for managing hyperglycemia in these circumstances.

If you encounter more hypoglycemia during an illness, consider temporarily raising the glucose target throughout the illness period. If this is done, the glucose target should be returned to the pre-illness setting after the user recovers.

### ***6.6 Alcohol***

Refer to the specific guidelines for managing your automated insulin delivery in relation to alcohol consumption.

### ***6.7 Travel***

When traveling with the iLet System, it's important to note that requesting an additional insulin "loaner pump" for your holiday is not an available option.

Ensure you pack an ample supply of necessary items, including supplies for your iLet Device, blood glucose measurement via sensor and finger pricks, ketone level measurement tools, and both long- and short-acting insulin in insulin pens.

When traveling across different time zones, you'll need to manually adjust the time on your iLet Device to match the local time.

During a flight, you can remain connected to your iLet as it will continue to function even if your phone is in airplane mode.

By following these tips, you can effectively manage various situations while using the iLet System and maintain optimal control over your diabetes. Remember to consult with your healthcare provider for personalized guidance and support in managing specific scenarios.

## **<u>7. Case report</u>**

Welcome to the conclusion of this module, and congratulations on completing your exploration of the iLet System! Throughout this journey, you've gained valuable insights into the features, functionalities, and best practices of this innovative hybrid automated insulin delivery system.

To delve deeper into the impact and effectiveness of the iLet System, we recommend watching an insightful YouTube video review by Justin from Diabetech and Dr. Mike Natter, who lives with type 1 diabetes and personally used the system.

Although the video runs for almost an hour, it provides a comprehensive overview of the system's strengths and limitations. Dr. Natter highlights the system's simplicity while noting its inability to manually adjust insulin delivery based on anticipated activities. <span class="mark">While the system excels for individuals with consistent routines, its effectiveness may vary for those with fluctuating schedules.</span>

To access this review, simply click on the link provided below the video:

[<u>https://www.youtube.com/watch?v=6ebLrH0CVq0</u>](https://www.youtube.com/watch?v=6ebLrH0CVq0)

We sincerely appreciate your dedication to learning about the iLet System. By arming yourself with knowledge and understanding, you're actively engaging in effective diabetes management. The iLet System holds the potential to significantly enhance your quality of life, offering greater control and peace of mind in your daily diabetes management.

Remember to always consult with your healthcare provider for personalized guidance and support in using the iLet System. By staying informed, connecting with peers, and utilizing available resources, you can confidently navigate the complexities of diabetes management and leverage the advanced features of the iLet System.

Embrace the possibilities that the iLet System presents, and empower yourself to lead a fulfilling life while effectively managing your diabetes. Together, we can positively impact the lives of individuals living with diabetes.

Keep up the excellent work, and best wishes for continued success on your diabetes journey!
