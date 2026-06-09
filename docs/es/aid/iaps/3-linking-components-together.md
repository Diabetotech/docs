<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q8L4VDlKQg2_fse5JjMEo-p -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/VIDEO_ID_AQUI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>3. Actualizaciones del software</u>**

Las actualizaciones periódicas del software son cruciales para mantener un rendimiento óptimo y acceder a las últimas funciones de iAPS. El equipo de iAPS publica nuevas versiones periódicamente. Estas actualizaciones suelen incluir correcciones de errores y mejoras para aumentar la funcionalidad del sistema. La versión de iAPS se menciona en la parte superior de la pantalla de Configuración, y debajo de qué "Rama" del desarrollo se está utilizando. Si hay una versión "principal" más reciente, la versión más reciente se menciona debajo de la línea "rama", para indicar la(s) versión(es) "más reciente(s)" disponible(s). Una vez cada 3 meses tendrás que actualizar tu aplicación iAPS. Para actualizar iAPS, sigue estos pasos:

- Es una buena práctica actualizar los ajustes de tu iPhone en iCloud. De esta forma todos tus ajustes del iAPS tendrán una copia de seguridad en iCloud. Puedes hacer una copia de seguridad de tu iPhone a través de los ajustes.

- Cuando construyas, mantén las mismas claves de firma que en la instalación anterior.

- Si utiliza el método "Build iAPS with script", utilizará Xcode para actualizar el código a la nueva versión, mientras su iPhone y Apple Watch están conectados y encendidos.

- En el caso del método "Browser build", una vez ejecutado con éxito el proceso de compilación, la nueva versión necesita ser instalada a través de una descarga de Testflight. Si se encuentra con algún problema, mantenga la calma y busque ayuda en la comunidad iAPS y en la documentación. Recuerde que la resolución de problemas es una parte normal del uso del software y que, con paciencia, podrá superar cualquier dificultad que surja. En conclusión, mantenerse informado y proactivo con iAPS es clave para optimizar el control de su diabetes. Si se mantiene al día de las actualizaciones del software, sigue las directrices de atención y aborda cualquier problema con prontitud, podrá garantizar una experiencia eficaz y sin problemas. Dé prioridad a la seguridad, mantenga registros precisos y utilice los recursos de apoyo disponibles. Aproveche las posibilidades que le ofrece iAPS para mejorar su salud y bienestar.

3. Vinculación de componentes En este vídeo tutorial, le guiaremos a través del proceso de creación de los enlaces necesarios dentro del sistema automatizado de administración de insulina iAPS. Estos enlaces establecen conexiones entre varios componentes para garantizar una comunicación y un intercambio de datos fluidos. El iAPS funciona de la siguiente manera:

- La glucemia se mide cada 1 a 5 minutos utilizando un sensor de glucosa, como Dexcom G6, G7, Dexcom ONE Plus, FreeStyle Libre 2 o FreeStyle Libre 2 Plus.

- Después de iniciar su sensor con su app Dexcom o LibreLink, el sensor envía las lecturas de glucosa directamente a su app iAPS, excepto para el Dexcom G7 y el Dexcom ONE Plus, donde la app Dexcom necesita permanecer activa.

- iAPS calcula la dosis de insulina necesaria y la envía a su bomba de insulina, como Omnipod DASH, Dana-I, TouchCare Nano, Omnipod Eros, DanaRS (solo firmware 3) o las antiguas bombas de Medtronic.

- La bomba de insulina suministra la insulina necesaria y devuelve los datos de la bomba a la aplicación iAPS.

- iAPS comparte los datos de glucemia e insulina con Nightscout, que sirve como programa de lectura. iAPS también comparte esta información con Apple Health, y las aplicaciones Dexcom y LibreLink envían los datos de glucosa a Dexcom Clarity y LIbreView respectivamente.

- Además, la app iAPS ofrece una versión para Apple Watch que se instala durante el mismo proceso de construcción e instalación. Esto le permite ver sus valores de glucosa en tiempo real en su Apple Watch,y administrar insulina en bolos e incluso activar Perfiles predefinidos directamente desde su Apple Watch, añadiendo comodidad a su control de la diabetes.

- Recientemente se ha añadido compatibilidad con Garmin Watch.

- iAPS también proporciona eventos del calendario y, junto con Apple CarPlay, permite el seguimiento visual del valor y de la evolución de los carbohidratos en la pantalla de CarPlay mientras se conduce. En este videotutorial, le guiaremos a través del proceso de creación de varios enlaces en el sistema automatizado de administración de insulina iAPS. En concreto, cubriremos los siguientes pasos:

- Cómo vincular su sensor de glucosa a su aplicación iAPS.

