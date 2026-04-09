## **<u>3. Linking components together</u>**

In this video tutorial, we will guide you through the process of creating the necessary links within the AndroidAPS automated insulin delivery system. These links establish connections between various components to ensure seamless communication and data exchange.

AndroidAPS operates in the following manner:

- <span class="mark">Glycemia is measured every 5 minutes using a glucose sensor, such as Dexcom or FreeStyle Libre sensor.</span>

- <span class="mark">The sensor sends the glucose readings to a dedicated sensor app on your mobile device, which then transmits the data to the AndroidAPS app.</span>

- <span class="mark">AndroidAPS calculates the required insulin dosage and sends it to your insulin pump, such as Accu-Chek Combo or Insight pump, Dana pump, Omnipod DASH, TouchCare Nano Pump or older Medtronic pumps.</span>

- <span class="mark">The insulin pump delivers the necessary insulin and provides pod data back to the AndroidAPS app.</span>

- <span class="mark">AndroidAPS shares the glycemia and insulin data with Nightscout or Tidepool, which serves as the readout program.</span>

- <span class="mark">If you transmit the glycemia data to xDrip on your mobile device, caregivers can remotely monitor the data through their own xDrip a</span>pp.

- Additionally, the AndroidAPS app or xDrip can <span class="mark">transmit your sensor and insulin data to compatible smartwatches. Some smartwatches can also provide the functionality for remote control like bolus insulin directly from the watch, adding convenience to your diabetes management and adding awareness on your glycemic status without the need to take out the smartphone.</span>

In this video tutorial, we will guide you through the process of creating various links in the AndroidAPS automated insulin delivery system. Specifically, we will cover the following steps:

- How to link your sensor to a dedicated sensor app, enabling the transmission of sensor readings to your AndroidAPS app.

- How to pair you<span class="mark">r insulin pum</span>p with AndroidAPS for seamless communication.

- The process of creating a Nightscout account, which serves as the data hub for AndroidAPS.

- How to establish a connection between the AndroidAPS app and Nightscout, ensuring the smooth transfer of glycemia and insulin data.

- And how to link AndroidAPS to your smartwatch.

By following these steps, you will be able to establish the necessary links within the AndroidAPS system, enabling effective automated insulin delivery functionality for diabetes management.

### ***3.1 Linking Sensor to AndroidAPS App***

When it comes to linking sensors to the AndroidAPS app, there are different options depending on the sensor you are using.

Since AndroidAPS cannot directly connect to native sensor apps like the Dexcom or LibreLink app, an additional open-source sensor app is required to bridge the gap and transmit the sensor data to AndroidAP<span class="mark">S. This can be xDrip+ or Juggluco, depending on your sensor type.</span>

- xDrip+ is a powerful app that can be used for different sensors. It can also connect to other platforms such as Nightscout, Tidepool, smartwatches, and other mobile devices.

<span class="mark">xDrip+ cannot be downloaded direct</span>ly from the Play Store. Instead, you can obtain it from the GitHub repository. You can download the xDrip+ APK file and install it on your mobile device. Once installed, you will be prompted to choose a data source within the app's settings. Select the appropriate option based on yo<span class="mark">ur sensor type, and follow the on-screen instructions to link the transmitter and start the sensor.</span>

When using xDrip with AndroidAPS, you gain additional features such as sharing sensor data with loved ones, customizable alarms, a smartphone widget, Bluetooth integration for car audio systems, and Nightscout integration for comprehensive data management.

<span class="mark">If you only have access to older FreeStyle Libre sensors, you will need an additional NFC to Bluetooth bridge, such as a MiaoMiao Reader, Bubble or Blucon Nightrider. These NFC to Bluetooth bridges can link to specific open-source apps to receive the glucose values on your phone, after which they can be sent to AndroidAPS.</span>

By utilizing open-source sensor apps, you can receive sensor readings and seamlessly transmit them to the AndroidAPS app, allowing for effective diabetes management through the automated insulin delivery system.

### ***3.2 Linking Insulin Pump to AndroidAPS App***

When using the AndroidAPS app, you will have the option to link it to your insulin pump. Upon launching the app, you will be prompted to select the type of pump you are using. You can also change this setting later through the configurator.

If you have chosen the Omnipod DASH as your pump type, you will see a dedicated DASH tab at the top of the app interface.

- In this tab, you can access information about your Omnipod DASH pump and control its functions.

- The refresh button allows AndroidAPS to establish a connection with the Omnipod and retrieve its status. This can be helpful in disabling certain Omnipod alarms.

