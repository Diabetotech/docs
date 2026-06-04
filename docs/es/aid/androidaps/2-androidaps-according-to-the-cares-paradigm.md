<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q_bNaHvdWyOfTD3H25Dg8dN -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/VIDEO_ID_AQUI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>2. AndroidAPS según el paradigma CARES</u>**

En este vídeo, cubriremos AndroidAPS según el paradigma CARES.
Hablaremos de cómo AndroidAPS calcula y ajusta la administración automatizada
de insulina, cuándo vuelve al Modo Manual, consejos específicos de educación y
problemas con el sensor, y cómo comparte los datos. Después repasaremos las
indicaciones de AndroidAPS y las actualizaciones del software. ¡Vamos a empezar!
2.1 AndroidAPS según el paradigma CARES
#1 Calcular
En AndroidAPS, la tasa de insulina basal preestablecida se ajusta en función de la
glucemia prevista para las próximas 5 a 9 horas. Aquí tienes un desglose de cómo
funciona AndroidAPS:
-​ AndroidAPS combina diferentes predicciones de glucemia o "BG" para
calcular la glucemia mínima prevista:
o​ Android APS calcula la glucemia prevista de carbohidratos na, que es
una predicción basada en los carbohidratos a bordo,
o​ una glucemia prevista de insulina, que es una predicción basada en la
insulina a bordo,

o​ una predicción de glucemia en comidas no anunciadas, que es una
predicción en caso de consumo de carbohidratos no anunciado,
o​ y una glucemia prevista a temperatura cero, que es el peor escenario
posible, en caso de que de repente deje de administrarse insulina o
dejen de absorberse hidratos de carbono.
-​ AndroidAPS tiene en cuenta cualquier error en las predicciones porque la
predicción de la glucemia eventual se ajusta en función de la desviación
entre la glucosa actual y la prevista, también conocida como impacto de la
glucemia. El algoritmo también tiene en cuenta la tendencia de la glucemia
calculando el delta o diferencia entre la glucemia actual y la pasada. Y
también tiene en cuenta el impulso de la glucosa a corto y largo plazo, que
es la cantidad de cambio entre la glucosa actual y la glucosa de hace 15 y
40 minutos.
-​ La necesidad de insulina o InsulReq se calcula restando la glucemia objetivo
de la glucemia mínima prevista, y dividiendo esta diferencia por la
sensibilidad a la insulina o ISF. Este requerimiento de insulina determinará si
se debe aumentar o disminuir la insulina basal preestablecida manualmente.
-​ Si se prevé hipoglucemia, se suspenderá la insulina basal y se recomendarán
hidratos de carbono de rescate.
AndroidAPS ofrece dos opciones para la administración de insulina: OpenAPS
Advanced Meal Assist (o AMA) y OpenAPS SuperMicroBolus (o SMB).
-​ En AMA, la insulina necesaria se administra como basal temporal con una
duración y una tasa de insulina determinadas.
-​ En la SMB, la mitad de las basales temporales calculadas se administra
como un microbolo, administrando la misma dosis de insulina más
rápidamente, seguida de una pausa temporal en la administración de
insulina basal. Estas basales temporales o supermicrobolos se recalculan
cada 5 minutos y pueden ajustarse dentro de unos parámetros de seguridad
predefinidos.
AndroidAPS ofrece funciones opcionales como Autosens y detección de comidas
sin previo aviso.

