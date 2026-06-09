<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q_3-rdjl0lwkOoI45uogJZB -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/VIDEO_ID_AQUI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>5. Creación e interpretación de informes</u>**

En este vídeo, exploraremos el proceso de creación e interpretación de informes en Nightscout, que se utiliza junto con Trio. Los vídeos anteriores han explicado los pasos para crear un sitio web Nightscout y conectar tu aplicación Trio a Nightscout para la transmisión de datos cada 5 minutos. Ahora, profundizaremos en las características y funcionalidades de la interfaz y los informes de Nightscout, lo que le ayudará a comprender y aprovechar la valiosa información que proporcionan para controlar su diabetes.

### 5.1 Interfaz Nightscout

En la interfaz de Nightscout, el sitio web suele ser negro y se puede personalizar según tus preferencias. Estas son las diferentes secciones de un sitio web de Nightscout:

- La barra de título muestra el nombre de su sitio a la izquierda e incluye botones a la derecha, como el botón de menú con varias opciones de configuración. También puede encontrar iconos de edición y audio, que rara vez se utilizan. Dependiendo de su estado de autenticación, también verá un signo más, donde puede registrar los tratamientos.

- Información del sistema: La sección de información del sistema muestra la información actual de todos los sistemas conectados a Nightscout. Puede incluir cuadros grises o complementos que proporcionan detalles adicionales al pasar el cursor por encima. En Nightscout los llamamos «píldoras».

- Información sobre el usuario y el tratamiento: La sección de información sobre el usuario y el tratamiento muestra información sobre usted y sus tratamientos. Encontrará píldoras o abreviaturas que se explicarán con más detalle en la sección de configuración.

- Insulina basal: La sección de insulina basal muestra su liberación de insulina basal.

- Glucosa del sensor y tratamientos: La sección «Glucosa del sensor y tratamientos» muestra las lecturas de glucosa del sensor, los tratamientos con carbohidratos y/o insulina, así como las predicciones de Trio.

- Historial de datos: esta sección muestra los datos de las últimas 48 horas. En Nightscout, puedes acceder a varios ajustes a través del menú hamburguesa situado en la parte superior. A continuación te ofrecemos una descripción general de las opciones disponibles:

- Informes: le permite generar informes.

- Perfil y nutrición: A través del editor de perfiles y alimentos, puede cambiar la configuración, aunque normalmente esta se gestiona a través de la aplicación Trio en lugar de Nightscout.

- Las herramientas de administración le permiten crear tokens de acceso para compartir datos con proveedores de atención médica o familiares.

- Configuración de la cuenta: La configuración de la cuenta ofrece opciones para ajustar las unidades, el formato de hora, el idioma y mucho más. También puede personalizar el aspecto de su cuenta Nightscout, incluida la visualización de complementos o píldoras. Además, en esta sección se explican las abreviaturas utilizadas en la interfaz.

- Guardar configuración: los cambios se pueden guardar si introduces tu contraseña API. Debajo, puedes ver el estado de la autenticación. Al explorar estos ajustes y realizar los cambios adecuados, puedes personalizar tu experiencia con Nightscout para que se adapte a tus necesidades.

### 5.2 Tipos de informes

Cuando utilices Trio, podrás acceder a los informes a través de tu sitio web Nightscout mediante el menú situado en la parte superior derecha. Algunos de los informes clave a los que puede acceder incluyen:

- Informes diarios: muestran cómo el algoritmo ajusta la insulina basal y proporcionan información sobre la administración de microbolos.

- Informe de distribución: este informe muestra el tiempo dentro del rango, el tiempo por debajo del rango y la HbA1c estimada. El coeficiente de variación se puede calcular dividiendo la desviación estándar por el nivel medio de glucosa y multiplicándolo por 100.

- El informe del gráfico percentil ofrece una imagen similar al perfil de glucosa ambulatorio para analizar las tendencias de glucosa.

- El informe de perfiles le permite revisar y registrar los ajustes de insulina, como la duración de la insulina, la proporción de carbohidratos, la sensibilidad a la insulina, la tasa de insulina basal y el valor objetivo. Los ajustes del algoritmo no se guardan.

- El informe Loopalyzer proporciona visualizaciones de los ajustes basales medios durante un periodo de 24 horas dentro de un intervalo de tiempo específico. Esto puede ayudar a identificar patrones y tendencias en los ajustes de insulina basal realizados por el algoritmo. Como alternativa, los informes de Nightscout se pueden visualizar utilizando el software Nightscout Reporter. Esta plataforma web gratuita ofrece una interfaz más fácil de usar y le permite seleccionar los informes deseados, establecer el período de tiempo y generar un documento PDF para enviarlo a su proveedor de atención médica. Entre los informes interesantes disponibles se incluyen análisis, perfiles, gráficos de percentiles de glucosa e informes diarios. Hay tres maneras de hablar sobre estos informes con su proveedor de atención médica:

- Puede proporcionar a su proveedor de atención médica la URL de Nightscout y un token seguro que haya creado. Esto les permitirá acceder y ver los informes directamente.

- Aunque no es posible generar un PDF directamente desde Nightscout, sí se pueden guardar los informes como archivos PDF. Solo hay que abrir el informe deseado, pulsar Comando+P en Mac (o «Ctrl+P» en Windows) y seleccionar «Guardar como PDF» como opción de impresión. De este modo, se creará un archivo PDF que se podrá guardar y enviar por correo electrónico al proveedor de atención médica si es necesario.

- Otra opción es utilizar Nightscout Reporter para crear informes más atractivos visualmente que se pueden reenviar fácilmente a su proveedor de atención médica. Al utilizar eficazmente Nightscout y Nightscout Reporter, puede proporcionar a su proveedor de atención médica informes completos que destaquen el rendimiento y las tendencias de su control de la diabetes con Trio.

### 5.3 Interpretación de informes

En Trio, los principales parámetros que se pueden ajustar son el valor objetivo de glucosa, la tasa de insulina basal, la proporción de carbohidratos, la sensibilidad a la insulina, los límites de administración, como la basal máxima y la insulina máxima en circulación, y la configuración del SMB. Esto se puede hacer a través de la configuración. Es importante seguir un enfoque estructurado a la hora de interpretar los informes y realizar ajustes. A continuación se ofrece una guía detallada:
