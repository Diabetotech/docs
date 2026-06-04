<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q_bNaHvdWyOfTD3H25Dg8dN -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/VIDEO_ID_AQUI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>5. Creación e interpretación de informes</u>**

En este vídeo, exploraremos el proceso de creación e interpretación de informes en
Nightscout, que se utiliza junto con AndroidAPS.
Los vídeos anteriores han cubierto los pasos para crear un sitio web Nightscout y
conectar tu aplicación AndroidAPS a Nightscout para la transmisión de datos cada
5 minutos.
A continuación, profundizaremos en las características y funcionalidades de la
interfaz y los informes de Nightscout, ayudándole a comprender y aprovechar la
valiosa información que proporcionan para el control de su diabetes.
5.1 Interfaz Nightscout
En la interfaz de Nightscout, el sitio web suele ser negro y puede personalizarse en
función de tus preferencias. Estas son las diferentes secciones de un sitio web
Nightscout:
1.​ La barra de título muestra el nombre de su sitio a la izquierda e incluye
botones a la derecha, como el botón de menú con varias opciones de
configuración. También puede encontrar iconos de edición y audio, que se
utilizan raramente. Dependiendo de su estado de autenticación, también
verá un signo más, donde puede iniciar sesión en los tratamientos.
2.​ Información del sistema: La sección de información del sistema muestra la
información actual de todos los sistemas conectados a Nightscout. Puede
incluir cajas grises o plugins, que proporcionan detalles adicionales cuando
se pasa el ratón por encima. En Nightscout llamamos a estas pastillas.
3.​ Información sobre el usuario y el tratamiento: La sección de información
sobre el usuario y el tratamiento muestra información sobre ti y tus

tratamientos. Encontrarás pastillas o abreviaturas que se explicarán más
adelante en la sección de ajustes.
4.​ Insulina basal: La sección de insulina basal muestra tu liberación basal de
insulina.
5.​ Glucosa del sensor y tratamientos: La sección de glucosa del sensor y
tratamientos muestra las lecturas de glucosa de tu sensor, los tratamientos
con carbohidratos y/o insulina, así como las predicciones de AndroidAPS.
6.​ Historial de datos: Esta sección de historial de datos muestra las últimas 48
horas de datos.
En Nightscout, puedes acceder a varios ajustes a través del menú hamburguesa de
la parte superior. Aquí tienes un resumen de las opciones disponibles:
-​ Informes: Permite generar informes.
-​ Perfil y Nutrición: A través del Perfil y el Editor de Alimentos puedes
cambiar los ajustes, aunque estos no utilizado por AndroidAPS.
-​ Las herramientas de administración le permiten crear tokens de acceso para
compartir datos con profesionales sanitarios o familiares.
-​ Configuración de la cuenta: La configuración de la cuenta ofrece opciones
para ajustar las unidades, el formato de la hora, el idioma, etc. También
puedes personalizar la apariencia de tu cuenta Nightscout, incluyendo la
visualización de plugins o pastillas. Además, esta sección explica las
abreviaturas utilizadas en la interfaz.
-​ Guardar la configuración: Los cambios se pueden guardar si introduces tu
contraseña API. Debajo puede ver el estado de autentificación. Explorando estas opciones
y realizando los ajustes apropiados, puedes

personalizar tu experiencia Nightscout para adaptarla a tus necesidades.
5.2 Tipos de informes
Si utilizas AndroidAPS, puedes acceder a los informes a través de tu sitio web
Nightscout mediante el menú de la parte superior derecha.
Algunos de los principales informes a los que puede acceder son:

