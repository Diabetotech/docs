<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q8L4VDlKQg2_fse5JjMEo-p -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/VIDEO_ID_AQUI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>1. Introduction</u>**

Bienvenido a esta completa serie de vídeos sobre iAPS, un nuevo sistema
automatizado de administración de insulina de código abierto para iPhones. iAPS
son las siglas de iPhone Artificial Pancreas System, y en estos vídeos exploraremos
los componentes clave de iAPS, incluidas las opciones de bombas de insulina y
sensores de glucosa, y el algoritmo Oref. Además, profundizaremos en temas
importantes como la visualización de informes con Nightscout y la monitorización
remota de usuarios como cuidador.
Los sistemas automatizados de administración de insulina de código abierto son tan
seguros y eficaces como los sistemas automatizados de administración de insulina
comerciales, pero no han sido aprobados por ninguna autoridad médica. Por
consiguiente, si decide utilizarlo, tendrá que construirlo y utilizarlo bajo su propia
responsabilidad. Para acceder al manual de construcción de la aplicación, puedes
visitar https://iaps.readthedocs.io.
Además, puedes buscar ayuda y apoyo en varias comunidades en línea, como el
grupo en Facebook y el grupo en Discord.
Como varios desarrolladores hicieron un spin-off del iAPS principal y continuaron
bajo el nombre TRIO, las sesiones grabadas en YouTube sobre el algoritmo, ahora
disponibles y rebautizadas bajo TRIO, son relevantes.
Esto NO pretende ser un juicio o evaluación de iAPS frente a TRIO, sino una
declaración para crear conciencia de que ambos enfoques existen en la comunidad
de código abierto.
Antes de empezar, es esencial señalar que estos vídeos no pretenden ser un
consejo médico. Consulte siempre a su profesional sanitario para obtener
asesoramiento médico personalizado y ajustes terapéuticos.
El contenido de estos vídeos ha sido creado y actualizado por Christophe Merlot,
una persona que padece diabetes tipo 1 y usuario experimentado del sistema iAPS,

y la Dra. Inge van Boxelaer, fundadora de Diabetotech y endocrinóloga del hospital
St-Lucas de Gante (Bélgica). El material ha sido revisado por el Dr. Per Winterdijk,
pediatra del instituto Diabeter de Rotterdam, en los Países Bajos, y por la Dra. Kate
Hawke, endocrinóloga australiana que está realizando una beca de investigación en
tecnología de la diabetes en BCDiabetes, en Vancouver. Es importante señalar que
iAPS está disponible de forma gratuita y, por lo tanto, no hay intereses financieros
de por medio, lo que garantiza una evaluación imparcial de este sistema
automatizado de administración de insulina de código abierto.
A lo largo de la serie, obtendrá información valiosa sobre iAPS, incluyendo su
rendimiento basado en el paradigma CARES, el uso práctico de la aplicación iAPS,
la creación e interpretación de informes en Nightscout, y orientación para la gestión
de diversas situaciones como la hipo y la hiperglucemia, las comidas ricas en grasas,
el ejercicio, la enfermedad, el alcohol y los viajes.
Al final de estos vídeos, usted tendrá una comprensión completa de iAPS y estará
equipado con consejos útiles y trucos para mejorar su experiencia con el sistema.
Tanto si eres un cuidador que ayuda a los usuarios de iAPS como si tú mismo eres
un usuario de iAPS, te deseamos mucho éxito en tu viaje con este potente sistema
automatizado de administración de insulina. Le deseamos mucha suerte.

2. iAPS según el paradigma CARES
En este vídeo trataremos el iAPS según el paradigma CARES.
Hablaremos de cómo iAPS calcula y ajusta la administración automatizada de
insulina, cuándo vuelve al Modo Manual, consejos específicos de educación y
problemas con los sensores, y cómo comparte los datos. Después repasaremos las
indicaciones de iAPS y las actualizaciones del software. Empecemos.
1) iAPS según el paradigma CARES
#1 Calcular
En el iAPS, la tasa de insulina basal preestablecida se ajusta en función de la
glucemia prevista para las siguientes 5 a 9 horas. He aquí un desglose de cómo
funciona iAPS:

