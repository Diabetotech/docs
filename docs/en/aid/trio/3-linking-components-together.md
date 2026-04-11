<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/eK-qJn2deGc" frameborder="0" allowfullscreen></iframe>
</div>

## <u>3. Linking components together (11 min)</u>

In this video tutorial, we will guide you through the process of creating the necessary links within the Trio automated insulin delivery system. These links establish connections between various components to ensure seamless communication and data exchange.

Trio operates in the following manner:

- Glycemia is measured every 1 to 5 minutes using a glucose sensor, such as Dexcom G6, G7, Dexcom ONE Plus, FreeStyle Libre 2 or FreeStyle Libre 2 Plus.
- After starting your European Libre 2 or 2 Plus sensor with your LibreLink app, the sensor sends the glucose readings directly to your Trio app. With Dexcom sensors, the Dexcom App needs to stay active.
- Trio calculates the required insulin dosage and sends it to your insulin pump, such as Omnipod DASH, Medtrum Nano, Dana RS, Dana-i, Omnipod Eros or older Medtronic pumps.
- The insulin pump delivers the necessary insulin and provides pump data back to the Trio app.
- Trio shares the glycemia and insulin data with Nightscout, which serves as the readout program. Trio also shares this information to Apple Health and Tidepool, and the Dexcom and LibreLink app send glucose data to Dexcom Clarity and LibreView respectively.
- Additionally, the Trio app provides an Apple Watch version being installed during the same building & installation process. This allows you to view your glucose values in real-time on your Apple Watch, give an insulin bolus, and even start and stop overrides and temp targets directly from your Apple Watch, adding convenience to your diabetes management.

In this video tutorial, we will guide you through the process of creating various links in the Trio automated insulin delivery system. Specifically, we will cover the following steps:

- How to link your glucose sensor to your Trio app.
- How to pair your insulin pump.
- The process of creating a Nightscout account, which serves as the data hub for Trio.
- How to establish a connection between the Trio app and Nightscout, ensuring the smooth transfer of glycemia and insulin data.
- And how to configure Trio on your Apple Watch.

By following these steps, you will be able to establish the necessary links within the Trio system, enabling effective automated insulin delivery functionality for diabetes management.

### 3.1 Linking Sensor to Trio App

Let's delve into the process of connecting the most used sensors such as the FreeStyle Libre 2, 2 Plus, Dexcom G6, G7 and ONE Plus.

For European FreeStyle Libre 2 or 2 Plus sensors, the initial step involves starting your sensor via the LibreLink app. After the one-hour warm-up period, you can make the connection between your sensor and the Trio app. Within Trio, navigate to Settings, select Devices, CGM, and then opt for the FreeStyle Libre. Tap the configuration option to select Libre 2 Direct. Here, you can start the pairing process and scan your sensor. This enables Trio to directly receive data from your FreeStyle Libre 2 or 2 Plus sensor. Once scanned, your sensor information will populate the screen, and your current sensor glucose will be visible on the Trio homescreen. Be sure to disable bluetooth permissions in the Libre app or Trio's connection will be unstable. After 14 days, the FreeStyle Libre 2 or 2 Plus sensor will stop functioning. You can start a new sensor via the LibreLink and Trio app.

If you're using FreeStyle Libre 1 sensor with an after-market transmitter you can select Bluetooth transmitter and follow the prompts in xDrip4iOS. This sensor requires a constant internet connection and is not generally recommended.

For Dexcom G6 sensors, start the sensor using the Dexcom G6 app. In the Trio app, select Dexcom G6 in the CGM menu and enter the transmitter serial number. After a two-hour warm-up, you'll receive your results. You must keep the G6 app running in the background. Sensor changes are done in the G6 app.

For the Dexcom G7 and Dexcom ONE Plus sensor, start the sensor using the Dexcom G7 or Dexcom ONE Plus app, preferably after the warm-up period of at least 30 min, to allow overlap of sensors. Within Trio, select Dexcom G7/ONE+. When readings start in the Dexcom app, Trio will automatically read the G7/ONE+ readings.

You can opt to receive sensor alerts from either the LibreLink or Dexcom app or via the Trio app through Notifications in the Settings. Trio has 3 glucose alert options. Disabled will not provide any alerts, Always will alert you to every glucose reading, and Only Alarm Limits will alert you when glucose is above or below the limits you set. If you require more alert options, consider using your native sensor app or an open-source application like xDrip4iOS.

