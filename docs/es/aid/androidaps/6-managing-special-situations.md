<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q_bNaHvdWyOfTD3H25Dg8dN -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/VIDEO_ID_AQUI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>6. Lección 6</u>**

6.1 Hipoglucemia
Con un sistema automatizado de administración de insulina como AndroidAPS, a
menudo se necesitan menos carbohidratos para tratar la hipoglucemia en
comparación con la gestión tradicional de la diabetes, especialmente cuando se
lleva poca insulina a bordo.
AndroidAPS ofrece la posibilidad de ver tu insulina a bordo en la pantalla de inicio,
y también puedes ver un gráfico adicional de la actividad de la insulina. Si no te has
inyectado insulina en las últimas horas, una dosis menor de carbohidratos suele ser
suficiente.
Se recomienda introducir en el algoritmo los carbohidratos que consume para
tratar o prevenir la hipoglucemia utilizando el botón de carbohidratos. Esto permite
que el algoritmo tenga en cuenta los hidratos de carbono a la hora de calcular los
requisitos de insulina y, por lo general, sólo recibirá la insulina necesaria.
Para prevenir nuevos episodios de hipoglucemia, puede realizar ajustes en el
sistema AndroidAPS para reducir la administración de insulina. Esto puede hacerse
utilizando el valor objetivo temporal de actividad o de hipoglucemia. El ajuste por
defecto del objetivo temporal de actividad es de 140 mg/dl o 7,8 mmol/l durante
90 minutos, y el ajuste por defecto del objetivo temporal de hipoglucemia es de
160 mg/dl o 8,9 mmol/l durante 60 minutos.

También puede optar por reducir el porcentaje de liberación de insulina en su perfil.
Recuerde que si reduce su perfil, por ejemplo, en un 50%, no sólo reducirá su tasa
de insulina basal, sino que también hará que su proporción de carbohidratos y su
sensibilidad a la insulina sean un 50% menos agresivas.
Es importante tener en cuenta que, en algunos casos, el algoritmo puede aumentar
la insulina basal incluso cuando los niveles de glucosa son bajos. Esto podría ser
necesario si el nivel de glucosa previsto es superior al valor objetivo. En la mayoría
de los casos, AndroidAPS es preciso en sus predicciones.
6.2 Hiperglucemia
En el caso de una hiperglucemia leve, generalmente se recomienda confiar en
AndroidAPS y dejar que el sistema trabaje por sí solo. Sin embargo, puede
considerar administrar un bolo de corrección manual utilizando la calculadora de
bolo sin introducir carbohidratos.
Para hacer frente a la hiperglucemia, también tiene la opción de aumentar el
porcentaje de liberación de insulina en su perfil o establecer temporalmente un
valor objetivo más bajo.
En situaciones de hiperglucemia prolongada y grave, es importante considerar la
posibilidad de un problema en el equipo de infusión. En caso de duda, es
aconsejable cambiar el equipo de infusión o el Pod. Recuerde la frase "En caso de
duda, cámbielo".
Es esencial asegurarse de que tiene suficiente equipo a mano para llevar a cabo
todas las sustituciones y reemplazos necesarios. Estar preparado con los
suministros necesarios es crucial para gestionar eficazmente la hiperglucemia y
mantener el correcto funcionamiento de su sistema AndroidAPS.
6.3 Comidas ricas en grasas
Cuando consuma una comida rica en grasas mientras utiliza AndroidAPS, existen
varios enfoques recomendados que puede tener en cuenta:
1. Introduzca sólo el 70% de la porción de hidratos de carbono, permitiendo que el
algoritmo tenga en cuenta la porción restante. Un enfoque alternativo consiste en

establecer un perfil temporal más elevado de, por ejemplo, el 130% durante 2 o 3
horas para tener en cuenta la parte de la comida que se absorbe lentamente.
2. Otra opción es administrar el bolo en dos partes. Por ejemplo, puede administrar
el 50% de la dosis de insulina antes de la comida y el 50% restante 2 horas
después. En AndroidAPS, tienes la flexibilidad de programar bolos para el futuro
utilizando la calculadora de bolos o el botón de carbohidratos.

Si utiliza la

calculadora de bolos, puede especificar la hora a la que desea que se administre el
bolo de la comida. Alternativamente, puede utilizar el botón de carbohidratos para
introducir los carbohidratos y la hora a la que desea que el algoritmo tenga en
cuenta estos carbohidratos. Si utiliza el botón de carbohidratos, AndroidAPS sólo
administrará insulina si es necesario.
3. Además, cuando introduzca carbohidratos a través del botón de carbohidratos,
tiene la opción de seleccionar un tiempo de absorción más largo para estos
carbohidratos. Si utiliza esta función de carbohidratos prolongados, podrá ver los
carbohidratos futuros en la pestaña de resumen.
Es importante tener en cuenta que las respuestas individuales a las comidas ricas
en grasas pueden variar, por lo que puede ser útil experimentar con distintos
enfoques y controlar de cerca los niveles de glucosa para encontrar la estrategia
más eficaz para controlar los niveles de azúcar en sangre durante dichas comidas.
6.4 Ejercicio
Al participar en actividades físicas con AndroidAPS, es aconsejable aplicar las
siguientes estrategias:
1. Establezca un valor objetivo más alto durante el ejercicio para mitigar el riesgo
de hipoglucemia. Como se ha comentado en el módulo general sobre sistemas
automatizados de administración de insulina, reducir el bolo de la comida también
puede ser beneficioso.
2. En AndroidAPS, tiene la opción de desactivar el SMB (supermicrobolo) cuando
utilice un valor objetivo más alto. Esto permite una administración de insulina más
conservadora durante el ejercicio.