-​ iAPS combina diferentes predicciones de glucemia o "BG" para calcular la
glucemia mínima prevista:
o​ iAPS calcula una predicción de glucemia basada en los hidratos de
carbono a bordo,
o​ una glucemia prevista de insulina, que es una predicción basada en la
insulina a bordo,
o​ una glucemia prevista para una comida no anunciada, que es una
predicción en caso de consumo de carbohidratos no anunciado,
o​ y una predicción de glucemia a temperatura cero, que es el peor
escenario posible, en caso de que de repente deje de administrarse
insulina o dejen de absorberse carbohidratos.
-​ iAPS tiene en cuenta cualquier error en las predicciones, ya que la predicción
de la glucemia eventual se ajusta en función de la desviación entre la glucosa
actual y la glucosa predicha, también conocida como impacto de la glucemia.
El algoritmo también tiene en cuenta la tendencia de la glucemia calculando
el delta, o la diferencia entre la glucemia actual y la pasada. Y también tiene
en cuenta el momento de la glucemia a corto y largo plazo, que es la
cantidad de cambio entre la glucemia actual y la de hace 15 y 40 minutos.
-​ La necesidad de insulina o InsulReq se calcula restando la glucemia objetivo
de la glucemia mínima prevista, y dividiendo esta diferencia por la
sensibilidad a la insulina o ISF. Este requerimiento de insulina determinará si
se debe aumentar o disminuir la insulina basal preestablecida manualmente.
-​ Si se prevé una hipoglucemia, se suspenderá la insulina basal y se
recomendarán hidratos de carbono de rescate.
En conclusión, la tasa de insulina basal preestablecida aumentará o disminuirá en
función de la necesidad de insulina calculada. Esto se muestra en la aplicación como
una basal temporal o temp con una tasa de insulina y una duración especificadas o
un microbolo, y estas basales temp se recalculan cada 5 minutos. Un nuevo cálculo
de iAPS también se denomina ciclo de bucle.
En el iAPS, las basales temporales suelen administrarse en forma de microbolos,
administrando la misma dosis de insulina más rápidamente, seguida de una pausa

temporal en la administración de insulina basal. La forma en que se calculan estos
supermicrobolos o SMB en función de las basales temp, puede ajustarse dentro de
unos parámetros de seguridad predefinidos.
iAPS también utiliza una función autosens, que aumenta o disminuye la
administración de insulina, basándose en la sensibilidad a la insulina del usuario
durante las últimas 8 y 24 horas.
-​ Calcula un porcentaje que refleja cómo la sensibilidad a la insulina en las
últimas horas difiere de la sensibilidad actualmente establecida, y utiliza ese
% para ajustar su sensibilidad a la insulina y la tasa de insulina basal. La
función Autosens también puede aplicarse al valor objetivo, ajustándolo en
función de la relación de sensibilidad calculada.
-​ Los porcentajes máximo y mínimo de Autosens se fijan en 1,2 y 0,7,
respectivamente. Determinan los porcentajes máximo y mínimo de ajuste
basados en la función Autosens. Esto significa que los valores pueden
ajustarse en un máximo del 120% y un mínimo del 70% utilizando Autosens.
-​ Si activa la función Comida no anunciada, el algoritmo detectará incrementos
rápidos de glucosa causados por carbohidratos, adrenalina, etc., e intentará
ajustarlo con supermicrobolos. Esto también funciona a la inversa: si se
produce un descenso rápido de la glucosa, puede detener antes las
supermicrobolas. Es importante tener en cuenta que sólo se recomienda
utilizar la función

UAM si tiene un control de la glucemia relativamente

estable y valores del sensor de glucosa.

Si su control de glucosa es

deficiente, la activación de UAM puede introducir variabilidad adicional. Lo
mismo puede ocurrir si los valores de sus sensores son inestables, por
ejemplo durante el primer día tras un cambio de sensor.
Además, iAPS ofrece tres funciones dinámicas, que se pueden activar en la
aplicación: Dynamic ISF, Dynamic Carb Ratio y Auto ISF (para usuarios avanzados).
-​ Si activas ISF Dinámico, éste sustituye a Autosens.
-​ La fórmula predeterminada para el ISF dinámico utiliza una escala
logarítmica para determinar la relación utilizada en el ajuste del ISF.
-​ También ajusta tu ISF, pero de forma dinámica, basándose en tu valor
de glucosa actual y previsto y en la dosis total diaria de insulina.
-​ Como eres más resistente a la insulina si tu glucosa es más alta, es
una forma más agresiva de ajustar tu sensibilidad a la insulina.