-​ Informes diarios: Muestran cómo el algoritmo ajusta la insulina basal y
proporcionan información sobre la administración de microbolos.
-​ Informe de distribución: Este informe muestra el Tiempo dentro del
intervalo, el Tiempo por debajo del intervalo y la HbA1c estimada. El
Coeficiente de Variación puede calcularse dividiendo la desviación estándar
por el nivel medio de glucosa y multiplicándolo por 100.
-​ El informe de gráfico de percentiles ofrece una imagen similar a la del perfil
de glucosa ambulatorio para analizar las tendencias de la glucosa.
-​ El informe de perfiles permite revisar y registrar los ajustes de insulina,
como la duración de la insulina, la proporción de carbohidratos, la
sensibilidad a la insulina, la tasa de insulina basal y el valor objetivo.
-​ Y el Informe Loopalyzer proporciona visualizaciones de los ajustes basales
medios durante un período de 24 horas dentro de un marco temporal
especificado. Esto puede ayudar a identificar patrones y tendencias en los
ajustes de insulina basal realizados por el algoritmo.
Alternativamente, los informes de Nightscout pueden visualizarse utilizando el
software Nightscout Reporter. Esta plataforma web gratuita ofrece una interfaz
más fácil de usar y permite seleccionar los informes deseados, establecer el
periodo de tiempo y generar un documento PDF para enviarlo al profesional
sanitario. Entre los interesantes informes disponibles se incluyen análisis, perfiles,
gráfico de percentiles de glucosa e informes diarios.
Existen tres formas de comentar estos informes con su proveedor de asistencia
sanitaria:
1.​ Puedes proporcionar a tu proveedor sanitario tu URL de Nightscout y un
token seguro que hayas creado. Esto les permite acceder y ver los informes
directamente.
2.​ Aunque no puedes generar directamente un PDF desde Nightscout, puedes
guardar los informes como archivos PDF. Simplemente abre el informe
deseado, pulsa "Ctrl+P" (o Comando+P en Mac) y selecciona "Guardar como
PDF" como opción de impresión. Esto creará un archivo PDF que puede
guardar y enviar por correo electrónico a su proveedor de atención sanitaria
si es necesario.

3.​ Otra opción es utilizar Nightscout Reporter para crear informes más
atractivos visualmente que puedan remitirse fácilmente a su proveedor de
asistencia sanitaria.
Utilizando eficazmente Nightscout y Nightscout Reporter, puede proporcionar a su
proveedor de atención sanitaria informes completos que destaquen el rendimiento
y las tendencias de su control de la diabetes con AndroidAPS.
5.3 Interpretación de los informes
En AndroidAPS, los principales parámetros que pueden ajustarse son el valor
objetivo, la tasa de insulina basal, la proporción de carbohidratos y la sensibilidad a
la insulina.
Esto se puede hacer dentro de la pestaña Perfil en la aplicación AndroidAPS si toca
en una de las subpestañas.
Es importante seguir un planteamiento estructurado a la hora de interpretar los
informes y realizar ajustes. Aquí tienes una guía detallada:
1. Evaluar la información glucémica:
-​ Compruebe en el informe de distribución si se están cumpliendo los
objetivos del tratamiento, en particular el tiempo dentro de rango y el
tiempo por debajo de rango, en las últimas 2 a 4 semanas. Siguiendo las
directrices internacionales, el tiempo en rango debe ser superior al 70% y el
tiempo por debajo del rango debe ser inferior al 4%.
-​ Si tienes acceso al informe de análisis de Nightscout Reporter, toma nota de
la frecuencia con la que se realizan los bolos de comida, que se espera que
sea una media de 3 veces al día.
2. Optimizar la configuración de AID:
-​ Analice el Perfil Ambulatorio de Glucosa para identificar tendencias de hipo
o hiperglucemia. Si detecta tendencias, intente averiguar en los informes
diarios si están relacionadas con bolos de comida.
-​ Para las tendencias relacionadas con los bolos de comida: evaluar factores
como el momento, el recuento de hidratos de carbono y considerar la
posibilidad de ajustar la proporción de hidratos de carbono.