- Cómo emparejar tu Omnipod DASH.

- El proceso de creación de una cuenta Nightscout, que sirve como centro de datos para iAPS.

- Cómo establecer una conexión entre la app iAPS y Nightscout, asegurando la transferencia fluida de datos de glucemia e insulina.

- Y cómo configurar iAPS en tu Apple Watch. Siguiendo estos pasos, podrá establecer los enlaces necesarios dentro del sistema iAPS, lo que permitirá una funcionalidad eficaz de administración automatizada de insulina para el control de la diabetes.

### 3.1 Vinculación del sensor con la aplicación iAPS

Vamos a profundizar en el proceso de conexión de los sensores más utilizados como el FreeStyle Libre 2, 2 Plus, Dexcom G6, G7 y ONE Plus. Para los sensores europeos FreeStyle Libre 2 o 2 Plus, el paso inicial consiste en iniciar el sensor a través de la aplicación LibreLink. Tras el periodo de calentamiento de una hora, puedes realizar la conexión entre tu sensor y la app iAPS. En iAPS, vaya a Ajustes, seleccione MGC y, a continuación, elija Libre Transmitter. Pulse la opción de configuración para seleccionar Libre 2 Direct. Aquí, puede iniciar el proceso de emparejamiento y escanear su sensor. Esto permite a iAPS recibir directamente los datos de su sensor FreeStyle Libre 2 o 2 Plus. Una vez escaneado, la información de su sensor aparecerá en la pantalla, y la glucosa actual de su sensor será visible en la pantalla de inicio de iAPS. Después de 14 días, el sensor FreeStyle Libre 2 o 2 Plus dejará de funcionar. Puede iniciar un nuevo sensor a través de la aplicación LibreLink e iAPS. Para asegurarse de que iAPS capta la señal correcta del sensor, es aconsejable reiniciar el iPhone y colocar el sensor antiguo en una habitación separada. Si quieres valores de glucosa ininterrumpidos, puedes cambiar tu sensor en la app LibreLink primero y después en la app iAPS tras el periodo de calentamiento. Es bueno saber que la vida útil de los sensores FreeStyle Libre 2 en la app iAPS se extiende 12 horas más que en la app LibreLink. Para los sensores Dexcom G6, primero inicie el sensor utilizando la app Dexcom G6. A continuación, conecta tu sensor Dexcom G6 a la app iAPS seleccionando Dexcom G6 e introduciendo el número de serie del transmisor. Tras un calentamiento de dos horas, recibirás tus resultados. Para el sensor Dexcom G7 y Dexcom ONE Plus, inicie el sensor utilizando la app Dexcom G7 o Dexcom ONE Plus, preferiblemente después del periodo de calentamiento de al menos 30 min, para permitir la superposición de los sensores. Dentro de iAPS, seleccione Dexcom G7 para ambos tipos de sensores. iAPS debería detectar automáticamente la señal del sensor. Puede optar por recibir las alertas del sensor desde la aplicación LibreLink o Dexcom o a través de la aplicación iAPS a través de Notificaciones en Ajustes. La aplicación iAPS sólo tiene alertas de glucosa alta y baja, ofreciendo tipos de alerta mínimos. Si necesita más opciones de alerta, considere la posibilidad de utilizar la aplicación nativa del sensor o una aplicación de código abierto como xDrip4iOS.

### 3.2 Vinculación de la bomba de insulina con la aplicación iAPS

La mayoría de las personas utilizarán iAPS con una bomba de insulina Omnipod DASH. Si desea utilizar Omnipod Eros o una bomba Medtronic más antigua, tendrá que utilizar un enlace Riley. Le mostraremos el proceso de vinculación de un Pod Omnipod DASH.

- Primero ve a Ajustes y selecciona Omnipod DASH.

- Primero se te pedirá que configures el recordatorio de caducidad, el recordatorio de depósito bajo y el tipo de insulina.

- A continuación, puede pulsar Omnipod DASH para ir a la pantalla de la bomba y seleccionar "Emparejar Pod". La aplicación le guiará por los diferentes pasos, de forma similar a como lo hace el Omnipod DASH PDM. Primero llene su Pod con insulina, luego conéctelo, retire el protector de la aguja y coloque el Pod en su cuerpo. Por último, continúa insertando la cánula. Una vez emparejado su Pod, verá una ventana emergente dedicada a DASH en la interfaz de la aplicación. Si la pulsas, irás a la pantalla de la bomba, donde podrás acceder a información sobre tu bomba Omnipod DASH y controlar sus funciones. Los botones son intuitivos y sirven para sustituir las funciones que realiza el PDM del Omnipod. Aunque el PDM no es necesario si utiliza iAPS, se recomienda conservarlo como dispositivo de reserva. Para los usuarios de otras bombas de insulina, la interfaz de la app mostrará diferentes opciones correspondientes al tipo específico de bomba. Estas funciones garantizan que pueda gestionar y controlar eficazmente la administración de insulina a través de su bomba vinculada mediante la aplicación iAPS.

