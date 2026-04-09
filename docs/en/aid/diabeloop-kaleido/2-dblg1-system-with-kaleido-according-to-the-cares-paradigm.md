<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/Wuy01i711aI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. DBLG1 System with Kaleido according to the CARES Paradigm</u>**

Welcome to this video where we will explore the DBLG1 System with <span class="mark">Kaleido based on the CARES paradigm.</span>

We will discuss how the DBLG1 algorithm calculates and adjusts the automated insulin delivery, when it reverts back to manual mode, specific education tips and sensor issues, and how the system shares its data. After that we will go over the official indications and software updates of the DBLG1 system with Kaleido.

### ***<span class="mark">2.1 How the DBLG1 system works based on the CARES paradigm</span>***

#### ***1.1 Calculate***

<span class="mark">The DBLG1 System with Kaleido op</span>erates on a unique calculation algorithm that takes into account various factors to determine insulin delivery. Here are the key aspects of the calculation process:

- The system delivers microboluses of insulin every 5 minutes based on current and predicted glucose levels, and the total daily insulin dose to maintain glucose levels as close as possible to the defined target glucose. It also takes into account announced physical activity and meals.

- During initialization, half of the pre-set total daily dose of insulin is allocated to basal insulin, while the other half is allocated to meal insulin.

- <span class="mark">The target glucose range can be adjusted between 100 and 130 mg/dL or</span> 5.6 and 7.2 mmol/l.

- Autocorrection boluses are administered every 5 minutes, when the glucose level is predicted to exceed 180 mg/dL or 10 mmol/L. If the glucose level is predicted to fall below the hypoglycemic threshold, basal insulin is paused, and rescue carbohydrates are recommended.

- The system incorporates both short-term and long-term learning algorithms. The short-term self-learning algorithm analyzes trends over the past 2-3 days, while the long-term algorithm considers trends over the past 3-6 weeks.

The DBLG1 algorithm also features a unique meal management algorithm, which involves recommendations for administering the meal bolus. Here are the key aspects of the meal management algorithm:

- In some cases, the system divides the meal bolus into two administrations based on sensor glucose levels and the meal type.

- In the case of normal glucose levels, the first part of the bolus is given immediately, and the second part is administered after 30 minutes. For high-fat meals, the second part is administered after 60 minutes. The post meal management algorithm might additionally deliver correction micro-boluses between the first and second parts of the meal bolus. In this case, the second part of the bolus is subsequently modified to take into account the active insulin.

- If hypoglycemia is predicted, the second part of the bolus can be delayed up to 90 minutes or can even b<span class="mark">e canceled.</span>

- <span class="mark">If hyperglycemia is detected at the start</span> of the meal, the system can give the bolus as a single administration. Additional autocorrection boluses may be given if necessary.

- After a meal, basal insulin can be replaced by autocorrection boluses, which typically last for a maximum of 3 hours.

#### ***1.2 Adjust***

With the DBLG1 algorithm, you have the ability to adjust various parameters to personalize your insulin delivery. Here are the parameters you can modify:

1.  The target glucose level. The default value is set at 110 mg/dl or 6.1 mmol/l, but you can adjust it between 100 and 130 mg/dl or 5.6 and 7.2 mmol/l.

2.  The aggressiveness at meals determines the amount of insulin delivered at mealtimes. The default value is 100%, and you can set it between 50% and 200%. Adjusting this parameter allows you to have more or less insulin for meals, similar to adjusting the carbohydrate ratio in other <span class="mark">automated insulin delivery</span> systems.

3.  The aggressiveness in hyperglycemia controls the response to high glucose levels. The default value is 100%, and it can be adjusted between 43% and 186%. Increasing or decreasing this parameter affects the insulin doses of the autocorrection boluses.

4.  The aggressiveness in normoglycemia modulates basal insulin delivery during normal glucose levels. The default value is 100%, and you can adjust it between 59% and 147%. Modifying this parameter makes the modulation of basal insulin more or less aggressive.

5.  The hypoglycemia threshold determines the glucose level at which the system recommends rescue carbohydrates and adjusts basal insulin delivery. The default value is 70 mg/dl or 3.9 mmol/l, but it can be set between 60 and 85 mg/dl or 3.3 and 4.7 mmol/l.

6.  The Total Daily Dose of insulin is the main setting to fine tune the overall glucose management by the system. It should be reduced in case of too frequent rescue carbs recommendations and hypoglycemia, or on the contrary, it may be increased in case of too frequent hyperglycemia (postprandial or fasting). Note that while you can modify the total daily dose of insulin between 8 and 90 units per day, frequent adjustments may affect the auto l<span class="mark">earning of the system, so it is recommended to avoid frequent changes, and make adjustments in steps of no more than 10%.</span>

In addition to the parameters mentioned earlier, the DBLG1 algorithm offers additional modes to accommodate specific situations:

