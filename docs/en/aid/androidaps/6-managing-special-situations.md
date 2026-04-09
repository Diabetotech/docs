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

