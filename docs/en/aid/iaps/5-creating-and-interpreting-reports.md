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

