<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q_bNaHvdWyOfTD3H25Dg8dN -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/VIDEO_ID_AQUI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>3. Vinculación de componentes</u>**

En este videotutorial, le guiaremos a través del proceso de creación de los enlaces
necesarios dentro del sistema automatizado de administración de insulina

AndroidAPS. Estos enlaces establecen conexiones entre varios componentes para
garantizar una comunicación y un intercambio de datos fluidos.
AndroidAPS funciona de la siguiente manera:
-​ La glucemia se mide cada 5 minutos utilizando un sensor de glucosa, como
el sensor Dexcom o FreeStyle Libre.
-​ El sensor envía las lecturas de glucosa a una aplicación específica del sensor
en tu dispositivo móvil, que a su vez transmite los datos a la aplicación
AndroidAPS.
-​ AndroidAPS calcula la dosis de insulina necesaria y la envía a su bomba de
insulina, como Accu-Chek Combo o Insight, Dana, Omnipod DASH,
TouchCare Nano Pump o las antiguas bombas de Medtronic.
-​ La bomba de insulina suministra la insulina necesaria y devuelve los datos
de la vaina a la aplicación AndroidAPS.
-​ AndroidAPS comparte los datos de glucemia e insulina con Nightscout o
Tidepool, que sirve como programa de lectura.
-​ Si transmite los datos de glucemia a xDrip en su dispositivo móvil, los
cuidadores pueden supervisar los datos a distancia a través de su propia app
xDrip.
-​ Además, la aplicación AndroidAPS o xDrip pueden transmitir los datos del
sensor y de la insulina a relojes inteligentes compatibles. Algunos relojes
inteligentes permiten tambien puede administrar para controlar el remoto
como la insulina directamente desde el reloj, lo que añade comodidad al
control de la diabetes y permite conocer el estado glucémico sin necesidad
de sacar el smartphone.
En este video tutorial, le guiaremos a través del proceso de creación de varios
enlaces en el sistema automatizado de administración de insulina AndroidAPS. En
concreto, vamos a cubrir los siguientes pasos:
-​ Cómo vincular su sensor a una aplicación de sensor dedicada, permitiendo la
transmisión de las lecturas del sensor a su aplicación AndroidAPS.
-​ Cómo emparejar tu bomba insulina con AndroidAPS para una comunicación
perfecta.
-​ El proceso de creación de una cuenta Nightscout, que sirve como centro de
datos para AndroidAPS.
-​ Cómo establecer una conexión entre la aplicación AndroidAPS y Nightscout,
garantizando una transferencia fluida de los datos de glucemia e insulina.

-​ Y cómo vincular AndroidAPS a tu smartwatch.
Siguiendo estos pasos, podrá establecer los enlaces necesarios dentro del sistema
AndroidAPS, permitiendo una funcionalidad eficaz de administración automatizada
de insulina para el control de la diabetes.
3.1 Vinculación del sensor a la aplicación AndroidAPS
A la hora de vincular sensores a la aplicación AndroidAPS, existen diferentes
opciones en función del sensor que estés utilizando.
Dado que AndroidAPS no puede conectarse directamente a aplicaciones de
sensores nativas como la aplicación Dexcom o LibreLink, se requiere una aplicación
de sensores de código abierto adicional para salvar la distancia y transmitir los
datos del sensor a AndroidAPS. Puede ser xDrip+ o Juggluco, dependiendo del tipo
de sensor que tengas.
-​ xDrip+ es una potente app que puede utilizarse para diferentes sensores.
También puede conectarse a otras plataformas como Nightscout, Tidepool,
smartwatches y otros dispositivos móviles.
xDrip+, ser descargado directamente desde Play Store. En su lugar, puedes
obtenerlo desde el repositorio de GitHub. Siguiendo el enlace proporcionado,
puedes descargar el archivo APK de xDrip+ e instalarlo en tu dispositivo móvil. Una
vez instalado, se le pedirá que elija una fuente de datos dentro de la configuración
de la aplicación. Seleccione la opción adecuada en función de su tipo de sensor y
siga las instrucciones en pantalla para vincular el transmisor e iniciar el sensor.
Al utilizar xDrip con AndroidAPS, obtienes funciones adicionales como compartir
los datos de los sensores con tus seres queridos, alarmas personalizables, un
widget para smartphone, integración Bluetooth para sistemas de audio del coche e
integración con Nightscout para una gestión exhaustiva de los datos.
Si solo tienes acceso a sensores FreeStyle Libre más antiguos, necesitarás un
puente NFC a Bluetooth adicional, como un MiaoMiao Reader, Bubble o Blucon
Nightrider. Estos puentes NFC a Bluetooth pueden vincularse a aplicaciones
específicas de código abierto para recibir los valores de glucosa en tu teléfono, tras
lo cual pueden enviarse a AndroidAPS.