-​ Autosens es una función de AndroidAPS que aumenta o disminuye la
administración de insulina en función de la sensibilidad a la insulina del
usuario durante las últimas 4, 8 o 24 horas.
o​ Calcula un porcentaje que refleja cómo la sensibilidad a la insulina en
las últimas horas difiere de la sensibilidad establecida actualmente, y
utiliza ese % para ajustar la sensibilidad a la insulina y la tasa de
insulina basal.
o​ La función autosens también puede aplicarse al valor objetivo,
ajustándolo en función de la relación de sensibilidad calculada.
o​ La función autosens no integra en su cálculo el periodo en el que los
carbohidratos están a bordo. Si utiliza la función autosens, es
importante introducir todos los carbohidratos ingeridos. De lo contrario, las desviaciones de carbohidratos se identificarán
erróneamente como un cambio de sensibilidad. Por otra parte, si come
carbohidratos continuamente durante un periodo prolongado, la
eficacia de autosens se reducirá durante ese periodo.
o​ El cambio de un Pod o de un equipo de infusión, o el cambio de un
perfil, restablecerá la relación Autosens al 100%.
-​ El uso de la función Comida No Anunciada permite al algoritmo SMB
reconocer comidas no anunciadas. Esto es útil si olvida informar a
AndroidAPS sobre sus carbohidratos o estima mal sus carbohidratos y la
cantidad de carbohidratos introducidos es incorrecta o si una comida con
mucha grasa y proteína tiene una duración más larga de lo esperado. Sin
ninguna entrada de carbohidratos, UAM puede reconocer incrementos
rápidos de glucosa causados por carbohidratos, adrenalina, etc., e intenta
ajustarlo con supermicrobolos. Esto también funciona a la inversa: si se
produce un descenso rápido de la glucosa, puede detener antes los
supermicrobolos.
El valor objetivo de la glucemia puede ajustarse entre 80 y 200 mg/dl o 4,4 y 11
mmol/l.
AndroidAPS concede una gran prioridad a la seguridad e incorpora diversos ajustes
y límites de seguridad para evitar una administración de insulina potencialmente
peligrosa. Para garantizar que los usuarios configuran el sistema correctamente y
comprenden su funcionalidad, AndroidAPS incluye una serie de Objetivos.

-​ Estos Objetivos sirven de guía paso a paso, ayudando a los usuarios a
configurar correctamente el sistema, incluidos los ajustes de la bomba de
insulina, y a conocer a fondo su funcionamiento.
-​ Normalmente se tardan unos dos meses en completar estos Objetivos, y es
esencial finalizarlos con éxito antes de utilizar plenamente la funcionalidad
de administración automática de insulina.
#2 Ajustar
En AndroidAPS, tiene la flexibilidad de ajustar varios parámetros para personalizar
su tratamiento.
-​ Puede establecer el valor objetivo de glucemia por bloque de tiempo de 60
minutos entre 80 y 200 mg/dl (o 4,4 y 11 mmol/l).
-​ Se recomienda utilizar un único valor objetivo en lugar de un intervalo para obtener un mejor rendimiento con AndroidAPS. Las directrices
internacionales sugieren empezar con un intervalo objetivo de 110 a 120
mg/dl (o 6 a 6,5 mmol/l). Muchos usuarios optan por un valor objetivo de
100 mg/dl (o 5,6 mmol/l) durante el día e incluso más bajo durante la noche,
por ejemplo 90 mg/dl (o 5 mmol/l). Esto puede considerarse si no provoca
una hipoglucemia significativa.
-​ AndroidAPS le permite establecer diferentes perfiles de insulina basal en
función de sus necesidades individuales.
-​ También puede establecer cualquier valor objetivo temporal o % de
administración de insulina dentro de un intervalo seguro.
-​ AndroidAPS tiene 3 objetivos temporales por defecto: Comer Pronto,
Actividad e Hipo:
o​ Comer Pronto es un Objetivo temporal de 90 mg/dl o 5 mmol/l
durante 45 minutos,
o​ La actividad es un objetivo temporal de 140 mg/dl o 7,8 mmol/l
durante 90 minutos,
o​ Y la hipoglucemia es un objetivo temporal de 160 mg/dl u 8,9 mmol/l
durante 60 minutos.
o​ Estos ajustes por defecto se pueden cambiar a través de las
Preferencias
La proporción de hidratos de carbono, la sensibilidad a la insulina y la duración de
la acción de la insulina pueden ajustarse en función de sus necesidades específicas.

