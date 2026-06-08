<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q8L4VDlKQg2_fse5JjMEo-p -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/VIDEO_ID_AQUI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>5. Creación e interpretación de informes</u>**

En este vídeo exploraremos el proceso de creación e interpretación de informes en
Nightscout, que se utiliza junto con iAPS.
Los vídeos anteriores han cubierto los pasos para crear un sitio web Nightscout y
conectar su aplicación iAPS a Nightscout para la transmisión de datos cada 5
minutos.
Ahora, profundizaremos en las características y funcionalidades de la interfaz y los
informes de Nightscout, ayudándote a entender y aprovechar la valiosa información
que proporcionan para el control de tu diabetes.
5.1 Interfaz de Nightscout
En la interfaz de Nightscout, la página web suele ser negra y puede personalizarse
según tus preferencias. Estas son las diferentes secciones de un sitio web
Nightscout:
1.​ La barra de título muestra el nombre de tu sitio a la izquierda e incluye
botones a la derecha, como el botón de menú con varias opciones de

configuración. También puede encontrar iconos de edición y audio, que se
utilizan raramente.

Dependiendo de tu estado de autenticación, también

verás un signo más, donde puedes registrar tratamientos.
2.​ Información del sistema: La sección de información del sistema muestra la
información actual de todos los sistemas conectados a Nightscout. Puede
incluir cajas grises o plugins, que proporcionan detalles adicionales cuando
se pasa el ratón por encima. En Nightscout llamamos a estas píldoras
3.​ Información sobre el usuario y el tratamiento: La sección de información
sobre el usuario y el tratamiento muestra información sobre ti y tus
tratamientos. Encontrarás pastillas o abreviaturas que se explicarán con más
detalle en la sección de ajustes.
4.​ Insulina basal: La sección de insulina basal muestra tu liberación de insulina
basal.
5.​ Glucosa del sensor y tratamientos: La sección de glucosa del sensor y
tratamientos muestra las lecturas de glucosa de tu sensor, los tratamientos
con carbohidratos y/o insulina, así como las predicciones de iAPS.
6.​ Historial de datos: Esta sección del historial de datos muestra las últimas 48
horas de datos.
En Nightscout, puedes acceder a varios ajustes a través del menú hamburguesa de
la parte superior. Aquí tienes un resumen de las opciones disponibles:
-​ Informes: Permite generar informes.
-​ Perfil y Nutrición: A través del Perfil y el Editor de Alimentación puedes
cambiar los ajustes, aunque estos suelen gestionarse a través de la app iAPS
y no de Nightscout.
-​ Las Herramientas de administración te permiten crear tokens de acceso para
compartir datos con proveedores sanitarios o familiares.
-​ Configuración de la cuenta: La configuración de la cuenta ofrece opciones
para ajustar las unidades, el formato de hora, el idioma y mucho más.
También puedes personalizar la apariencia de tu cuenta Nightscout,

incluyendo la visualización de plugins o pastillas. Además, en esta sección se
explican las abreviaturas utilizadas en la interfaz.
-​ Guardar la configuración: Los cambios se pueden guardar si introduces tu
contraseña API. Debajo puedes ver el estado de autenticación.
Explorando estas opciones y realizando los ajustes oportunos, puedes personalizar
tu experiencia con Nightscout para adaptarla a tus necesidades.
5.2 Tipos de informes
Cuando utilizas iAPS, puedes acceder a los informes a través de tu página web
Nightscout mediante el menú de la parte superior derecha.
Algunos de los principales informes a los que puedes acceder son:
-​ Informes diarios: Muestran cómo el algoritmo ajusta la insulina basal y
proporcionan información sobre la administración de microbolos.
-​ Informe de distribución: Este informe muestra el Tiempo dentro del intervalo,
el Tiempo por debajo del intervalo y la HbA1c estimada. El Coeficiente de
Variación puede calcularse dividiendo la desviación estándar por el nivel
medio de glucosa y multiplicándolo por 100.
-​ El Informe de Gráfico Percentil ofrece una imagen similar a la del Perfil de
Glucosa Ambulatoria para analizar las tendencias de la glucosa.
-​ El Informe de Perfiles permite revisar y registrar los ajustes de insulina, como
la duración de la insulina, la proporción de carbohidratos, la sensibilidad a la
insulina, la tasa de insulina basal y el valor objetivo.
-​ Y el Informe Loopalyzer proporciona visualizaciones de los ajustes basales
medios durante un período de 24 horas dentro de un marco temporal
especificado. Esto puede ayudar a identificar patrones y tendencias en los
ajustes de insulina basal realizados por el algoritmo.
Alternativamente, los informes de Nightscout pueden visualizarse utilizando el
software Nightscout Reporter. Esta plataforma web gratuita ofrece una interfaz más
fácil de usar y permite seleccionar los informes deseados, establecer el periodo de
tiempo y generar un documento PDF para enviarlo al profesional sanitario. Entre los
interesantes informes disponibles se incluyen análisis, perfiles, gráfico de
percentiles de glucosa e informes diarios.