Mediante el uso de aplicaciones de sensores de código abierto, puede recibir
lecturas de los sensores y transmitirlas sin problemas a la aplicación AndroidAPS,
lo que permite una gestión eficaz de la diabetes a través del sistema automatizado
de administración de insulina.
3.2 Vinculación de la bomba de insulina con la aplicación AndroidAPS
Cuando utilice la aplicación AndroidAPS, tendrá la opción de vincularla a su bomba
de insulina. Al iniciar la aplicación, se le pedirá que seleccione el tipo de bomba que
está utilizando. También puede cambiar esta configuración posteriormente a través
del configurador.
Si ha elegido Omnipod DASH como su tipo de bomba, verá una pestaña dedicada a
DASH en la parte superior de la interfaz de la aplicación.
-​ En esta pestaña, puedes acceder a información sobre tu bomba Omnipod
DASH y controlar sus funciones.
-​ El botón de actualización permite a AndroidAPS establecer una conexión
con el Omnipod y recuperar su estado. Esto puede ser útil para desactivar
ciertas alarmas del Omnipod.
-​ En la sección de gestión de la bomba, encontrará cuatro opciones específicas
para el Omnipod DASH:
o​ Activar el Pod: Te guía a través de los pasos para llenar un pod con
insulina, insertarlo e iniciar su funcionamiento.
o​ Desactivar pod: permite desactivar un pod activo.
o​ Reproducir pitido de prueba: Esta opción controla las alertas auditivas
del Omnipod DASH.
o​ Historial de pods: Aquí puedes acceder al historial de tus pods
Omnipod DASH.
-​ En determinadas situaciones, puede aparecer un tercer botón en la pestaña
DASH. Puede ser el botón "Reanudar administración" o el botón "Silenciar alerta", dependiendo de las circunstancias. El botón "Reanudar
administración" puede restablecer la administración de insulina tras un
cambio de perfil, mientras que el botón "Silenciar alerta" silencia las alarmas
relacionadas con la caducidad de la vaina o el depósito de insulina bajo. La
apariencia de estos botones proporciona opciones específicas para tratar
problemas relacionados con la bomba.
-​ Estos botones son intuitivos y sirven como sustitutos de las funciones
realizadas por el "Gestor Personal de Diabetes" o PDM del Omnipod.

Aunque el PDM no es necesario si utiliza AndroidAPS, se recomienda
conservarlo como dispositivo de reserva.
Para los usuarios de otras bombas de insulina, la interfaz de la aplicación mostrará
diferentes opciones correspondientes al tipo específico de bomba. Cada tipo de
bomba tendrá su propia pestaña en la parte superior. Las opciones y ajustes
disponibles pueden variar en función del modelo de bomba.
Estos ajustes garantizan que pueda gestionar y controlar eficazmente la
administración de insulina a través de su bomba vinculada mediante la aplicación
AndroidAPS.
3.3 Crear una página web Nightscout
-​ Nightscout no es una plataforma en la que conectarse, sino un sitio web que
construyes o mandas construir, lo que puede implicar algunos costes
adicionales.
-​ Una cuenta Nightscout consiste en una URL del sitio web (nombre) y una
contraseña para acceder al sitio web.
-​ Las cuentas de Nightscout se crean como cuentas de usuario individuales.
No existe una plataforma Nightscout específica para proveedores sanitarios.
-​ Nightscout permite realizar un seguimiento en tiempo real de los datos de
tus sensores e insulina, lo que te permite compartirlos con tus seres
queridos o con tu proveedor sanitario. Además, Nightscout permite generar
informes desde tu sistema automatizado de administración de insulina
AndroidAPS.
-​ Nightscout es algo más que un sitio web para datos AndroidAPS; puede
conectarse a varios dispositivos.
-​ Nightscout actúa como eje central, recibiendo datos de los sensores y
distribuyéndolos a múltiples dispositivos como teléfonos móviles, relojes
inteligentes, ordenadores y otros dispositivos de monitorización. Ofrece
opciones para acceder a la información sobre la glucosa y mostrarla, por
ejemplo a través de relojes inteligentes, widgets de escritorio, dispositivos
montados en la pared e integración con asistentes de voz como Alexa.