-​ Agresividad del ISF dinámico puede modificarse mediante varios
parámetros, como el factor de ajuste, el peso de la dosis diaria total de
insulina de las últimas 24 horas en comparación con las últimas dos
semanas, y los porcentajes máximo y mínimo de Autosens.
Como alternativa, puede utilizarse una escala sigmoidea para un
enfoque más agresivo. A diferencia de otros métodos, la escala
sigmoidea no hace referencia a la dosis diaria total de insulina, sino
que determina los ajustes basándose exclusivamente en la desviación
de la lectura actual de glucosa con respecto al valor objetivo. Con
Sigmoid, el ISF dinámico utiliza el perfil de ISF cuando se alcanza la
glucosa objetivo. La agresividad de Sigmoid puede ajustarse mediante
tres configuraciones: factor de ajuste sigmoide, máximo de Autosens y
mínimo de Autosens. Sigmoid también es una excelente opción para
usuarios con una variabilidad rápida en la sensibilidad a la insulina.
-​ Si activas la Proporción Dinámica de Carbohidratos, tu proporción de
carbohidratos se modificará en cada ciclo de bucle, en función de tu glucemia
actual y de la dosis total diaria de insulina. Se basa en el hecho de que puede
necesitar una proporción de carbohidratos más agresiva cuando tiene una
glucosa en sangre más alta.
-​ Otra función más experimental, Auto ISF, puede ser configurada por usuarios
avanzados para habilitar un modo de bucle cerrado completo sin bolos de
comida ni entradas de carbohidratos. El uso adecuado de esta función
requiere un conocimiento profundo de los límites del ISF y de los parámetros
de aceleración de la glucosa. El algoritmo está documentado en:
https://github.com/bernie4375/FCL-potential-autoISF
El valor objetivo de glucosa de iAPS puede ajustarse entre 72 y 180 mg/dl o 4 y 10
mmol/l.
iAPS concede una gran prioridad a la seguridad e incorpora diversos ajustes y
límites de seguridad para evitar una administración de insulina potencialmente
peligrosa. Para garantizar que los usuarios configuran el sistema correctamente, la
comunidad de usuarios propone ajustes defensivos y poner en marcha el sistema
sin ninguna función dinámica. A lo largo de varias semanas, se puede avanzar
gradualmente hacia iAPS dinámicas y ajustes más agresivos.

En cuanto a la función Auto ISF, los usuarios experimentados de iAPS recomiendan
no activarla hasta contar con al menos tres meses de experiencia con el ISF
dinámico en iAPS y obtener resultados diarios de forma consistentemente estable.
#2 Ajustar
En iAPS, tiene la flexibilidad de ajustar varios parámetros para personalizar su
tratamiento.
-​ Puede establecer un valor objetivo de glucosa por bloque de tiempo de 30
minutoss entre 72 y 180 mg/dl (o 4 y 10 mmol/l). Las directrices
internacionales sugieren empezar con un valor objetivo de 110 a 120 mg/dl
(o 6 a 6,5 mmol/l). Muchos usuarios optan por un valor objetivo de 100 mg/dl
(o 6 mmol/l) durante el día e incluso más bajo durante la noche, por ejemplo
90 mg/dl (o 5 mmol/l). Esto puede considerarse si no provoca una
hipoglucemia significativa.
-​ iAPS le permite establecer diferentes perfiles de insulina basal en función de
sus necesidades individuales. El perfil predeterminado se denomina "Perfil
normal". Puede guardar iteraciones de este "Perfil normal" con un % de
administración de insulina, un valor objetivo de glucosa y funciones SMB y dinámicas diferentes. Los perfiles alternativos creados pueden ser
permanentes o con una duración específica (por ejemplo, para actividades
deportivas programadas).
La Relación de Carbohidratos, la Sensibilidad a la Insulina y la Duración de la
Acción de la Insulina pueden ajustarse según sus necesidades específicas.
-​ La duración de la acción de la insulina en los sistemas de bucle cerrado de
fuente abierta suele ser mayor que en los modelos de insulina tradicionales
debido a la consideración del efecto de cola larga de la insulina. La mayoría
de los usuarios prefieren entre 6 a 7 horas. Si necesitas una duración mayor,
comprueba los ajustes de tu ISF, ya que podrían ser demasiado agresivos. En
general, la duración real de la acción de la insulina no difiere mucho entre
usuarios.
-​ iAPS te permite seleccionar el tipo de insulina que utilizas. Puede elegir entre
opciones como Apidra, Humalog, Novorapid o NovoLog, Fiasp y Lyumjev.
Dependiendo del tipo de insulina seleccionado, iAPS le proporcionará el
perfil correspondiente. Además, tiene la opción de cambiar su curva de
insulina o establecer un tiempo de pico de insulina personalizado.

