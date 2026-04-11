<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/3otVDPdKfwg" frameborder="0" allowfullscreen></iframe>
</div>

# **<u>5. Creating and interpreting reports (10.5 min)</u>**

Welcome to this video on creating and interpreting reports of DIY Loop via Nightscout.

Previous videos have covered the steps to create a Nightscout website and connect your DIY Loop app to Nightscout for data transmission every 5 minutes.

In this video, we will cover the following topics:

- What information you can find on Nightscout

- The various reports available in Nightscout

- And how to interpret these reports effectively

By the end of this video, you will have a comprehensive understanding of how to access and utilize the reports in Nightscout, empowering you to make informed decisions about your diabetes management.

## ***5.1 Nightscout Interface***

In the Nightscout interface, the website is typically black and can be customized based on your preferences. Here are the different sections of a Nightscout website:

1.  The title bar displays the name of your site on the left and includes buttons on the right, such as the menu button with various settings options. You may also find edit and audio icons, which are rarely used. Depending on your authentication status, you will also see a plus sign, where you can log treatments.

2.  The system information section shows the current information of all systems connected to Nightscout. It may include gray boxes or plugins, providing additional details when hovered over. In Nightscout we call these pills.

3.  The user and treatment information section displays information about you and your treatments. You'll find pills or abbreviations that will be explained further in the settings section.

4.  The basal insulin section shows your basal insulin release.

5.  The sensor glucose and treatments section displays your sensor glucose readings, carbohydrate and/or insulin treatments, as well as predictions from DIY Loop.

6.  This data history section shows the last 48 hours of data.

In Nightscout, you can access various settings through the hamburger menu at the top. Here's an overview of the available options:

- Reports allows you to generate reports.

- Via Profile and Food Editor you can change settings, although the settings are usually managed through the DIY Loop app rather than Nightscout.

- Admin Tools enable you to create access tokens for sharing data with healthcare providers or family members.

- Account settings provide options to adjust units, time format, language, and more. You can also customize the appearance of your Nightscout account, including the display of plugins or pills. Additionally, this section explains the abbreviations used in the interface.

- Changes can be saved if you enter your API password. Below that, you can see the authentication status.

By exploring these settings and making appropriate adjustments, you can personalize your Nightscout experience to suit your needs.

## ***5.2 Types of reports***

When using DIY Loop, you can access reports through your Nightscout website via the menu in the top right.

Some of the key reports you can access include:

- Day to day Reports: These shows how the algorithm adjusts basal insulin and provides insights into microbolus delivery.

- Distribution Report: This report displays Time in Range, Time Below Range, and estimated HbA1c. The Coefficient of Variation can be calculated by dividing the standard deviation by the mean glucose level and multiplying it by 100.

- The Percentile Chart Report offers an Ambulatory Glucose Profile-like picture to analyze glucose trends.

- The Profiles Report allows you to review and record insulin settings, such as insulin duration, carbohydrate ratio, insulin sensitivity, basal insulin rate, and target value.

- And the Loopalyzer Report provides visualizations of average basal adjustments over a 24-hour period within a specified time frame. This can help identify patterns and trends in basal insulin adjustments made by the algorithm.

Alternatively, reports from Nightscout can be visualized using the Nightscout Reporter software. This free web-based platform provides a more user-friendly interface and allows you to select the desired reports, set the time period, and generate a PDF document to forward to your healthcare provider. Interesting reports available include analysis, profiles, glucose percentile chart, and daily reports.

There are three ways to discuss these reports with your healthcare provider:

1.  You can provide your healthcare provider with your Nightscout URL and a secure token that you have created. This allows them to access and view the reports directly.

2.  While you can't directly generate a PDF from Nightscout, you can save the reports as PDF files. Simply open the desired report, press "Ctrl+P" (or Command+P on a Mac computer), and select "Save as PDF" as the printer option. This will create a PDF file that you can save and email to your healthcare provider if needed.

3.  Another option is to use Nightscout Reporter to create more visually appealing reports that can be easily forwarded to your healthcare provider.

By effectively utilizing Nightscout and Nightscout Reporter, you can provide your healthcare provider with comprehensive reports that highlight the performance and trends of your diabetes management with DIY Loop.

## ***5.3 Interpreting reports***

In DIY Loop, the main parameters that can be adjusted are the target value or Correction Range, carbohydrate ratio, basal insulin rate, and insulin sensitivity. This can be done via the Therapy Settings in the DIY Loop app.

It can be helpful to follow a structured approach when interpreting reports and making adjustments. Here is a detailed guide:

1\. Assess Glycemic Information:

- Check on the Distribution report if treatment goals, particularly Time in Range and Time Below Range, are being met over the past 2 to 4 weeks. Following international guidelines, time in range should be above 70% and time below range should be below 4%.

