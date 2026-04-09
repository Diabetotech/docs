<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/B0SS1P-y3hI" frameborder="0" allowfullscreen></iframe>
</div>

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