-​ En AndroidAPS, la duración de la acción de la insulina puede establecerse
entre 5 y 8 horas, que suele ser más larga que en los modelos de insulina
tradicionales debido a la consideración del efecto de cola larga de la
insulina. La mayoría de los usuarios prefieren entre 6 y 7 horas. Si necesita
una duración mayor, compruebe los ajustes de su FSI, ya que podrían ser
demasiado agresivos. En general, la duración real de la acción de la insulina
no difiere mucho entre usuarios.
-​ AndroidAPS te permite seleccionar el tipo de insulina que utilizas.
-​ Puedes elegir entre opciones como perfiles de acción rápida para Novorapid
o Humalog, un perfil ultrarrápido para Fiasp, un perfil independiente para
Lyumjev o un perfil con pico de funcionamiento ajustable para insulinas o
mezclas no incluidas en la lista.
-​ En función del tipo de insulina seleccionado, AndroidAPS proporcionará el
perfil correspondiente. Dentro de AndroidAPS, hay otros numerosos parámetros ajustables, y
profundizaremos en los principales: tipo de algoritmo, función de comida sin previo
aviso, autosensores y límites de entrega.
-​ Al iniciar AndroidAPS, puede elegir entre el algoritmo OpenAPS AMA u
OpenAPS SMB.
-​ Inicialmente, se recomienda utilizar los supermicrobolos (SMB) únicamente
después de consumir carbohidratos. Si esto funciona bien para usted, puede
optar por activar los SMB también en otros momentos. Esta opción solo es
posible con fuentes de datos de glucosa en sangre fiables, como la mayoría
de los sensores Dexcom y FreeStyle Libre.
-​ Dynamic ISF es un algoritmo experimental disponible en AndroidAPS,
además de OpenAPS AMA y SMB. Con Dynamic ISF, la sensibilidad a la
insulina se calcula dinámicamente en función de la dosis diaria total de
insulina y de los valores actuales y previstos de glucosa en sangre. Este
algoritmo tiene en cuenta la resistencia a la insulina que se produce cuando
los niveles de glucosa en sangre son más altos que cuando son más bajos.
Al utilizar ISF Dinámico, el sistema determina su sensibilidad a la insulina
independientemente de los valores establecidos por el usuario.
-​ La función de detección de UAM ayuda al algoritmo a interpretar los
aumentos glucémicos significativos como comidas no anunciadas.

-​ Es importante tener en cuenta que sólo se recomienda utilizar esta función si
tiene un control de la glucemia y unos valores del sensor de glucosa
relativamente estables. Si su control de la glucosa es deficiente, la activación
de UAM puede introducir una variabilidad adicional. Lo mismo puede ocurrir
si los valores de su sensor son inestables, por ejemplo durante el primer día
después de un cambio de sensor.
-​ Autosens es una de las características únicas más importantes de
AndroidAPS. Analiza su respuesta a la insulina durante las últimas 4, 8 o 24
horas y ajusta la sensibilidad a la insulina y la tasa de insulina basal en
consecuencia. Tienes la opción de permitir que Autosens modifique también
tu valor objetivo. Tenga en cuenta que su diabetes puede variar. Se
recomienda evaluar el uso de los resultados de Autosens antes de activarlo
de forma permanente.
-​ Se puede seleccionar la sensibilidad para la función autosens, y se
recomienda la opción Oref1 para los usuarios de OpenAPS SMB y UAM.
-​ Es mejor no modificar los ajustes avanzados de Autosens en AndroidAPS.
Estos incluyen:
o​ El min_5min_carbimpact determina la velocidad a la que se supone
que se descomponen los carbohidratos cuando su glucosa en sangre
no aumenta. El valor estándar para AMA es de 5 mg/dl/5 minutos,
mientras que para SMB es de 8 mg/dl/5 minutos.
o​ El tiempo máximo de absorción de la comida es la duración tras la
cual se supone que se han absorbido todos los hidratos de carbono.
Por defecto, se establece en 6 horas.
o​ Los porcentajes máximo y mínimo de Autosens se fijan en 1,2 y 0,8,
respectivamente. Determinan los porcentajes máximo y mínimo de
ajuste basados en la función Autosens. Esto significa que los valores
pueden ajustarse en un máximo de 120% y un mínimo de 80%
utilizando Autosens.
-​ Por último, también hay ajustes de seguridad y límites en AndroidAPS que
pueden ajustarse dentro de un rango seguro en función de la edad y el tipo
de usuario.
-​ Estos ajustes incluyen:
o​ Basal máxima: Para los adultos, se recomienda establecer este límite
en 3 a 5 veces el ajuste basal más alto.
o​ Insulina máxima a bordo: Este límite se refiere a la cantidad máxima
combinada de insulina basal y en bolo permitida a la vez.

