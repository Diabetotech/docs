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