Dentro de iAPS, hay otros numerosos parámetros ajustables, y vamos a profundizar
en los principales: Opciones SMB, Porcentaje de bolo recomendado, Opciones
Autosens, Características dinámicas, Límites de entrega y Autoajuste.
-​ Cuando empiece a utilizar iAPS en "circuito cerrado", se recomienda utilizar
supermicrobolos sólo después de consumir carbohidratos. Si esto le funciona
bien, puede optar por activar los SMB también en otros momentos. Puede
hacer que las SMB sean más o menos agresivas ajustando el Umbral
Delta-BG Máximo, los Minutos Basales SMB Máximos, la Proporción de
Entrega SMB y el Intervalo SMB. Además, si activa la función UAM, las SMB
reaccionarán más rápido a los cambios rápidos de glucosa, para cubrir las
comidas no anunciadas.
-​ En iAPS, puede cambiar la cantidad de insulina sugerida a través de la
calculadora de bolo cambiando el Porcentaje de bolo recomendado. iAPS
calcula primero una dosis de insulina basada en la calculadora de bolo integrada, que luego se multiplicará
por su "Porcentaje de bolo

recomendado" para mostrar su dosis de insulina sugerida. iAPS administrará
la insulina restante a través de las SMB cuando la glucemia comience a subir.
-​ iAPS ajusta automáticamente su sensibilidad a la insulina basándose en una
función Autosens. Puede permitir que Autosens ajuste también su valor
objetivo de glucosa. Puede establecer el % máximo y mínimo al que se
puede adaptar su ISF. Y puede permitir que Autosens ajuste su ISF cuando
establezca un Perfil Temporal..
-​ Las funciones dinámicas que pueden activarse son ISF dinámico y relación de
carburación dinámica. La agresividad del ISF Dinámico puede adaptarse
cambiando el Autosens Ratio máximo y mínimo, el perfil ISF, el Factor de
Ajuste, la Media Ponderada de la dosis total diaria de insulina de las últimas
24 horas en comparación con las últimas 2 semanas, y activando la función
Sigmoide.
-​ Además, existen límites de administración en iAPS que pueden ajustarse
dentro de un rango seguro en función de la edad y el tipo de usuario.
o​ Dentro de los ajustes de la bomba, puede establecer su basal máxima,
bolo máximo y carbohidratos máximos. Para los adultos, se
recomienda ajustar la basal máxima de 3 a 5 veces el valor basal
máximo.
o​ En los Ajustes de OpenAPS, puede establecer la insulina máxima y los
carbohidratos a bordo. La insulina máxima a bordo se refiere a la