-​ También hay varios ajustes de seguridad avanzados, que se recomienda no
modificar:
o​ AndroidAPS ofrece la opción de utilizar siempre la diferencia media
corta en lugar de basarse únicamente en la glucemia del sensor más
reciente. Esto es especialmente útil cuando se utilizan sensores de
glucemia con más ruido, como los datos de los sensores xDrip y Libre.
La diferencia media corta considera la glicemia media del sensor de
los últimos 15 minutos o los últimos 3 valores del sensor.
o​ El multiplicador de seguridad diario máximo y el multiplicador de
seguridad basal actual son límites adicionales para la tasa máxima de insulina basal, y generalmente
es mejor no cambiarlos. El

multiplicador diario máximo está establecido por defecto en 3,
permitiendo un máximo de 3 veces la tasa basal más alta establecida manualmente. El multiplicador del modo basal actual está
establecido en 4, permitiendo un máximo de 4 veces la tasa basal
establecida manualmente.
o​ En OpenAPS AMA, existe otro ajuste de seguridad específico,
denominado "bolus snooze dia divider". Determina la duración de la
administración de insulina adicional después de un bolo alimenticio.
Por defecto, se establece en la mitad de la duración de la acción de la
insulina.
o​ En OpenAPS SMB, también hay ajustes de seguridad adicionales
relacionados con los supermicrobolos. Estos incluyen, por ejemplo, los
minutos basales máximos para limitar los supermicrobolos, que por
defecto es de 30 minutos.
Recuerde que estos ajustes y parámetros deben ajustarse en consulta con su
profesional sanitario, teniendo en cuenta sus necesidades individuales y su
orientación médica.
#3 Revertir
En AndroidAPS, si no hay conexión con el sensor o la bomba durante más de 15
minutos, el sistema volverá al Modo Manual.
Cuando se pierde la conexión, la bomba pasará inicialmente a la última basal
temporal establecida. Tras un máximo de 120 minutos, pasará al Modo Manual.

En el Modo Manual, la administración de insulina basal se ajusta a la velocidad
preestablecida sin la función suspender antes de bajar. Tiene la opción de activar
manualmente la función suspender antes de bajar, pero esto sólo será posible si el
sensor y la bomba están conectados.
Una vez restablecida la conexión con la bomba o el sensor, el sistema reanudará
automáticamente el Modo Automático, que en AndroidAPS se denomina administración automática de insulina. En este Modo automatizado de
administración de insulina, el sistema calcula y administra una basal temporal cada
5 minutos.
Vale la pena señalar que en AndroidAPS, el término "Open-Loop" no se refiere al
Modo Manual. En su lugar, el Modo Open-Loop indica que los valores basales
temporales sólo aparecen como notificaciones, y es necesario confirmarlos
manualmente. Este Modo Open-Loop se recomienda para usuarios que son nuevos
en AndroidAPS y quieren observar cómo funciona el algoritmo antes de confiar
plenamente en él.
#4 Educar
Una formación adecuada es crucial a la hora de poner en marcha un sistema
automatizado de administración de insulina. Para obtener información general,
consulte el módulo genérico.
Los puntos de educación general tratados fueron:
- ​ Utilizar menos hidratos de carbono para corregir la hipoglucemia.
- ​ Considerar problemas en el equipo de infusión si los niveles de glucosa en
sangre permanecen altos sin una razón aparente.
- ​ Confiar en el sistema automatizado de administración de insulina y evitar
intervenciones manuales innecesarias.
- ​ Programar los bolos de comida 15 minutos antes de las comidas.
- ​ Utilizar el Modo Ejercicio de 1 a 2 horas antes de la actividad.
- ​ Detener la administración de insulina si la bomba está desconectada durante
más de 15 minutos.
- ​ Responder a las alarmas y estar atento a las actualizaciones automáticas de
los teléfonos móviles.
- ​ Buscar el apoyo de los compañeros para orientarse y compartir experiencias.