- Physical Activity Mode is designed for physical exercise, such as sports, intense gardening, house work etcetera. A physical activity can be declared for the current day or the following day. When enabled, the target glucose level, as well as the hypoglycemia threshold, are adjusted to better suit the demands of the activities. The target value and thresholds are increased by 70 mg/dl or 3.9 mmol/l. If necessary, earlier rescue carbohydrates will be recommended. The duration of this mode is adjustable within a 0 to 24 hour range. After the activity, the DBLG1 algorithm will slowly lower the target value back to the normal target glucose level. The type and intensity of the physical activity impacts the degree of aggressiveness reduction around physical activity.

<!-- -->

- <span class="mark">Zen Mode can be activated if you want to avoid hypoglycemia, and be bothered as little as possible with the need to eat rescue carbohydrates. During Zen mode, the target value can be increased by 10-40 mg/dl or 0.6-2.2 mmol/l. The duration of Zen mode can be adjusted wi</span>thin a 1-8 hour range <span class="mark">via the settings.</span>

When starting with the DBLG1 system, you need to enter your total insulin dose, weight, and the average number of grams of carbohydrates you consume per standard meal. You may enter three standard meals for breakfast, lunch, and dinner. These parameters can be edited later if needed.

However, there are certain parameters that the algorithm calculates and cannot be adjusted.

- These include the basal insulin rate, carbohydrate ratio, insulin sensitivity and duration of insulin action.

- During the set-up, you <span class="mark">are required to enter a safety basal profile in the DBLG handset, but this is only used in manual mode or open-loop.</span>

- <span class="mark">The hyperglycemia threshold is fixed at 180 mg/dl or 10 mmol/l. In the DBLG1 handset you are able to change the hyperglycemia threshold, but this does not impact the algorithm. It will only affect when the glucose value on your DBLG1 handset is displayed in orange.</span>

#### ***1.3 Revert***

If the connection to the insulin pump or <span class="mark">glucose sensor</span> is lost for more than 30 minutes, including during the sensor warmup period, the DBLG1 system will return to manual mode. You can check the connection status in the system status screen, and if it shows "signal loss” or “waiting pump”, it means the connection is not established.

While theoretically, the connection should be maintained within a 2-meter range or 3.3 feet, it is recommended to keep your handset as close to the sensor and Kaleido pump as possible for reliable communication.

In manual mode, there is no suspend-for-low function available. The basal insulin delivered in manual mode is referred to as the basal safety profile, and you have the ability to adjust it directly from your handset. Additionally, if your handset is still connected to the pump, you can use it to give an insulin bolus or set a temporary basal rate.

Once the connection to the <span class="mark">pump or sensor is reestablished, the system will automatically resume auto mode or closed-loop mode.</span>

#### ***1.4 Educate***

When starting an <span class="mark">automated insulin delivery</span> system like DBLG1, there are general education points applicable to all <span class="mark">automated insulin delivery</span> systems, as well as specific education points specific to the DBLG1 system. Let's go over them:

For general education in <span class="mark">automated insulin delivery</span> systems, please refer to the generic module. These include the following key points:

- Use fewer carbohydrates to correct hypoglycemia.

- Consider an infusion set problem if blood glucose levels remain high for an extended period without an apparent reason. "If in doubt, change it out."

- Trust the <span class="mark">automated insulin delivery</span> system and let it do its work.

- Give a meal bolus approximately 15 minutes before eating.

- Activate the <span class="mark">Activity mo</span>de 1 to 2 hours prior to engaging in exercise.

- Temporarily stop insulin delivery if you disconnect the pump for more than 15 minutes.

- Respond to system alarms promptly.

- Disable automatic updates on your mobile phone to avoid disruptions.

- Seek peer support for additional guidance and insights.

Now let's focus on the specific education points for the DBLG1 system:

- During initialization, half of the total daily dose of insulin is allocated to basal insulin, while the other half is allocated to meal insulin. If this allocation doesn't align well with your actual insulin needs, it's recommended to adjust the total daily dose of insulin accordingly. If you typically use a smaller am<span class="mark">ount of bolus insulin compared to basal insulin (e.g., 30/70% if you follow a low-carb diet), increasing the total daily dose of insulin by 5-10% at initialization can be beneficial. On the other hand, if you typically use a larger amount of bolus insulin compared to basal insulin (e.g., 70/30% if you consume a higher amount of carbohydrates), reducing the total daily dose of insulin by 5-10% at initialization can be considered.</span>

- <span class="mark">It’s advised to enter your meals at least 15 minutes before the meal, although the actual insulin bolus will only be given 6 min</span>utes before the meal. Don’t forget to validate the insulin bolus at that time, or the insulin will not be given.

- Keep the handset close to your body or within arms reach, and charge it overnight.