### 3.2 Linking Insulin Pump to Trio App

Most people will use Trio with an Omnipod DASH, Dana or TouchCare Nano insulin pump. If you want to use Omnipod Eros or an older Medtronic pump, you'll need to use a Riley link.

We'll show the process of linking an Omnipod DASH Pod.

- First go to the Settings, Devices, Insulin pump and choose Omnipod DASH.
- You will first be asked to set your expiration reminder, low reservoir reminder, and your insulin type.
- Then you can tap Omnipod DASH to go to the pump screen and select "Pair Pod".
- The app will take you through the different steps, similar as the Omnipod DASH PDM does. First fill your Pod with insulin, then link your Pod, remove the needle guard and place the Pod to your body. Finally continue to insert the cannula.
- Once your Pod is paired, you'll see a dedicated DASH pop-up in the app interface. If you tap it, you go to the pump screen, where you can access information about your Omnipod DASH pump and control its functions. The buttons are intuitive and serve as replacements for the functions performed by the Omnipod's PDM. Although the PDM is not needed if you are using Trio, it is recommended to keep it as a backup device.

For users of other insulin pumps, the app interface will display different options corresponding to the specific pump type. These features ensure that you can effectively manage and control insulin delivery through your linked pump using the Trio app.

### 3.3 Creating a Nightscout Website

Nightscout is not a platform to log into but a website that you build or have built, which may involve some additional costs.

A Nightscout account consists of a website URL (name) and a password to access the website.

Nightscout accounts are created as individual user accounts. There is no Nightscout platform specifically for healthcare providers.

Nightscout enables real-time tracking of your sensor and insulin data, allowing you to share it with your loved ones or healthcare provider. Additionally, Nightscout is the exclusive method for generating reports from your Trio automated insulin delivery system.

Nightscout is more than just a website for Trio data; it can connect to various devices. Nightscout acts as a central hub, receiving data from sensors and distributing it to multiple devices such as mobile phones, smartwatches, computers, and other monitoring devices. It provides diverse options to access and display glucose information, including through smartwatches, desktop widgets, wall-mounted devices, and integration with voice assistants like Alexa.

There are multiple ways to create a Nightscout website.

- Nightscout is open-source software. You can find all the information on nightscout.github.io.
- You can set it up yourself using step-by-step plans available online.
- Or there are firms that offer Nightscout setup services, such as T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u, Nightscout-easy and Opensource.clinic.
- Nightscout and its associated services are not FDA approved, except for T1Pals' service. There is no approval from European authorities, so its use is at your own risk. Nightscout appears to be GDPR and HIPAA compliant but does not claim official compliance due to the absence of auditors.

It is crucial to handle sensor glycaemia data securely and protect your Nightscout URL with a password. If you want to share your Nightscout website with a loved one or healthcare providers, it is recommended to create a separate token for them.

By following these steps, you can create a Nightscout website easily and securely, allowing you to track and share your diabetes data effectively.

### 3.4 Linking Trio App to Nightscout

To connect your Trio data to your Nightscout website, just head to Settings, then Nightscout, and enter your Nightscout URL and password.

Once connected, your Trio data will show up on your Nightscout website. This gives you, your family, and your healthcare provider realtime information about how you're managing your diabetes.

If you turn on "Remote Control," trusted individuals can give you insulin, input carbs, or adjust your insulin settings using Loop Follow or their Nightscout login.

### 3.5 Trio App on Apple Watch

Using an Apple Watch will not only allow you to follow your sensor glucose and insulin on board on your wrist, but also allow you to add carbs, bolus and select/set/stop a profile from your watch.

Trio will automatically be downloaded on your connected Apple Watch. On your Apple Watch, you can set a Trio complication in a modular watch face.

If you tap the Trio complication on your watch face, you will see a Trio screen where you can see your glucose and loop data, your insulin on board and your carbs on board. It also lets you add carbs, do a manual bolus, and set an override or a temporary target. However, the companion app only serves as a remote control for the iPhone app; connection to the CGM and pump is still done through your iPhone, and you will have to bring it with you.

In this chapter, we explored the different connections available in Trio. From glucose sensors to insulin pumps and Nightscout, these links enable seamless communication for effective diabetes management. By establishing these connections, users can fully leverage the capabilities of Trio and take control of their diabetes.