AndroidAPS es una potente herramienta para controlar la diabetes, pero es
importante recordar que no es un sistema totalmente automatizado que se pueda
"configurar y olvidar". Requiere un seguimiento activo y la comprensión de sus
acciones. He aquí algunos puntos educativos adicionales específicos para el uso de
AndroidAPS:
1.​ Monitorización activa: AndroidAPS controla la administración de insulina,
por lo que es crucial vigilarlo de cerca y entender cómo funciona. Esté atento
a cualquier posible error o comportamiento inesperado y aprenda a
interpretar las acciones del sistema.
2.​ Uso del teléfono: Una vez emparejado, el teléfono puede ordenar a la bomba que realice diversas
acciones. Su teléfono con AndroidAPS debe

considerarse un dispositivo médico y manejarse en consecuencia. Utilice el
teléfono únicamente para AndroidAPS y las comunicaciones esenciales.
Considere la posibilidad de empezar con teléfonos distintos para
AndroidAPS y el uso diario del smartphone. Evite instalar aplicaciones o juegos innecesarios que puedan introducir malware e interferir
potencialmente en el funcionamiento del sistema.
3.​ Medidas de seguridad: Instala todas las actualizaciones de seguridad
proporcionadas por el fabricante de tu teléfono y Google para mantener tu dispositivo protegido. Esto ayuda a protegerse frente a posibles
vulnerabilidades de seguridad.
4.​ Proximidad a la bomba y el MCG: Mantén el teléfono móvil cerca de la
bomba de insulina y el MCG para mantener una conexión fiable.
5.​ Contraseñas y copias de seguridad: Mantén un registro de todas las
contraseñas utilizadas y guarda una copia de seguridad de tu aplicación en
la nube. Exportar periódicamente tu configuración a la nube simplifica el
proceso de reinstalación y evita tener que rehacer todos tus objetivos.
6.​ Teléfono móvil de repuesto: Es aconsejable disponer de un teléfono móvil de
repuesto para casos de emergencia. Así te aseguras de tener un dispositivo
de reserva en caso de problemas técnicos con tu teléfono principal.

7.​ Ajustes avanzados: Utilice los ajustes avanzados, como OpenAPS SMB, sólo
cuando conozca bien los conceptos básicos y haya logrado un control
estable de la glucemia. Tenga en cuenta que características como la función
de comidas no anunciadas (UAM) y Autotune pueden no funcionar de forma
óptima para todo el mundo.
8.​ Objetivo temporal "Comer pronto": Si experimenta hiperglucemia después
de las comidas, utilice el objetivo temporal "Comer pronto". Esta función le
ayuda a abordar de forma proactiva los niveles altos de azúcar en sangre
para prepararse para las próximas comidas.
9.​ Acceso de proveedores sanitarios: Asegúrese de que su proveedor de
asistencia sanitaria tiene acceso a sus informes generados por Nightscout o
Tidepool. Esto les permitirá mantenerse informados sobre el control de su
diabetes y tomar decisiones fundamentadas durante sus consultas médicas.
10.​Domine el uso de la bomba y el sensor de insulina: Asegúrese también de
que es capaz de utilizar correctamente su bomba de insulina y su sensor.
Si sigue estas directrices y mantiene un enfoque proactivo en el uso de
AndroidAPS, podrá optimizar la eficacia del sistema y garantizar una experiencia de
administración automatizada de insulina segura y fiable.
#5 Sensor
AndroidAPS puede vincularse a los Dexcom FreeStyle Libre Eversense, sensores
Enlite, POCTech, Sibionics, Ottai, Syai Tag y CareSens Air sensores.
Tenga en cuenta que solo los sensores Dexcom y FreeStyle Libre se consideran
fuentes fiables de datos de glucosa en sangre, ya que cuentan con aprobación
regulatoria para su uso en sistemas comerciales automatizados de administración
de insulina.
Las fuentes fiables de datos de glucosa en sangre permiten la administración de
SMB en todo momento, mientras que otras fuentes de datos solo permitirán
supermicrobolos después de la ingesta de carbohidratos.