- If you have access to the Analysis report of Nightscout Reporter, take note of the frequency of meal bolusing, which you would expect to be on average 3 to 4 times per day.

2\. Optimize AID Settings:

- Analyze the Ambulatory Glucose Profile (AGP) to identify trends of hypo- or hyperglycemia. If you spot trends, try to find out on the Daily reports, if these are related to meal boluses.

- For trends related to meal boluses: assess factors such as bolus timing, carbohydrate counting, and consider adjusting the carbohydrate ratio.

  - You can also explore the option of faster-acting insulins like Fiasp or Lyumjev.

- For trends after manual correction boluses or after hyperglycemia: you can consider changing the insulin sensitivity factor, to adjust the aggressiveness of the algorithm.

- You can also control the aggressiveness of the insulin delivery by adjusting the maximum basal rate and maximum bolus.

  - Lowering these limits can help prevent excessive insulin administration, especially in cases of frequent hypoglycemia.

  - On the other hand, if these delivery limits are restricting the system's ability to correct high blood glucose levels effectively, it may need to be increased. This should be done with caution.

- For trends outside of meals or boluses: you can adjust the Correction Range per time block or change the basal insulin rate from 1 hour before and during the corresponding period with 10-20%.

It's also important to explore possible correlations with missed boluses, exercise, alcohol or hypoglycemia.

In DIY Loop, it is important to ensure that the basal insulin rate is appropriately set. If you notice a consistent pattern of increasing or decreasing basal insulin during a specific period of the day, for example in the Loopalyzer Report, the aim is to adjust the basal insulin rate at that time to align with the user's requirements.

3\. Guide Behavioral Recommendations: Ensure proper usage of the automated insulin delivery system in the Daily reports:

- Sensor wear time, activation of Auto Mode, and adherence to pre-meal bolusing can best be checked in the Day to day reports.

- You can also check the correct use of Pre-Meal Range and Overrides, and evaluate for overcorrection of hypo- or hyperglycemia.

- Also ask about the appropriateness of alarm settings and reminders, to avoid alarm fatigue.

4\. Review Pump Settings and Emergency Plans:

- Document all pump settings, including at least basal insulin rate, carbohydrate ratio, insulin sensitivity, Correction Range, Pre-meal Range and Glucose Safety Limit. Also consider checking the algorithms type, pre-mael range, glucose safety limit and maximum delivery settings.

- Establish an emergency plan, including the availability of insulin pens for short- and long-acting insulin, in case of a pump malfunction or other emergencies.

When making changes, it is recommended to modify one setting at a time. After implementing a change, closely monitor the effects over a period of 1-2 weeks. It is possible that your initial adjustment may not yield the desired results, in which case, you can explore alternative options and make further adjustments accordingly. The key is to iterate and fine-tune your settings based on the feedback provided by your Nightscout reports, ensuring optimal performance of your Loop system.

By following these guidelines and considering the provided details, you can effectively interpret reports, optimize insulin settings, and ensure proper usage of DIY Loop for improved diabetes management.

Please note that DIY Loop is highly customizable through patches and code variations. These versions can have modified standard settings. Keep it in mind and ask your patient about his personal customizations before analyzing his data.

**<u>6. Managing special situations</u>**

In this video, we will provide specific tips for managing special situations with DIY Loop.. These tips are in addition to the general guidelines discussed in the module on automated insulin delivery systems.

We will cover strategies for handling hypo- and hyperglycemia, high-fat meals, exercise, illness, alcohol, travel, and more.

By implementing these tips, you can optimize your glucose control and enhance your overall diabetes management with DIY Loop.

## ***6.1 Hypoglycemia***

In the case of hypoglycemia, using an automated insulin delivery system like DIY Loop will require fewer carbohydrates to recover compared to a non-automated insulin delivery system, especially if you have minimal insulin on board. The insulin on board and recent insulin history can be seen on the home screen and graph of DIY Loop, allowing you to assess your insulin levels.

To prevent further episodes of hypoglycemia, you can adjust the system to provide less insulin using an Override with a reduced percentage of insulin delivery or with a higher target range.

It's worth noting that at times, the algorithm may increase basal insulin even during low blood sugar levels. This can occur when the predicted glucose level is higher than the target value. In most cases, the algorithm proves to be accurate in its predictions.

## ***6.2 Hyperglycemia***

In the case of mild hyperglycemia, it is generally advised to trust DIY Loop and allow it to handle the situation. However, if a hyperglycemic episode goes unnoticed by DIY Loop, you can manually administer an insulin bolus using the bolus icon. Loop may recommend an insulin bolus if it predicts hyperglycemia, and you have the choice to accept or decline the recommendation. The effect of the bolus can be observed in the curve displayed above.

Alternatively, you can use an Override with a higher percentage of insulin release or a lower Correction Range, to temporarily increase insulin delivery.

