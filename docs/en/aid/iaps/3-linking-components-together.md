<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/FisWfrA4YRs" frameborder="0" allowfullscreen></iframe>
</div>

## <u>3. Linking components together</u>

In this video tutorial, we will guide you through the process of creating the necessary links within the iAPS automated insulin delivery system. These links establish connections between various components to ensure seamless communication and data exchange.

iAPS operates in the followi<span class="mark">ng manner:</span>

- <span class="mark">Glycemia is measured every 1 to 5 minutes using a glucose sensor, such as Dexcom G6, G7, Dexcom ONE Plus, FreeStyle Libre 2 or FreeStyle Libre 2 Plus.</span>

- <span class="mark">After starting your sensor with your Dexcom or LibreLink app, the sensor sends the glucose readings directly to your iAPS app, except for the Dexcom G7 and the Dexcom ONE Plus, where the Dexcom App needs to stay active.</span>

- <span class="mark">iAPS calculates the required insulin d</span>osage and sends it to your insulin pump, such as Omnipod DA<span class="mark">SH, Dana-I, TouchCare Nano, Omnipod Eros, DanaRS (firmware 3 only) or older Medtroni</span>c pumps.

- The insulin pump delivers the necessary insulin and provides pump data back to the iAPS app.

- iAPS shares the glycemia and insulin data with Nightscout, which serves as the readout program. iAPS also shares this information to Apple Health, and the Dexcom and LibreLink app send glucose data to Dexcom Clarity and LIbreView respectively.

- Additionally, the iAPS app provides an Apple Watch version being installed during the same buil<span class="mark">ding & installation process. This allows you to view your glucose values in real-time on your Apple Watch, and bolus insulin and even activate predefined Profiles directly from your Apple Watch, adding convenience to your diabetes management.</span>

  - <span class="mark">Recently support for Garmin Watch was added</span>

<!-- -->

- <span class="mark">iAPS also provides calendar events, in conjunction with Apple Carplay it permits the visual follow-up of the carb value and evolution on the Carplay window when driving.</span>

<span class="mark">In this video tutorial, we will guide you through the process of creating various links in the iAPS automated insulin delivery</span> system. Specifically, we will cover the following steps:

- How to link your glucose sensor to your iAPS app.

- How to pair your Omnipod DASH.

- The process of creating a Nightscout account, which serves as the data hub for iAPS.

- How to establish a connection between the iAPS app and Nightscout, ensuring the smooth transfer of glycemia and insulin data.

- And how to configure iAPS on your Apple Watch.

By following these steps, you will be able to establish the necessary links within the iAPS system, enabling effective automated insulin delivery functionality for diabetes management.

### 3.1 Linking Sensor to iAPS App

Let's delve into the process of connecting the most used sensors such as the FreeStyle L<span class="mark">ibre 2, 2 Plus, Dexcom G6, G7 and ONE Plus.</span>

<span class="mark">For European FreeStyle Libre 2 or 2 Plus sensors, the initial step involves starting your sensor via the LibreLink app. After the one-hour warm-up period, you can make the connection between your sensor and the iAPS app. Within iAPS, navigate to Settings, select CGM, and then opt for the Libre Transmitter. Tap the configuration option to select Libre 2 Direct. Here, you can start the pairing process and scan your sensor. This enables iAPS to directly receive data from your FreeStyle Libre 2 or 2 Plus sensor. On</span>ce scanned, your sensor information will populate the screen, and your current senso<span class="mark">r glucose will be visible on the iAPS homescreen. After 14 days, the FreeStyle Libre 2 or 2 Plus sensor will stop functioning. You can start a new sensor via the LibreLink and iAPS app. To make sure that iAPS picks up the correct sensor signal, it's advisable to restart your iPhone and place the old sensor in a separate room. If you want uninterrupted glucose values, you can switch your sensor in the LibreLink app first and then in the iAPS app after the warm-up period. It’s good to know that the sensor life of FreeStyle Libre 2 sensors in the iAPS app extends 12 hours longer than in the LibreLink app.</span>

<span class="mark">For Dexcom G6 sensors, first start the sensor using the Dexcom G6 app. Then, connect your Dexcom G6 sensor to the iAPS app by selecting Dexcom G6 and entering the transmitter serial number. After a two-hour warm-up, you'll receive your results.</span>

<span class="mark">For the Dexcom G7 and Dexcom ONE Plus sensor, start the sensor using the Dexcom G7 or Dexcom ONE Plus app, preferably after the warm-up period of at least 30 min, to allow overlap of sensors. Within iAPS, select Dexcom G7 for both types of sensors. iAPS should automatically detect the sensor signal.</span>