Dado que AndroidAPS no puede conectarse directamente a aplicaciones de
sensores nativos como la aplicación Dexcom o LibreLink, se requiere una aplicación
de sensores de código abierto adicional (como xDrip+ o Juggluco) para salvar la
distancia y transmitir los datos del sensor a AndroidAPS.
Si tiene dudas sobre la precisión de las lecturas del sensor o cree que no reflejan su
estado, realice una prueba con un pinchazo en el dedo para confirmarlo. Si observa
una discrepancia significativa, como una diferencia de más del 20 % entre las
lecturas del sensor y las del pinchazo en el dedo, incluso cuando su glucosa en
sangre se mantenga estable dentro del rango objetivo, es recomendable desactivar
el modo automático o sustituir el sensor.
Algunos sensores pueden calibrarse mediante un pinchazo en el dedo. Esto sólo
debe hacerse si los valores del sensor son estables y están dentro del rango.
#6 Compartir
En AndroidAPS, es posible compartir los datos de insulina y glucosa con los
profesionales sanitarios y los familiares a través de diversos medios:
Para que tu proveedor sanitario pueda controlar tus datos, es imprescindible
configurar un sitio web Nightscout o crear una cuenta en Tidepool. AndroidAPS
puede enviar los datos al sitio web de Nightscout o a la nube de Tidepool, lo que
permite a tu proveedor sanitario acceder a la información y revisarla en tiempo real.
Los usuarios pueden descargar informes de Tidepool o Nightscout, o utilizar
herramientas como Nightscout Reporter para generar informes completos que se
pueden compartir con los proveedores de atención sanitaria para un análisis y
evaluación en profundidad.
1.​ Es importante entender que Tidepool sólo sirve para informar. No es una
aplicación de seguimiento en tiempo real. Si necesitas tener seguidores
aparte del teléfono principal AndroidAPS, debes configurar también
Nightscout. Los cuidadores pueden acceder a los datos en el sitio web
personal de Nightscout, ya sea con un token o a través de otros medios
autorizados. Esto les permite ver y hacer un seguimiento de la información
sobre insulina y glucosa y mantenerse al día sobre el control de la diabetes.
Para la atención a distancia aparte de Nightscout, los cuidadores pueden

utilizar la app NSClient, en la que pueden ajustar objetivos, importar
carbohidratos y otros parámetros. Todo menos administrar un bolo.
2.​ Los familiares también pueden monitorizar sus datos de forma remota
utilizando una aplicación Dexcom Follow si tiene una cuenta Dexcom Share,
o utilizando xDrip o sus variantes. Estas aplicaciones les permiten acceder a
la información de glucosa e insulina en tiempo real, proporcionando una
capa adicional de apoyo y concienciación.
Aprovechando estas capacidades de uso compartido, los usuarios de AndroidAPS
pueden facilitar una comunicación y colaboración eficaces con su equipo sanitario y
sus seres queridos, fomentando un entorno de control de la diabetes solidario e
informado.
2.2 Indicaciones
AndroidAPS es una aplicación de código abierto que no tiene indicaciones oficiales
aprobadas por la FDA o las autoridades europeas. Puede utilizarse con todos los
análogos de insulina de acción rápida.
La aplicación AndroidAPS no puede descargarse de las tiendas de aplicaciones.
Los usuarios deben crear la aplicación por su cuenta y riesgo. Configurar el sistema
requiere determinación y conocimientos técnicos. Si no tienes los conocimientos
técnicos al principio, los tendrás al final. Toda la información que necesitas se
puede encontrar en la documentación de AndroidAPS que está disponible en línea,
y de otros que ya lo han hecho - puedes preguntarles en grupos de Facebook u
otros foros como Discord. Discord es una plataforma muy recomendable para el
chat interactivo entre usuarios, padres y desarrolladores de AndroidAPS y
Nightscout. Abarca una amplia gama de temas, desde consultas de usuarios
noveles hasta debates técnicamente más avanzados sobre el funcionamiento
interno de AndroidAPS y el algoritmo OpenAPS. El idioma principal de Discord es
el inglés.
Muchas personas han construido con éxito AndroidAPS y ahora lo están utilizando
con total seguridad, pero es esencial que cada usuario:
-​ Construye el sistema por sí mismo para entender perfectamente cómo
funciona.