3. Alternativamente, puede crear un perfil basal dedicado en AndroidAPS diseñado
específicamente para el ejercicio. Este perfil debe incorporar tasas de insulina basal
más bajas y una mayor sensibilidad a la insulina para adaptarse al impacto de la
actividad física.
4. Aprovecha las capacidades de integración de AndroidAPS conectando tu
aplicación de sensor dedicada a un smartwatch o a un ciclocomputador. Esto
permite monitorizar cómodamente los niveles de glucosa y los datos de tendencias
durante el ejercicio
Es importante recordar que estas recomendaciones son un punto de partida y que
pueden ser necesarios ajustes en función de la respuesta individual al ejercicio. La
monitorización regular, la autoobservación y la colaboración con los profesionales
sanitarios ayudarán a perfeccionar la dosificación de insulina y a lograr un control
óptimo de la glucemia durante la actividad física con AndroidAPS.
6.5 Enfermedad
Durante una enfermedad, generalmente se recomienda mantener AndroidAPS en
Modo Automático o Modo Bucle, a menos que su proveedor de atención médica le
indique lo contrario.
Consulte las directrices sobre enfermedades que se tratan en el módulo general
sobre sistemas automáticos de administración de insulina.
6,6 Alcohol
Cuando se consume alcohol mientras se utiliza AndroidAPS, es importante tomar ciertas precauciones para prevenir la hipoglucemia. He aquí algunas
recomendaciones:
Puede ajustar su valor objetivo a un nivel superior al habitual, o establecer un %
inferior de su perfil de insulina, cuando consuma alcohol. Esto puede ayudar a
evitar que el sistema administre un exceso de insulina en respuesta a cualquier
aumento de los niveles de glucosa.
Cabe señalar que el simple consumo de más hidratos de carbono no es una
estrategia eficaz para prevenir la hipoglucemia, ya que el sistema automatizado de

administración de insulina compensará cualquier aumento de los niveles de
glucosa incrementando la administración de insulina.
Vigile siempre de cerca sus niveles de glucosa cuando consuma alcohol y
prepárese para realizar los ajustes necesarios.
6,7 Viajes
Cuando se viaja con AndroidAPS, es importante estar preparado y tener en cuenta
algunos factores específicos. Estas son algunas consideraciones para viajar:
1. Asegúrese de que dispone de suficientes suministros para la diabetes, como
insulina, equipos de infusión, sensores, tiras reactivas y dispositivos de reserva,
para todo el viaje. Siempre es mejor estar preparado con suministros adicionales en
caso de cualquier situación inesperada.
2. Cuando viaje en avión, es posible que tenga que hacer algunos ajustes. Tenga en
cuenta lo siguiente:
-​ Por lo general, la función Bluetooth del teléfono móvil, la bomba y el
transmisor pueden permanecer activados durante el vuelo. Sin embargo,
algunas compañías aéreas exigen a los pasajeros que pongan sus teléfonos
móviles en modo avión durante el despegue y el aterrizaje. Cuando el
teléfono esté en modo avión, la bomba cambiará a la tasa de insulina basal
preestablecida. No olvides desactivar el modo avión una vez que esté
permitido, para reanudar el funcionamiento normal de la aplicación y del
sistema de bucle cerrado.
-​ Durante el vuelo, la conectividad Wi-Fi y 4G de tu tarjeta SIM no estará
disponible. Esto no debería afectar al funcionamiento de la aplicación
AndroidAPS, ya que seguirá funcionando perfectamente a través de
Bluetooth. Sin embargo, los datos no se reenviarán a Nightscout hasta que
recuperes una conexión a Internet estable.
-​ La aplicación AndroidAPS suele detectar los cambios de zona horaria
automáticamente y ajusta la hora en consecuencia, aunque dependiendo de
la configuración de la bomba y el MCG, los saltos en la hora pueden dar
problemas.

-​ Es una buena práctica volver a comprobar la configuración de la hora en la
aplicación después de llegar a tu destino para garantizar un registro preciso
de los datos.
Recuerde cumplir siempre las normas y directrices de las compañías aéreas sobre
el uso de dispositivos electrónicos, e informe al personal de la aerolínea de que
lleva un dispositivo médico, como una bomba de insulina.
Tomando las precauciones necesarias y planificando con antelación, podrá disfrutar
de sus viajes al tiempo que garantiza la funcionalidad continuada de su sistema
AndroidAPS.
En este capítulo, cubrimos cómo manejar situaciones especiales como la
hipo/hiperglucemia, las comidas ricas en grasas, el ejercicio, la enfermedad, el
alcohol y los viajes con AndroidAPS. Proporcionamos recomendaciones y
estrategias para abordar estas situaciones con eficacia. ¡Ya lo tienes! Recuerda que
las respuestas individuales pueden variar, por lo que la experimentación y el
seguimiento son fundamentales. Buscar el apoyo de la comunidad AndroidAPS y
de los profesionales sanitarios también es valioso.
Aprovechando AndroidAPS y conectándose con sus iguales, las personas pueden
sortear estas situaciones y mejorar eficazmente el control de su diabetes.