Hay tres formas de comentar estos informes con tu proveedor sanitario:
1.​ Puedes proporcionar a tu proveedor sanitario tu URL de Nightscout y un
token seguro que hayas creado. Esto les permite acceder y ver los informes
directamente.
2.​ Aunque no puedes generar directamente un PDF desde Nightscout, puedes
guardar los informes como archivos PDF. Sólo tienes que abrir el informe
deseado, pulsar Comando+P en Mac (o "Ctrl+P" en Windows) y seleccionar
"Guardar como PDF" como opción de impresión. De este modo se creará un
archivo PDF que podrá guardar y enviar por correo electrónico a su
profesional sanitario si lo necesita.
3.​ Otra opción es utilizar Nightscout Reporter para crear informes más
atractivos visualmente que se pueden enviar fácilmente a su proveedor de
atención médica.
Utilizando eficazmente Nightscout y Nightscout Reporter, puede proporcionar a su
proveedor de atención sanitaria informes completos que destaquen el rendimiento y
las tendencias de su control de la diabetes con iAPS.
5.3 Interpretación de los informes
En iAPS, los principales parámetros que pueden ajustarse son el valor objetivo de
glucosa, la tasa de insulina basal, la proporción de carbohidratos y la sensibilidad a
la insulina.
Esto puede hacerse a través de los Ajustes.

Es importante seguir un enfoque estructurado a la hora de interpretar los informes y
realizar ajustes. He aquí una guía detallada:
1. Evaluar la información glucémica:
-​ Compruebe en el informe de distribución si los objetivos del tratamiento, en
particular el tiempo en rango y el tiempo por debajo del rango, se están
cumpliendo en las últimas 2 a 4 semanas. Siguiendo las directrices
internacionales, el tiempo en rango debe ser superior al 70% y el tiempo por
debajo del rango debe ser inferior al 4%.
-​ Si tiene acceso al informe de análisis de Nightscout Reporter, tome nota de la
frecuencia de la bolusificación de las comidas, que se espera que sea una
media de 3 veces al día.