-​ Ajusta su algoritmo de dosificación individual con la ayuda de su equipo de
diabetología
-​ Mantiene y supervisa el sistema para garantizar su correcto funcionamiento.
-​ Y entiende cómo funciona su bomba de insulina y su sensor de glucosa.
Para crear y utilizar AndroidAPS, necesitará un teléfono móvil. Encontrará los
requisitos mínimos de sus dispositivos en la documentación de AndroidAPS. La
documentación también proporciona una lista de teléfonos móviles específicos que
han sido probados y han demostrado ser compatibles con AndroidAPS. Comprobar
los requisitos mínimos y la compatibilidad garantiza que sus dispositivos sean
capaces de ejecutar la aplicación con eficacia.
Construir la aplicación Se puede hacer con un ordenador utilizando Android Studio
o desde tu teléfono utilizando GitHub Actions. En la documentación de
AndroidAPS hay una guía paso a paso disponible. Para ello, necesitarás para ir a
través de los diversos pasos para generar el archivo APK. Es importante almacenar
las contraseñas necesarias y el archivo de almacenamiento de claves de forma
segura para futuras actualizaciones. Una vez generado el archivo APK, se puede
guardar en la nube e instalarlo en el teléfono móvil.
Después de instalar la aplicación AndroidAPS, deberá completar 10 Objetivos en el
transcurso de aproximadamente 2 meses. Estos objetivos le guiarán a través de
importantes

funciones

y ajustes, garantizando que configure el sistema

correctamente y comprenda su funcionamiento. Al completar los objetivos, ganará
confianza en el sistema AndroidAPS, lo que le permitirá controlar eficazmente su
diabetes.
En conclusión, AndroidAPS requiere que los usuarios adopten un papel activo en la
comprensión y construcción del sistema, al tiempo que se adhieren a las
precauciones de seguridad y orientación médica.
2.3 Actualizaciones de software
Las actualizaciones periódicas del software son cruciales para mantener un
rendimiento óptimo y acceder a las últimas funciones de AndroidAPS. El equipo de AndroidAPS lanza nuevas versiones importantes cada año actualizaciones y
periódicamente,
menores

con
entre

actualizaciones
medias.

Estas

actualizaciones suelen incluir correcciones de errores y mejoras para aumentar la
funcionalidad del sistema.
Las notificaciones de la aplicación AndroidAPS le avisarán cuando haya una nueva
versión disponible, y es obligatorio actualizar en un plazo de 60 días para seguir
utilizando AndroidAPS.
Para actualizar AndroidAPS, siga estos pasos:
-​ Exporta tu configuración actual de AndroidAPS y guárdala en un lugar
seguro.
-​ Utilice Android Studio o GitHub para actualizar el código a la nueva versión.
-​ Cree un nuevo archivo APK con la misma clave de firma que la instalación
anterior.
-​ Transfiere el nuevo archivo APK a tu teléfono y actualiza la instalación
actual.
-​ Verifique el funcionamiento y la configuración de AndroidAPS después de la
actualización.
Si te encuentras con algún problema, mantén la calma y busca ayuda en la
comunidad AndroidAPS y en la documentación. Recuerda que la resolución de
problemas es una parte normal del uso del software y que, con paciencia, podrás
superar cualquier dificultad que surja.
En conclusión, mantenerse informado y proactivo con AndroidAPS es clave para
optimizar el control de la diabetes. Al mantenerse al día con las actualizaciones de
software, siguiendo las directrices de atención, y hacer frente a cualquier problema
con prontitud, puede garantizar una experiencia suave y eficaz. Dé prioridad a la
seguridad, mantenga registros precisos y utilice los recursos de apoyo disponibles.
Aproveche las posibilidades que le ofrece AndroidAPS para mejorar su salud y
bienestar.
