# 2. twiist AID System According to the CARES Paradigm (X min)

## Video
<iframe width="560" height="315" src="https://www.youtube.com/embed/Q3OHaTzJF2Q" frameborder="0" allowfullscreen></iframe>

## Transcript

In this part of the module, we will look at the twiist AID system through the CARES paradigm.

We'll discuss how twiist calculates and adjusts automated insulin delivery, what happens if the system reverts to manual mode, important education points, how the system interacts with its compatible sensor, and how data can be shared with your healthcare team.

## 2.1 twiist AID according to CARES paradigm

### #1 Calculate

The twiist Loop algorithm adjusts the preset basal insulin rate every 5 minutes, based on the glucose prediction for up to 6 hours. These predictions are calculated using multiple factors:

- The Carbs On Board prediction estimates the effect of consumed carbohydrates on glucose levels using a dynamic carb absorption model.
- The Insulin On Board prediction considers the impact of insulin already in the body.
- The Glucose Momentum prediction considers the average rate of change in glucose levels between the current reading and the reading 15 to 30 minutes ago.
- And the Retrospective Correction prediction takes into account the difference between the predicted and actual glucose levels over the past 30 minutes.

Every 5 minutes, the twiist Loop algorithm calculates the insulin requirement by comparing the predicted glucose level with the target glucose level, and divides the difference by the insulin sensitivity factor.

In the twiist app, the target glucose value---called the Correction Range---can be customized for each 30-minute time block and set between 87 and 180 mg/dL, or 4.8 and 10 mmol/L.

If the glucose level is predicted to fall below the Glucose Safety Limit over the next 3 hours, basal insulin delivery is suspended. This safety limit can be set between 67 and 110 mg/dl or 3.7 and 6.1 mmol/l.

### #2 Adjust

With twiist, users and their healthcare providers can personalize a wide set of parameters, including:

- The Correction Range -- recommended to start at 100 to 115 mg/dl or 5.6 to 6.4 mmol/l.
- A dedicated Pre-Meal Preset and Workout Preset.
- Basal Rates -- adjustable in 30-minute intervals.
- Carb Ratios & Insulin Sensitivities.
- The Glucose Safety Limit -- recommended at 75 mg/dl or 4.2 mmol/l for adults and 80 mg/dl or 4.4 mmol/l for kids.
- The Delivery Limits -- the maximum basal is recommended to start at 3 to 4 times the highest scheduled basal rate.

The twiist AID system also offers 2 dedicated glucose targets:

- The Workout Preset with a higher glucose target range (150 to 170 mg/dl or 8.3 to 9.4 mmol/l) to prevent hypoglycemia while exercising.
- The Pre-Meal Preset with a lower glucose target range (80 to 100 mg/dl or 4.4 to 5.6 mmol/l) to prevent post-meal hyperglycemia.

### #3 Revert

Loop will turn off or "revert to Manual Mode" if there is no connection to the sensor for more than 15 minutes. The Loop icon will turn red and your basal insulin delivery will return to your scheduled basal rate.

When Loop is off or in Manual Mode:

- Your basal insulin is delivered according to your scheduled basal rate, or you can set a temporary basal.
- You can give an insulin bolus using the integrated bolus calculator.
- You can use the on-pump bolus-button to give an insulin bolus if enabled.

### #4 Educate

General education points for AID systems:

- Use fewer carbohydrates to correct hypoglycemia.
- Consider infusion set problems if blood glucose levels remain high without an apparent reason.
- Trust the AID system and avoid unnecessary manual interventions.
- Time meal boluses before meals.
- Start Exercise Mode 1 to 2 hours before activity.
- Respond to alarms.
- Seek peer support for guidance and sharing experiences.

Additional education points specific to twiist:

- Wear your pump and CGM on the same side of your body to minimise communication errors.
- Always keep your iPhone charged and within Bluetooth range of your pump.
- Always keep Notifications and Critical Alerts turned on in your iPhone settings.
- Do not close the twiist app -- leave it open in the background.
- Take advantage of the Pre-Meal Preset before meals.
- Do not use pump when swimming or bathing.

### #5 Sensor

At the moment of making this course, the twiist AID system is only compatible with the FreeStyle Libre 3 Plus sensor.

The FreeStyle Libre 3 Plus sensor can only be used with the twiist app, and not with the FreeStyle Libre 3 app or Libre 3 receiver. This means that values will not go to LibreView nor will they be shareable via LibreLinkUp.

### #6 Share

Data from twiist can be seamlessly uploaded to Tidepool, where you and your healthcare team can view reports on insulin delivery, glucose patterns, carbs, and settings.

Your family and loved ones can use the insiight app to follow you in real-time. However, at the moment of making this course, the insiight app does not offer alerts.

## 2.2 Indications

The twiist AID system is FDA-cleared for people with diabetes aged 6 years and older who require insulin. It is compatible with Humalog, Novolog or Novorapid U100 insulin.

Please note that the twiist AID system does not have a CE label at this time, and it is not indicated for use by anyone who is pregnant, on dialysis, or critically ill.

The twiist AID system is fully dependent on an iPhone (with iOS 18 or higher).

## 2.3 Software Updates

Unlike open-source AID systems that require manual rebuilds, twiist provides updates automatically via the App Store and official firmware releases.