- Have rescue carbohydrates on hand and be familiar with the amount of carbohydrates they contain (e.g., 5, 10, or 15 grams) for quick and easy administration.

- Adjusting the total daily insulin dose is the most effective parameter for fine-tuning the DBLG1 algorithm. However, avoid making frequent adjustments as it resets the autolearning.

- You can enter carbohydrate information either through the bolus calculator or as rescue carbs. If you choose the latter option, the system will not provide additional insulin for the carbohydrates consumed.

- You can enter past and future meals and physical activities. Even if you forgot to enter a meal or activity, it's still beneficial to input it later for autolearning by the algorithm.

- <span class="mark">The DBLG1 system offers two additional modes: Zen mode, which reduces the risk of hypoglycemia, and Confidential mode, which temporarily prevents data transmission to YourLoops.</span>

- <span class="mark">After a meal and during autocorrect boluses, the basal insulin level decreases, as per the unique behavior of the DBLG1 algorithm.</span>

- <span class="mark">In the YourLoops reports, the total daily insulin dose is divided into a percentage for basal insulin and a</span> percentage for bolus insulin. The autocorrection boluses are added to the bolus percentage, which means a relatively higher bolus percentage is frequently observed in the reports.

By familiarizing yourself with these education points, you will have a better understanding of how to optimize the DBLG1 system and manage your diabetes effectively.

#### ***1.5 Sensor*** 

The DBLG1 system utilizes the Dexcom G6 sensor for glucose monitoring. If your sensor does not show a number or arrow, or your readings do not match your symptoms, use your finger prick meter to make diabetes treatment decisions. When in doubt, get your meter out.

If there is a significant discrepancy between the sensor glucose reading and the <span class="mark">finger prick</span> measurement, you may consider calibrating the Dexcom G6 sensor via the DBLG1 handset. However, it is important to calibrate only when your glucose levels have been stable and within the target range for the past few minutes. You do not have to calibrate, but you can.

When you start with a new sensor, you will not receive any G6 readings or alarm/alerts until the 2-hour warmup period has finished. During this time, use your finger prick meter to make treatment decisions.

#### ***1.6 Share***

With the DBLG1 system, you have the option to share insulin and glucose data with your healthcare provider and family members via YourLoops and Dexcom Follow. Real-time monitoring of glucose values is possible for both parties.

The DBLG1 handset remains continuously connected to YourLoops through its built-in SIM card, eliminating the need for manual data retrieval. Data transmission from the handset to the YourLoops cloud occurs every 5 minutes via 4G provided by the SIM card. If your cellular connection is poor or nonexistent (for example, if you are at sea, in a mountainous area or in a region without any connection), the transmission of data to YourLoops may be impacted.

If 4G coverage is unavailable, such as during a flight, the data will not be forwarded. However, you can still view your data via the History tab as it stores 3 months of data, and use the handset as it only requires Bluetooth for connection to the pump and sensor.

It's important to note that the SIM card only offers coverage within specified countries in Europe, so if you travel outside the enlisted countries, the SIM card will not be connected and the data will not be transferred to YourLoops. If the SIM card has been disconnected for an extended period, it may not immediately reboot. It will reboot on the first day of the following month when back in SIM range.

Healthcare providers can access YourLoops through their respective login credentials, while family members can remotely monitor glucose levels using the Dexcom Follow app, provided that the user has also installed the Dexcom G6 app.

The DBLG1 system provides a unique feature called Confidential Mode, allowing users to opt out of sharing their data for a specific period of 3 hours, 1 day or 3 days. It's important to note that when Confidential Mode is activated, the data will not be recoverable in YourLoops afterwards.

### ***2.2 Indications***

The DBLG1 algorithm is CE-labeled for use in individuals with type 1 diabetes who are at least 18 years old. It is suitable for individuals with a daily insulin requirement ranging from 8 to 90 units per day. The system is only compatible with NovoRapid and Humalog 100 U/ml rapid-acting insulin, and is intended for single-patient use.

Please note that the DBLG1 system does not have an FDA label at this time, and it is not approved for use in pregnancy and during dialysis.

### ***2.3 Software updates***

You can check for software updates via the handset menu. If an update is available, tap download.

- If your DBLG1 handset has enough battery, you can choose to install the update right away or leave the update time to the default time set by the system.

<!-- -->

- You can change the update time, but it can not be set at night.

- During an update, ensure you have enough battery power and DO NOT switch off your DBLG1. Your device may restart automatically after the installation has finished.

In conclusion, the DBLG1 system with Kaleido integrates various components to provide automated insulin delivery. With its advanced algorithm and adjustable parameters, the DBLG1 system provides flexibility to meet individual needs. If you have any questions or concerns, you can seek assistance from your healthcare provider, the dedicated Facebook group or contact ViCentra’s customer service. Remember, you are not alone in your diabetes management journey, and there are resources available to support you every step of the way.