In the case of prolonged and severe hyperglycemia, it is important to consider if there is an issue with your infusion set or pod. When in doubt, it is recommended to replace your pod. Remember the saying, "If in doubt, change it out." Ensure that you have enough equipment on hand to perform all necessary replacements.

## ***6.3 High-fat meals***

When consuming a high-fat meal while using the Loop app, it is advisable to take certain measures:

- Set a longer absorption time, exceeding 4 hours or using the pizza icon, to ensure slower delivery of meal insulin.

- Consider adding additional carbohydrates to compensate for the fats and proteins consumed.

  - You could try to enter approximately 10% of the grams of fat as carbohydrates and around 25% of the grams of protein as carbohydrates.

- In the Loop app, you can also set the start time for absorption 1 to 2 hours in the future, allowing for a better match of the insulin delivery with the digestion process.

It is important to note that individual experiences with diabetes may vary, so these guidelines serve as a starting point and may require adjustments based on personal needs and responses.

After the meal, you can monitor in the carbohydrate curve if the observed glucose change aligns with the predicted glucose change.

By analyzing the carbohydrate curve, you can gain insights into the effectiveness of your approach to managing a high-fat meal with Loop.

Additionally, it is recommended to keep a food log to track your meals and their impact on your glucose levels. By recording details such as the type of food, portion sizes, and any adjustments made in Loop, you can identify patterns and make informed decisions about managing your diabetes. A food log helps you understand how different meals affect your glucose control and allows for continuous improvement in your management approach.

## ***6.4 Exercise***

During sports activities with DIY Loop, it is recommended to consider the following strategies:

- Use overrides to set a higher target range before and during exercise to mitigate the risk of hypoglycemia.

- As discussed in the general module on automated insulin delivery systems, reducing the meal bolus can also be beneficial.

- Monitor your glucose trends closely and make adjustments accordingly.

- Consider connecting your **DIY Loop** app to a smartwatch or cycling computer for easier access to glucose readings during exercise.

- If you consume small amounts of carbohydrates during physical activity, you do not need to enter them in the DIY Loop app.

Remember that these strategies are starting points, and it's important to fine-tune your insulin dosage and carbohydrate intake based on your personal experience and observations during exercise.

## ***6.5 Illness***

During illness, it is generally recommended to keep DIY Loop in Auto Mode or Closed Loop Mode unless advised otherwise by your healthcare provider.

You can consider using an override specifically designed for illness, such as a higher percentage of insulin delivery.

Please refer to the guidelines about illness discussed in the general module on automated insulin delivery systems.

It's important to note that illness can have varying effects on blood glucose levels, and individual responses may differ. Monitoring your glucose levels closely and making adjustments based on the guidance provided for hyperglycemia will help you manage your diabetes effectively during times of illness.

## ***6.6 Alcohol*** 

When consuming alcohol while using DIY Loop, it is important to take proactive measures to prevent hypoglycemia. Consider setting a temporary Override with a lower percentage of insulin delivery and or a higher Target Range.

It is important to note that increasing carbohydrate intake is not an effective strategy, as DIY Loop will compensate for any rise in glucose levels by increasing insulin administration.

Always monitor your glucose levels closely when consuming alcohol and be prepared to make further adjustments as needed.

## ***6.7 Travel*** 

When traveling with DIY Loop, it is important to be prepared and take sufficient supplies with you.

If you are flying, keep the following considerations in mind:

- The Bluetooth functionality of your mobile phone and pump can remain on during the flight.

- However, **some** airlines require passengers to switch their phones to airplane mode during take-off and landing. Normally Bluetooth can stay on during Airplane Mode. If not, the pump will revert to the preset basal insulin rate. Remember to turn on Bluetooth as soon as possible to resume Auto Mode functionality.

- The Wi-Fi and 4G capabilities of your SIM card may be unavailable during the flight, but this will not affect the operation of the DIY Loop app, which will continue to function perfectly via Bluetooth. However, data transmission to Nightscout will be temporarily interrupted.

The DIY Loop app automatically adapts to different time zones and daylight savings time. On the other hand, you can choose when to match your pump time to the time zone of your location. The pump time defines your therapy settings like basal insulin rate, carbohydrate ratio, ISF and correction range.

You can easily adjust the pump time to match your time zone via the pump screen. For daylight savings time changes, you can promptly update the pump time. When traveling, you have the flexibility to leave the pump time unchanged for short trips. This way, DIY Loop provides convenience and flexibility in managing time zone adjustments during your travels.

On top of these recommendations, you can also check out the Pro tips for all above mentioned unique situations provided by Loop and Learn. Join the Loop and Learn Facebook group, subscribe to Loop and Learn Youtube channel, follow @loopandlearn on Instagram and visit Loop and Learn official website www.loopandlearn.org.

