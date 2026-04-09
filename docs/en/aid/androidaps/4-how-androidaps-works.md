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