### 3.3 Crear un sitio web Nightscout

Nightscout no es una plataforma en la que entrar, sino un sitio web que construyes o mandas construir, lo que puede implicar algunos costes adicionales. Una cuenta Nightscout consiste en una URL del sitio web (nombre) y una contraseña para acceder al sitio web. Las cuentas Nightscout se crean como cuentas de usuario individuales. No existe una plataforma Nightscout específica para profesionales sanitarios. Nightscout permite el seguimiento en tiempo real de los datos de tus sensores e insulina, permitiéndote compartirlos con tus seres queridos o con tu proveedor sanitario. Además, Nightscout es el método exclusivo para generar informes de tu sistema automatizado de administración de insulina iAPS. Nightscout es más que un simple sitio web para los datos de iAPS; puede conectarse a varios dispositivos. Nightscout actúa como eje central, recibiendo datos de los sensores y distribuyéndolos a múltiples dispositivos como teléfonos móviles, relojes inteligentes, ordenadores y otros dispositivos de monitorización. Ofrece diversas opciones para acceder a la información sobre la glucosa y mostrarla, por ejemplo a través de relojes inteligentes, widgets de escritorio, dispositivos montados en la pared e integración con asistentes de voz como Alexa. Hay varias formas de crear un sitio web de Nightscout. Nightscout es un software de código abierto. Puedes encontrar toda la información en github.nightscout.io.

- Puedes configurarlo tú mismo utilizando los planes paso a paso disponibles en línea.

- O hay empresas que ofrecen servicios de configuración de Nightscout, como T1Pal, NS10BE, Nightscout Pro, Serendipity Bio, Nightscout4u, Nightscout-easy y Opensource.clinic.

- Nightscout y sus servicios asociados no están aprobados por la FDA, excepto el servicio de T1Pals.

- No cuenta con la aprobación de las autoridades europeas, por lo que su uso queda bajo su propia responsabilidad.

- Nightscout parece cumplir con GDPR e HIPAA, pero no afirma su cumplimiento oficial debido a la ausencia de auditores.

- Es crucial manejar los datos de glucemia del sensor de forma segura y proteger tu URL de Nightscout con una contraseña.

- Si quieres compartir tu sitio web Nightscout con un ser querido o con profesionales sanitarios, se recomienda crear un token separado para ellos. Siguiendo estos pasos, puedes crear un sitio web Nightscout de forma fácil y segura, permitiéndote hacer un seguimiento y compartir tus datos de diabetes de forma efectiva.

### 3.4 Vinculación de la aplicación iAPS con Nightscout

Para conectar tus datos iAPS a tu sitio web Nightscout, sólo tienes que ir a Configuración, luego Nightscout, e introducir tu URL y contraseña de Nightscout. Una vez conectados, tus datos de iAPS aparecerán en tu sitio web de Nightscout. Esto te proporciona a ti, a tu familia y a tu médico información en tiempo real sobre cómo estás controlando tu diabetes. Si activas la opción "Control remoto", las personas de confianza pueden administrarte insulina, introducir carbohidratos o ajustar la configuración de tu insulina utilizando sus datos de acceso a Nightscout.

### 3.5 Aplicación iAPS en el Apple Watch

El uso de un Apple Watch no sólo le permitirá seguir la glucosa de su sensor y la insulina a bordo en su muñeca, sino que también le permitirá añadir carbohidratos, bolos y seleccionar/fijar/detener un perfil desde su reloj. iAPS se descargará automáticamente en tu Apple Watch conectado. En tu Apple Watch, puedes establecer una complicación iAPS en una esfera de reloj modular. Si tocas la complicación iAPS en la esfera de tu reloj, verás una pantalla iAPS en la que podrás ver tus datos de glucosa y bucle, tu insulina a bordo y 3 botones de acción. Aquí puedes administrar un bolo de insulina basado en los carbohidratos que vas a comer, seleccionar/configurar/detener un perfil o administrar un bolo de insulina manual. En este capítulo hemos explorado las diferentes conexiones disponibles en iAPS. Desde los sensores de glucosa hasta las bombas de insulina y Nightscout, estas conexiones permiten una comunicación fluida para una gestión eficaz de la diabetes. Al establecer estas conexiones, los usuarios pueden aprovechar al máximo las capacidades de iAPS y tomar el control de su diabetes.