<span class="mark">You can opt to receive sensor alerts from either the</span> LibreLink or Dexcom app or via the iAPS app through Notifications in the Settings. The iAPS only has high and low glucose alerts, offering minimal alert types. If you require more alert options, consider using your native sensor app or an open-source application like xDrip4iOS.

### 3.2 Linking Insulin Pump to iAPS App

Most people will use iAPS with an Omnipod DASH insulin pump. If you want to use Omnipod Eros or an older Medtronic pump, you’ll need to use a Riley link.

We’ll show the process of linking an Omnipod DASH Pod.

- First go to the Settings, and choose Omnipod DASH.

- You will first be asked to set your expiration reminder, low reservoir reminder, and your insulin type.

- Then you can tap Omnipod DASH to go to the pump screen and select "Pair Pod".

The app will take you to the different steps, similar as the Omnipod DASH PDM does. First fill your Pod with insulin, then link your Pod, remove the needle guard and place the Pod to your body. Finally continue to insert the cannula.

Once your Pod is paired, you’ll see a dedicated DASH pop-up in the app interface. If you tap it, you go to the pump screen, where you can access information about your Omnipod DASH pump and control its functions. The buttons are intuitive and serve as replacements for the functions performed by the Omnipod's PDM. Although the PDM is not needed if you are using iAPS, it is recommended to keep it as a backup device.

For users of other insulin pumps, the app interface will display different options corresponding to the specific pump type. These features ensure that you can effectively manage and control insulin delivery through your linked pump using the iAPS app.

### 3.3 Creating a Nightscout Website

Nightscout is not a platform to log into but a website that you build or have built, which may involve some additional costs.

A Nightscout account consists of a website URL (name) and a password to access the website.

Nightscout accounts are created as individual user accounts. There is no Nightscout platform specifically for healthcare providers.

Nightscout enables real-time tracking of your sensor and insulin data, allowing you to share it with your loved ones or healthcare provider. Additionally, Nightscout is the exclusive method for generating reports from your iAPS automated insulin delivery system.

Nightscout is more than just a website for iAPS data; it can connect to various devices. Nightscout acts as a central hub, receiving data from sensors and distributing it to multiple devices such as mobile phones, smartwatches, computers, and other monitoring devices. It provides diverse options to access and display glucose information, including through smartwatches, desktop widgets, wall-mounted devices, and integration with voice assistants like Alexa.

There are multiple ways to create a Nightscout website.

Nightscout is open-source software. You can find all the information on github.nightscout.io.

- You can set it up yourself using step-by-step plans available <span class="mark">**[<u>online</u>](https://nightscout.github.io/nightscout/new_user/#free-diy).**</span>

- Or there are firms that offer Nightscout setup services, such <span class="mark">as T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u, Nightscout-easy and Opensource.clinic</span>

- Nightscout and its associated services are not FDA approved, except for T1Pals' service.

<!-- -->

- There is no approval from European authorities, so its use is at your own risk.

- Nightscout appears to be GDPR and HIPAA compliant but does not claim official compliance due to the absence of auditors.

- It is crucial to handle sensor glycaemia data securely and protect your Nightscout URL with a password.

- If you want to share your Nightscout website with a loved one or healthcare providers, it is recommended to create a separate token for them.

By following these steps, you can create a Nightscout website easily and securely, allowing you to track and share your diabetes data effectively.

### 3.4 Linking iAPS App to Nightscout

To connect your iAPS data to your Nightscout website, just head to Settings, then Nightscout, and enter your Nightscout URL and password.

Once connected, your iAPS data will show up on your Nightscout website. This gives you, your family, and your healthcare provider realtime information about how you're managing your diabetes.

If you turn on "Remote Control," trusted individuals can give you insulin, input carbs, or adjust your insulin settings using their Nightscout login.

***3.5 iAPS App on Apple Watch***

Using an Apple Watch will not only allow you to follow your sensor glucose and insulin on board on your wrist, but also allow you to add carbs, bolus and <span class="mark">select/set/stop a profile from your watch.</span>

<span class="mark">iAPS will automatically be downloaded on your connected Apple Watch. On your Apple Watch, you can set an iAPS complication in a modular watch face.</span>

<span class="mark">If you tap the iAPS complication on your watch face, you will see an iAPS screen where you can see your glucose and loop data, your insulin on board and 3 action buttons. Here you give an insulin bolus based on the carbs you are going to eat, select/set/stop a profile or give a manual insulin bolus.</span>

<span class="mark">In this chapter, we explored t</span>he different connections available in iAPS. From glucose sensors to insulin pumps and Nightscout, these links enable seamless communication for effective diabetes management. By establishing these connections, users can fully leverage the capabilities of iAPS and take control of their diabetes.