-​ Si la hiperglucemia postprandial es un problema, considere también
la posibilidad de utilizar el objetivo Comer pronto antes de las
comidas.
-​ También puedes explorar la opción de insulinas de acción más rápida
como Fiasp o Lyumjev.
-​ Para las tendencias después de bolos de corrección manual o después de
hiperglucemia: cambiar la sensibilidad a la insulina o la duración de la acción
de la insulina, para ajustar la agresividad del algoritmo.
-​ También puede controlar la agresividad de la administración de insulina del
algoritmo AndroidAPS ajustando los valores máximo basal y máximo IOB. -​ La reducción de estos límites puede ayudar a evitar una
administración excesiva de insulina, especialmente en casos de
hipoglucemia frecuente.
-​ Por otro lado, si el ajuste máximo de IOB está restringiendo la
capacidad del sistema para corregir eficazmente los niveles altos de
glucosa en sangre, puede ser necesario aumentarlo. Esto debe
hacerse con precaución.
-​ Para tendencias fuera de las comidas o bolos: puedes ajustar el Valor
Objetivo por bloque de tiempo o cambiar la tasa de insulina basal desde 1
hora antes y durante el periodo correspondiente con un 10 a 20%.
También es importante explorar las posibles correlaciones con la omisión de bolos,
el ejercicio, el alcohol o la hipoglucemia.
En AndroidAPS, es importante asegurarse de que la tasa de insulina basal está
correctamente ajustada. Si observa un patrón consistente de aumento o
disminución de la insulina basal durante un periodo específico del día que no puede
explicarse por la SMB o la bolización manual, por ejemplo en los Informes diarios,
el objetivo es ajustar la tasa de insulina basal en ese momento para alinearla con
los requisitos del algoritmo.
Si usted es un usuario experimentado de AndroidAPS, y busca un ajuste adicional
del perfil, puede considerar el uso de Autotune. Se trata de una herramienta web
para calcular los ajustes óptimos de insulina basal, sensibilidad a la insulina y
proporción de carbohidratos. Introduciendo la URL de tu Nightscout en el sitio web
de Autotune, puedes dejar que el programa calcule tus ajustes ideales basándose

en los resultados de glucosa de tu sensor. Si Autotune sugiere desviaciones
significativas de tus ajustes actuales, puedes considerar ajustarlos.
-​ Tenga en cuenta que Autotune requiere valores fijos para la proporción de
carbohidratos y la sensibilidad a la insulina.
-​ Y que Autotune puede no funcionar si Nightscout tiene medidas de
seguridad adicionales como un token.
3. Guía Recomendaciones de comportamiento: Garantizar el uso correcto del
sistema de circuito cerrado en los informes diarios:
-​ El tiempo de uso del sensor, la activación del modo automático y el
cumplimiento de la administración de bolos antes de las comidas pueden
comprobarse mejor en los informes diarios.
-​ También puede comprobar el uso correcto de los objetivos temporales y los
cambios de perfil, y evaluar la sobrecorrección de la hipo o hiperglucemia.
-​ Pregunta también por la idoneidad de los ajustes de la alarma y los
recordatorios, para evitar la fatiga de la alarma.
4. Revisar los ajustes de las bombas y los planes de emergencia:
-​ Documente los ajustes de su bomba, incluyendo al menos su tasa de
insulina basal, la proporción de carbohidratos, la sensibilidad a la insulina y
el valor objetivo.
-​ Establezca un plan de emergencia y lleve siempre consigo bolígrafos de
insulina, en caso de avería de la bomba u otras emergencias.
Al realizar cambios, se recomienda modificar un ajuste cada vez. Después de
introducir un cambio, vigile de cerca los efectos durante un periodo de 1 a 2
semanas. Es posible que su ajuste inicial no produzca los resultados deseados, en
cuyo caso puede explorar opciones alternativas y realizar nuevos ajustes en
consecuencia. La clave está en iterar y afinar sus ajustes basándose en la
retroalimentación proporcionada por sus informes Nightscout, asegurando un
rendimiento óptimo de su sistema AndroidAPS.
Siguiendo estas directrices y teniendo en cuenta los detalles proporcionados, podrá
interpretar eficazmente los informes, optimizar los ajustes de insulina y garantizar
un uso adecuado de AndroidAPS para mejorar el control de la diabetes.

6. Gestión de situaciones especiales
En este vídeo, proporcionaremos consejos y recomendaciones específicos para
gestionar situaciones comunes en el control de la diabetes mientras se utiliza el
sistema de administración automatizada de insulina AndroidAPS.
Abordaremos estrategias para tratar la hipo e hiperglucemia, hacer frente a las
comidas ricas en grasas, controlar la diabetes durante las actividades físicas, hacer
frente a la enfermedad, el alcohol y la planificación de los viajes.
Poniendo en práctica estos consejos, podrá optimizar el control de su glucosa y
mejorar el control general de su diabetes con AndroidAPS.