2. Optimizar los ajustes del AID:
-​ Analice el Perfil Ambulatorio de Glucosa para identificar tendencias de hipo o
hiperglucemia. Si detecta tendencias, intente averiguar en los informes
diarios si están relacionadas con los bolos de comida.
-​ Para las tendencias relacionadas con los bolos de comida: evalúe factores
como el momento, el recuento de carbohidratos y considere ajustar la
proporción de carbohidratos.
-​ Si la hiperglucemia posprandial es un problema, considere también la
posibilidad de utilizar una Temp Target más baja antes de las comidas.
-​ También puedes explorar la opción de insulinas de acción más rápida
como Fiasp o Lyumjev.
-​ Para tendencias después de bolos de corrección manual o después de
hiperglucemia: cambia la sensibilidad a la insulina o la duración de la acción
de la insulina, para ajustar la agresividad del algoritmo.
-​ Para tendencias fuera de las comidas o bolos: puede ajustar el valor Objetivo
de glucosa por bloque de tiempo o cambiar la tasa de insulina basal desde 1
hora antes y durante el periodo correspondiente con un 10 a 20%.
-​ También es importante explorar posibles correlaciones con bolos omitidos,
ejercicio, alcohol o hipoglucemia.
En iAPS, es importante asegurarse de que la tasa de insulina basal está ajustada
adecuadamente. Si observa un patrón consistente de aumento o disminución de la
insulina basal durante un periodo específico del día que no puede explicarse
mediante SMB o bolos manuales, por ejemplo en el Informe Loopalyzer, el objetivo
es ajustar la tasa de insulina basal en ese momento para alinearla con los requisitos
del algoritmo.
Si usted es un usuario experimentado de iAPS, y busca un ajuste adicional del perfil,
puede considerar la posibilidad de activar Autotune.
Además, también puede controlar la agresividad de la administración de insulina
del algoritmo iAPS de varias formas.
-​ Puede ajustar la configuración basal máxima y la IOB máxima.
-​ Bajar estos límites puede ayudar a prevenir la administración excesiva
de insulina, especialmente en casos de hipoglucemia frecuente.
-​ Por otro lado, si el ajuste máximo de IOB está restringiendo la
capacidad del sistema para corregir eficazmente los niveles elevados

de glucosa en sangre, puede ser necesario aumentarlo. Esto debe
hacerse con precaución.
-​ También puede ajustar los SMB cambiando el Umbral Delta-BG Máx,
activando la función UAM, cambiando los Minutos Basales SMB Máx, la
Relación de Administración SMB y el Intervalo SMB.
-​ Si utiliza ISF Dinámico, puede cambiar el Factor de ajuste, el tipo de
algoritmo, la Media ponderada de la insulina diaria total y el Ajuste del
umbral.
3. Guía Recomendaciones de comportamiento: Asegurar el uso adecuado del
sistema automatizado de administración de insulina en los informes diarios:
-​ El tiempo de uso del sensor, la activación del Modo Automático y el
cumplimiento de la bolusificación previa a las comidas pueden comprobarse
mejor en los informes Día a día.
-​ También puede comprobar el uso correcto de los objetivos temporales y los
cambios de perfil, y evaluar la sobrecorrección de la hipo o hiperglucemia.
-​ Pregunte también por la idoneidad de los ajustes de las alarmas y los
recordatorios, para evitar la fatiga de las alarmas.
4. Revise los ajustes de la bomba y los planes de emergencia:
-​ Documente los ajustes de su micro-infusor, incluyendo al menos la tasa de
insulina basal, la proporción de carbohidratos, la sensibilidad a la insulina y
el valor objetivo de glucosa.
-​ Establezca un plan de emergencia y lleve siempre consigo bolígrafos de
insulina, por si se produce un fallo en la bomba u otras emergencias.
Al realizar cambios, es importante modificar sólo un ajuste cada vez. Después de
introducir un cambio, vigile de cerca los efectos durante un periodo de 1 a 2
semanas. Es posible que su ajuste inicial no produzca los resultados deseados, en
cuyo caso, puede explorar opciones alternativas y realizar nuevos ajustes en
consecuencia. La clave es iterar y afinar sus ajustes basándose en la
retroalimentación proporcionada por sus informes Nightscout, asegurando un
rendimiento óptimo de su sistema iAPS.
Siguiendo estas directrices y teniendo en cuenta los detalles proporcionados, podrá
interpretar eficazmente los informes, optimizar los ajustes de insulina y garantizar
un uso adecuado de iAPS para mejorar la gestión de la diabetes.

6. Manejo de situaciones especiales
En este vídeo proporcionaremos consejos y recomendaciones específicos para
gestionar situaciones comunes en el control de la diabetes mientras se utiliza el
sistema de administración automática de insulina iAPS.
Estos consejos se suman a las directrices generales que se tratan en el módulo
general de sistemas AID.
Cubriremos estrategias para manejar la hipo e hiperglucemia, tratar las comidas
ricas en grasas, controlar la diabetes durante las actividades físicas, hacer frente a
la enfermedad, el alcohol y planificar los viajes.
Poniendo en práctica estos consejos, podrá optimizar su control de la glucosa y
mejorar su control general de la diabetes con iAPS.