- Under the pump management section, you will find four options specific to the Omnipod DASH:

  - Activate Pod: This guides you through the steps of filling a pod with insulin, inserting it, and starting its operation.

  - Deactivate Pod: This allows you to deactivate an active pod.

  - Play Test Beep: This option controls the auditory alerts on the Omnipod DASH.

  - Pod History: Here you can access the history of your Omnipod DASH pods.

- In certain situations, a third button may appear in the DASH tab. This can be the "Resume Delivery" button or the "Silence Alert" button, depending on the circumstance. The "Resume Delivery" button can restore insulin delivery after a profile change, while the "Silence Alert" button silences alarms related to pod expiration or low insulin reservoir. The appearance of these buttons provides specific options for addressing pump-related issues.

<!-- -->

- These buttons are intuitive and serve as replacements for the functions performed by the Omnipod's <span class="mark">"Personal Diabetes Manager" or</span> PDM. Although the PDM is not needed if you are using AndroidAPS, it is recommended to keep it as a backup device.

For users of other insulin pumps, the app interface will display different options corresponding to the specific pump type. Each pump type will have its own dedicated tab at the top. The available options and settings may vary, depending on the pump model.

These settings ensure that you can effectively manage and control insulin delivery through your linked pump using the AndroidAPS app.

### ***3.3 Creating a Nightscout Website***

- Nightscout is not a platform to log into but a website that you build or have built, which may involve some additional costs.

- A Nightscout account consists of a website URL (name) and a password to access the website.

- Nightscout accounts are created as individual user accounts. There is no Nightscout platform specifically for healthcare providers.

- Nightscout enables real-time tracking of your sensor and insulin data, allowing you to share it with your loved ones or healthcare provider. Additionally, Nightsc<span class="mark">out allows for generating reports from your AndroidAPS automated insulin deliver</span>y system.

- Nightscout is more than just a website for AndroidAPS data; it can connect to various devices.

- Nightscout acts as a central hub, receiving data from sensors and distributing it to multiple devices such as mobile phones, smartwatches, computers, and other monitoring devices. It provides options to access and display glucose information, including through smartwatches, desktop widgets, wall-mounted devices, and integration with voice assistants like Alexa.

- There are multiple ways to create a Nightscout website.

- Nightscout is open-source software. You can find all information on github.nightscout.io.

- You can set it up yourself using step-by-step plans available online. Or there are firms that offer Nightscout setup services, such as <span class="mark">T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u, Nightscout-easy and Opensource.clinic.</span>

- <span class="mark">Nightscout and its associated services are not FDA approved, except for T1Pals' service. There is no approval from European authorities, so its use is at your own risk. Nightscout appea</span>rs to be GDPR and HIPAA compliant but does not claim official compliance due to the absence of auditors.

- It is crucial to handle sensor glycaemia data securely and protect your Nightscout URL with a password.

- If you want to share your Nightscout website with a loved one or <span class="mark">healthcare</span> providers, it is recommended to create a separate token for them.

By following these steps, you can create a Nightscout website easily and securely, allowing you to track and share your diabetes data effectively.

### ***3.4 Linking AndroidAPS App to Nightscout***

When setting up the AndroidAPS app, you will be prompted to enter your Nightscout URL and password. If you haven't done so during the initial setup, you can also enter this information later via the configurator.

Once you have entered your Nightscout credentials, you can navigate to the Nightscout tab within the AndroidAPS app. In this tab, you can see which data is being forwarded to your Nightscout website.

Linking AndroidAPS to Nightscout allows you to seamlessly transmit your diabetes data to your Nightscout website, where it can be accessed and monitored in real-time. This provides you, your loved ones, and your healthcare provider with valuable insights into your diabetes management.

### ***3.5 Linking AndroidAPS App to Smartwatch***

When it comes to linking the AndroidAPS app to a smartwatch, there are several options available:

- If you have a smartwatch running the Wear operating system, you can not only view your AndroidAPS data on the watch but also perform actions such as giving a bolus or setting a temporary target value. You can find information on which watches have been tested and how to set them up in the AndroidAPS documentation.

- Another option is to forward the sensor data from xDrip+ to your smartwatch. This allows you to view your glucose data on the watch, but you won't have the ability to control your insulin pump or give commands to it. Different types of smartwatches may have specific options for integrating with xDrip+, you can find m<span class="mark">ore information on the xDrip documentation</span>

<span class="mark">In this chapter, we explored the different connection</span>s available in AndroidAPS. From CGM sensors to insulin pumps and Nightscout, these links enable seamless communication for effective diabetes management. By establishing these connections, users can fully leverage the capabilities of AndroidAPS and take control of their diabetes.