-​ Hay múltiples maneras de crear un sitio web Nightscout. Nightscout es un
software de código abierto.
-​ Puedes encontrar toda la información en github.nightscout.io.
-​ Puedes montarlo tú mismo siguiendo los planos paso a paso disponibles en
Internet.
-​ O hay empresas que ofrecen servicios de configuración de Nightscout, como T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u,
Nightscout-easy y Opensource.clinic.
-​ Nightscout y sus servicios asociados no están aprobados por la FDA,
excepto el servicio de T1Pals. No cuenta con la aprobación de las
autoridades europeas, por lo que su uso corre por cuenta y riesgo del
usuario. Nightscout parece cumplir con GDPR e HIPAA, pero no reclama el
cumplimiento oficial debido a la ausencia de auditores.
-​ Es crucial manejar los datos de glucemia del sensor de forma segura y
proteger tu URL de Nightscout con una contraseña.
-​ Si quieres compartir tu sitio web Nightscout con un ser querido o con
profesionales sanitarios, se recomienda crear un token independiente para
ellos.
Siguiendo estos pasos, podrás crear un sitio web Nightscout de forma fácil y
segura, lo que te permitirá realizar un seguimiento y compartir tus datos sobre
diabetes de forma eficaz.
3.4 Vinculación de la aplicación AndroidAPS con Nightscout
Al configurar la aplicación AndroidAPS, se te pedirá que introduzcas tu URL y
contraseña de Nightscout. Si no lo has hecho durante la configuración inicial,
también puedes introducir esta información más tarde a través del configurador.
Una vez que hayas introducido tus credenciales Nightscout, puedes navegar a la
pestaña Nightscout dentro de la aplicación AndroidAPS. En esta pestaña, puedes
ver qué datos se están reenviando a tu sitio web Nightscout.

La vinculación de AndroidAPS con Nightscout le permite transmitir sin problemas
sus datos de diabetes a su sitio web Nightscout, donde se puede acceder y
supervisar en tiempo real. Esto le proporciona a usted, a sus seres queridos y a su
proveedor de atención sanitaria información valiosa sobre el control de su diabetes.
3.5 Vinculación de la aplicación AndroidAPS al Smartwatch
Cuando se trata de vincular la aplicación AndroidAPS a un smartwatch, hay varias
opciones disponibles:
-​ Si tiene un smartwatch con el sistema operativo Wear, no solo podrá ver sus
datos de AndroidAPS en el reloj, sino también realizar acciones como
administrar un bolo o establecer un valor objetivo temporal. Puede encontrar
información sobre qué relojes se han probado y cómo configurarlos en la
documentación de AndroidAPS.
-​ Otra opción es reenviar los datos del sensor de xDrip+ a tu reloj inteligente.
Esto le permitirá ver sus datos de glucosa en el reloj, pero no podrá
controlar su bomba de insulina ni darle órdenes. Diferentes tipos de
smartwatches pueden tener opciones específicas para integrarse con xDrip+,
puedes encontrar más información en la documentación de xDrip
En este capítulo, hemos explorado las diferentes conexiones disponibles en
AndroidAPS. Desde sensores CGM hasta bombas de insulina y Nightscout, estas
conexiones permiten una comunicación fluida para una gestión eficaz de la
diabetes. Al establecer estas conexiones, los usuarios pueden aprovechar al
máximo las capacidades de AndroidAPS y tomar el control de su diabetes.