cantidad máxima combinada de insulina basal y bolo permitida a la
vez.
o​ El multiplicador de seguridad diario máximo y el multiplicador de
seguridad basal actual son límites adicionales para la tasa máxima de insulina basal, y generalmente es mejor no cambiarlos. El
multiplicador diario máximo está establecido por defecto en 3,
permitiendo un máximo de 3 veces la tasa basal más alta establecida
manualmente. El multiplicador del modo basal actual está establecido
en 4, lo que permite un máximo de 4 veces la tasa basal establecida
manualmente.
o​ En los ajustes dinámicos, puede encontrar un Ajuste de Umbral, que
funciona como umbral de hipoglucemia. Si se predice que el nivel de
azúcar en sangre en algún momento estará por debajo de este valor,
iAPS suspenderá la administración de insulina y esperará hasta que
sus algoritmos predigan lo contrario.
Por último, también puede optar por activar Autotune.
-​ Autotune hace sugerencias o ajustes a sus tasas basales, la sensibilidad a la
insulina, y la proporción de carbohidratos en base a sus últimas 24 horas de
datos. Existe la opción de que Autotune ajuste sólo los índices basales del
perfil. Autotune se ejecuta cada noche por defecto, o puedes pulsar en
Ejecutar ahora para hacer un cálculo inmediato. Los ajustes realizados por el
autoajuste son pequeños, con un máximo de un 10% de cambio en la
proporción de carbohidratos y el ISF actuales, o un 20% de cambio en las
tasas basales actuales por carrera, pero se suman a lo largo de los días.
-​ Autotune está diseñado para trabajar durante semanas para mejorar
lentamente la precisión de sus tasas basales inicialmente establecidas, ISF y
proporción de carbohidratos. El resultado de las fórmulas de autotune
produce un ratio similar al de Autosens. Este ratio también está limitado por
las preferencias de Autosens max y min.
-​ Tenga en cuenta que Autotune requiere valores fijos para la proporción de
carbohidratos y la sensibilidad a la insulina. Por lo tanto, no será efectivo al
utilizar los ajustes dinámicos completos en iAPS, y no se recomienda activar
Autotune de forma permanente cuando iAPS emplea ISF dinámico y
proporción de carbohidratos dinámica.

-​ Autotune puede no funcionar si Nightscout cuenta con medidas de seguridad
adicionales, como un token.
Recuerde que todos los ajustes y parámetros deben ajustarse en consulta con su
profesional sanitario, teniendo en cuenta sus necesidades individuales y su
orientación médica. La activación de Auto ISF requiere orientación médica adicional.
#3 Revertir
En iAPS, si no hay conexión con el sensor o la bomba durante más de 15 minutos, el
sistema volverá al Modo Manual.
Cuando se pierde la conexión, la bomba pasará inicialmente a la última temperatura
basal establecida. Tras un máximo de 120 minutos, pasará al Modo Manual.
En el Modo Manual, la administración de insulina basal se ajusta a la tasa basal
preestablecida sin función de suspensión antes de bajada.
Una vez restablecida la conexión con la bomba o el sensor, el sistema reanudará
automáticamente el Modo Automático, lo que en iAPS se denomina bucle cerrado.
Vale la pena señalar que en iAPS, el término "Open-Loop" no se refiere al Modo
Manual. En su lugar, el Modo Open-Loop indica que los valores basales temporales
sólo aparecen como notificaciones, y que puede establecerlos manualmente. Este
Modo Open-Loop se recomienda a los usuarios que son nuevos en iAPS y quieren
observar cómo funciona el algoritmo antes de confiar plenamente en él.
#4 Educar
Una educación adecuada es crucial a la hora de poner en marcha un sistema
automatizado de administración de insulina. Para obtener información general,
consulte el módulo genérico.
Los puntos de educación general tratados fueron
- ​ Utilizar menos hidratos de carbono para corregir la hipoglucemia.
- ​ Considerar problemas en el equipo de infusión si los niveles de glucosa en
sangre permanecen altos sin una razón aparente.

●​ Confiar en el sistema automático de administración de insulina y evitar
intervenciones manuales innecesarias.
- ​ Programar los bolos 15 minutos antes de las comidas.
- ​ Utilizar un modo de ejercicio entre 1 a 2 horas antes de la actividad.
- ​ Detener la administración de insulina si la bomba está desconectada durante
más de 15 minutos.
- ​ Responder a las alarmas y estar atento a las actualizaciones automáticas de
los teléfonos móviles.
- ​ Buscar el apoyo de compañeros para obtener orientación y compartir
experiencias.
La iAPS es una potente herramienta para controlar la diabetes, pero es importante
recordar que no se trata de un sistema totalmente automatizado que se pueda
"programar y olvidar". Requiere un seguimiento activo y la comprensión de sus
acciones. He aquí algunos puntos educativos adicionales específicos del uso de
iAPS:
-​ Monitorización activa: iAPS controla la administración de insulina, por lo que
es fundamental vigilarlo de cerca y entender cómo funciona. Esté atento a
cualquier error potencial o comportamiento inesperado y aprenda a
interpretar las acciones del sistema.
-​ Uso del teléfono: Una vez emparejado, el teléfono puede ordenar a la bomba
que realice diversas acciones. Su teléfono con iAPS debe considerarse un
dispositivo médico y manejarse en consecuencia. Evite instalar aplicaciones o juegos innecesarios que puedan introducir malware e interferir
potencialmente en el funcionamiento del sistema.
-​ Medidas de seguridad: Instala todas las actualizaciones de seguridad
proporcionadas por Apple para mantener tu dispositivo protegido. Esto le
ayudará a protegerse frente a posibles vulnerabilidades de seguridad. No
active las "Actualizaciones automáticas" ni las "Actualizaciones beta" en los
ajustes de Actualización de software de su iPhone. Verifique primero la
compatibilidad de una versión específica de iOS en la comunidad de iAPS
antes de actualizar el sistema operativo de su iPhone.
-​ Proximidad a la bomba y al MCG: Mantenga el teléfono móvil cerca de la
bomba de insulina y del MCG. Debe estar a la distancia recomendada (que
suele ser de 5 metros o 15 pies para el MCG) para mantener una conexión
fiable.

-​ Contraseñas y copias de seguridad: Mantén un registro de todas las
contraseñas utilizadas y guarda una copia de seguridad de tu app en iCloud.
Exportar periódicamente tus ajustes a iCloud simplifica el proceso de
reinstalación y evita que se restablezcan tus parámetros personalizados.
-​ Teléfono móvil de repuesto: Es aconsejable disponer de un teléfono móvil de
repuesto para casos de emergencia. De este modo, dispondrá de un
dispositivo de reserva en caso de que surjan problemas técnicos con su
teléfono principal.
-​ Se ha añadido a iAPS una función extra dedicada llamada Compartir
para salvaguardar su configuración personal, como todos los comportamientos dinámicos, así
como su ISF, proporción de

carbohidratos, objetivos de glucosa, perfiles, etcétera. Esto le permite
restaurar su configuración al reinstalar la app o al cambiar a otro
dispositivo cuando sea necesario.
-​ Compruebe primero los ajustes básicos: Se recomienda iniciar iAPS primero
en "Lazo abierto" para configurar y comprobar todos sus ajustes básicos,
como la tasa de insulina basal, la proporción de carbohidratos y la
sensibilidad a la insulina.
a.​ Los resultados del sistema iAPS dependen en gran medida de la
exactitud de estos ajustes básicos, por lo que deben ser bastante
precisos.
b.​ A continuación, aumente lentamente la "insulina máxima a bordo",
para permitir que iAPS dosifique automáticamente la insulina. Este
valor está fijado por defecto en 0 y puede aumentarse lentamente
hasta la suma de su bolo medio de comida más 3 veces su tasa basal
más alta.
c.​ A continuación puede activar Supermicrobolos y cambiar el Umbral
Max Delta-BG SMB del valor por defecto 0.2 a 0.3 para permitir a
iAPS utilizar SMB cuando su glucosa en sangre está aumentando
rápidamente.
-​ Ajustes avanzados: Utilice los ajustes avanzados, como la función de comidas
no anunciadas, los minutos basales SMB máximos, el ajuste automático, el
ISF dinámico y la proporción dinámica de carbohidratos, sólo después de
haber comprendido bien los conceptos básicos y de haber logrado un control
estable de la glucemia. Tenga en cuenta que estas funciones pueden no
funcionar de forma óptima para todo el mundo.

-​ Acceso al proveedor de asistencia sanitaria: Asegúrate de que tu proveedor
sanitario tiene acceso a tus informes generados por Nightscout. Esto les
permite mantenerse informados sobre el control de su diabetes y tomar
decisiones fundamentadas durante sus consultas médicas.
-​ Domine el uso de la bomba de insulina y el sensor: Asegúrese también de
que es capaz de utilizar correctamente la bomba de insulina y el sensor.
Si sigue estas directrices y mantiene un enfoque proactivo en el uso de iAPS, podrá
optimizar la eficacia del sistema y garantizar una experiencia de administración
automatizada de insulina segura y fiable.
#5 Sensor
iAPS puede conectarse a los sensores Dexcom G5, G6, G7 y Dexcom One Plus, a
los sensores europeos FreeStyle Libre 2 y Libre 2 Plus, a los sensores FreeStyle
Libre 1 y US FreeStyle LIbre 2 utilizando un transmisor, y a los sensores Medtronic
Enlite a través de bombas Medtronic antiguas.
Dado que iAPS puede conectarse directamente a los sensores Dexcom G5, G6 y a
los Sensores europeos FreeStyle Libre 2 y Libre 2 Plus, la aplicación Dexcom o
LibreLink sólo es necesaria para iniciar un nuevo sensor en estos casos.
Para Dexcom G7 y One+, necesitará tener la aplicación Dexcom asociada
ejecutándose en su iPhone para permitir que iAPS recupere su valor de glucosa. Se
recomienda utilizar la aplicación Dexcom para las alarmas de conectividad
Bluetooth.
iAPS también acepta otras aplicaciones de sensores de código abierto como
Glucose Direct o xDrip4iOS. Estas aplicaciones se pueden utilizar para transmitir los
datos del sensor a iAPS, aunque las conexiones nativas a CGM son más estables.
Algunas personas optan por utilizar estas aplicaciones de código abierto para
mejorar las alarmas y la conexión con otros dispositivos.
En un sistema automatizado de administración de insulina, los valores continuos y
precisos de los sensores son esenciales para una correcta dosificación de la insulina.
Si la glucemia de su sensor es irregular o ruidosa, puede provocar una dosificación
incorrecta de la insulina, con el resultado de niveles altos o bajos de glucosa en

sangre. En estos casos, es importante desactivar el Modo Automático hasta que se
resuelva el problema. El problema puede estar relacionado con la configuración del
sensor de glucosa o problemas con el sensor o el sitio. Si es necesario, puede ser
necesario sustituir el sensor de glucosa para solucionar el problema.
Si experimenta saltos o ruidos en los valores del sensor, puede intentar activar la
función "Valor de glucosa suave" a través de los Ajustes.
Si tu sensor no muestra un número o una flecha, o tus lecturas no coinciden con tus
síntomas, utiliza tu medidor para tomar decisiones sobre el tratamiento de la
diabetes. En caso de duda, saque el medidor.
Si experimenta una diferencia significativa entre la glucosa del sensor y el valor de
la punción digital, aunque tenga una glucosa estable y dentro del intervalo, puede
intentar calibrar el sensor. Puede hacerlo a través de los Ajustes de iAPS, a través
del menú CGM o directamente en la aplicación del sensor.
#6 Compartir
En iAPS, es posible compartir los datos de glucosa con los profesionales sanitarios
y los familiares a través de Nightscout, Apple Health y a través de Dexcom Share o
LibreView. Compartir los datos de glucosa e insulina sólo es posible a través de
Nightscout y Tidepool, siendo Nightscout la opción preferida, ya que Tidepool
requiere cargas manuales, que llevan bastante tiempo.
Para utilizar Nightscout, tendrás que crear un sitio web personal de Nightscout.
iAPS puede enviar los datos al sitio web de Nightscout, lo que permite a tu
proveedor de atención sanitaria acceder a tus informes y revisarlos en tiempo real.
Los cuidadores pueden acceder a los datos en el sitio web personal de Nightscout,
idealmente con un token. Esto les permite ver y hacer un seguimiento de la
información sobre insulina y glucosa y mantenerse al día sobre el control de la
diabetes.
Los cuidadores pueden incluso administrar un bolo de insulina, introducir
carbohidratos y cambiar el perfil de insulina de forma remota, a través del sitio web
de Nightscout o de una app como Nightscout X o Bucle Seguir. Para poder utilizar la
atención remota, Nightscout tiene que estar configurado para utilizar comandos
remotos, y la atención remota tiene que estar activada en la app iAPS.

En los ajustes de la calculadora de bolo iAPS, los accesos directos de bolo iOS
pueden activarse con un valor máximo mediante "Accesos directos iOS". Esto
también podría ayudar a los padres a asistir a sus hijos pequeños a distancia.
Los usuarios pueden descargar informes de Nightscout o utilizar herramientas como
Nightscout Reporter para generar informes completos que pueden compartirse con
los profesionales sanitarios para su análisis y evaluación en profundidad.
Al aprovechar estas capacidades de intercambio, los usuarios de iAPS pueden
facilitar una comunicación y colaboración efectivas con su equipo sanitario y sus
seres queridos, fomentando un entorno de control de la diabetes informado y de
apoyo.
