<!-- VIDEO PLAYLIST: https://www.youtube.com/playlist?list=PLHLpqGaC-3q8L4VDlKQg2_fse5JjMEo-p -->
<div class="video-container">
<iframe width="100%" height="400" src="https://www.youtube.com/embed/VIDEO_ID_AQUI" frameborder="0" allowfullscreen></iframe>
</div>

## **<u>4. Cómo funciona iAPS</u>**

Bienvenido a este vídeo sobre el funcionamiento de iAPS. El control de la administración de insulina con el sistema automatizado de administración de insulina iAPS se realiza a través de la app iAPS que se instala en tu iPhone. La aplicación ofrece dos modos de funcionamiento principales: Lazo cerrado o modo automático y Lazo abierto.

- En Closed Loop, iAPS ajusta automáticamente la administración de insulina

cada 5 minutos basándose en las lecturas de glucosa del sensor en tiempo real.

- Si Bucle cerrado está desactivado, se encuentra en Bucle abierto. Open Loop puede considerarse como una especie de Modo Manual, aunque iAPS proporciona las sugerencias para ajustar la insulina basal basándose en los algoritmos subyacentes, que pueden confirmarse manualmente.

En este vídeo, profundizaremos en la funcionalidad de la app iAPS en general, y exploraremos cómo puede utilizar la app iAPS tanto en el Modo de Lazo Cerrado como en el Modo de Lazo Abierto.

### 4.1 La aplicación iAPS

Cuando abre la aplicación iAPS, puede ver la pantalla de inicio de iAPS.

- La fila superior muestra un icono de bucle con una marca de tiempo del último ciclo de bucle.

- El color del icono de bucle debe ser verde. Si el último ciclo de bucle fue hace más de 5 min, el círculo cambia a naranja, y después de más de 10 minutos, cambia a rojo. Si el bucle cerrado está desactivado, menciona "Abierto" refiriéndose al bucle abierto. Junto al icono de bucle, el valor de glucosa de tu sensor, incluyendo la marca de tiempo y la tendencia de la glucosa de tu sensor y la diferencia con el valor de glucosa anterior.

- La segunda fila muestra los carbohidratos a bordo, la insulina a bordo y dos iconos de estado relacionados con la bomba de insulina, como el tiempo transcurrido desde la última infusión o el cambio de Pod y las unidades de insulina restantes.

- Si pulsas sobre los iconos de estado de la bomba, podrás ver la pantalla de configuración de tu bomba.

- Tenga en cuenta que la Insulina a bordo puede ser negativa si el

algoritmo ha reducido la tasa de insulina basal preestablecida.

- La fila 3 ofrece una vista de la insulina basal real que se suministra a la bomba, el Perfil activo.

- El perfil normal es el perfil predeterminado de los ajustes.

- Si pulsa sobre perfil, puede cambiar fácilmente el perfil predeterminado y guardarlo como un perfil independiente. Puede cambiar el % de administración de insulina y el valor objetivo de glucosa. A través de Más opciones, puede desactivar las SMB o cambiar los minutos de SMB. Y puedes decidir si quieres que el cambio en el % de administración de insulina tenga efecto sobre el ISF o el ratio de carbohidratos.

- En cuanto se activa el nuevo perfil, los ajustes son visibles en la pantalla principal indicando el nombre del perfil y los ajustes en la esquina superior derecha. y el valor de glucosa calculado que se alcanzará en 2 horas en función de todos los parámetros de los que dispone el algoritmo. Este valor cambia en cada ciclo del bucle.

- En el centro de la pantalla de inicio de iAPS puede ver su administración de insulina basal en azul. La línea horizontal discontinua es tu tasa de insulina basal preestablecida.

- Debajo puedes ver tu curva de glucosa.

- La curva a la izquierda de la línea discontinua muestra tus últimas lecturas de glucosa. Los círculos naranjas son carbohidratos introducidos y las flechas azules son bolos de insulina.

- Las curvas a la derecha de la línea discontinua muestran las diferentes predicciones para su glucosa. Hay una leyenda para estas líneas de predicción debajo de la curva.

- La escala del gráfico y las opciones adicionales del gráfico pueden configurarse a través de los Ajustes.

- Si pulsa sobre la curva de glucosa, puede ver la pantalla Historial con sus valores recientes de administración de insulina y glucosa.

- La fila inferior muestra 4 botones de acción diferentes: Bolo de comida, Bolo de corrección, Perfiles y Ajustes.

- A través de Comida, puede introducir sus carbohidratos, grasas y proteínas, y se le sugerirá un bolo de insulina. Si pulsa sobre el icono i, podrá ver cómo se calcula. Puede introducir el bolo de insulina que desea administrar y pulsar sobre el bolo para administrarlo.

- A través del icono de caída de insulina puede administrar un bolo de corrección manual. Esto no es recomendable si utilizas las funciones SMB y UAM. También puede introducir insulina sin administrarla a través de la bomba, por ejemplo, si utiliza una pluma de insulina.

- A través de Perfil puede definir/seleccionar/cancelarun valor objetivo de glucosa superior o inferior para una duración específica, adaptar su ISF o CR y la administración de insulina genérica y también puede realizar preajustes.

- Se puede acceder a todos los ajustes a través del icono Ajustes de la

pantalla principal. -

Primero puedes ver la información de tu versión de iAPS

- Luego tienes el selector de circuito cerrado

- Y el enlace a las pantallas de tus dispositivos para la bomba de insulina, el MCG y el reloj.

- Luego tienes un enlace a tus servicios, que son Nightscout, Apple Health y Notificaciones.

- A continuación, puedes configurar los ajustes de la bomba, el perfil basal, la sensibilidad a la insulina, los ratios de carbohidratos y el objetivo de glucosa.

- En la sección OpenAPS puede definir todos los parámetros OpenAPS, así como los ajustes de Autoajuste.

- En la sección Características adicionales se pueden definir varios parámetros sobre UI/UX, iconos de la aplicación, calculadora de bolo, conversión de grasas y proteínas, ISF dinámico, uso compartido e imagen de contacto. -

Por último, dispone de la configuración del tratamiento de hipoglucemia, las opciones de depuración, puede activar un fondo animado y hay un enlace para compartir sus registros recientes por si necesita ayuda de un desarrollador.

- Las estadísticas están disponibles desplazándose hacia abajo en la pantalla principal.

- Hoy: indica el intervalo de tiempo. Al seleccionar ese elemento, se abre una nueva ventana que proporciona todas las opciones posibles para la información de Time In Range (hoy, día, semana, mes, total de 3 meses), así como las estimaciones de HbA1c, % de bucles con éxito, desviación estándar, coeficiente de variación y glucosa media.

- Bucles: indica el % de bucles con éxito, cantidad de bucles, ciclo medio del bucle (en min), Al seleccionarlo aparece la misma ventana descrita anteriormente.

- Carbohidratos Activos: vista de las últimas 24 horas de entradas de carbohidratos - Insulina Activa: Vista de 24 horas, con en la parte superior total diario de insulina de hoy, ayer y anteayer y también una media diaria de los últimos 10 días. Repasaremos en detalle las opciones de OpenAPS.

- Encontrará todos los parámetros de OpenAPS en Ajustes. Estos se dividen en Ajustes principales de OpenAPS, Ajustes SMB de OpenAPS, Ajustes de destino de OpenAPS y Otros ajustes de OpenAPS. Si pulsa sobre uno de los ajustes de OpenAPS, podrá ver una breve descripción. También puede encontrar más información detallada en la documentación de OpenAPS.

- Además, se puede habilitar Autotune.

- A través de los Ajustes de la bomba, puede establecer su Basal máximo, Bolo máximo, Carbohidratos máximos y la duración de la acción de la insulina, que está establecida en 6 horas por defecto.

- A través de Perfil Basal, Sensibilidad a la Insulina y Relación de Carbohidratos, puede establecer sus ajustes básicos por bloque de tiempo de 1 hora. Esto se conoce como "Perfil normal".

- Aquí también puede establecer su valor de glucosa objetivo por bloque de tiempo de 1 hora. Navegando por estas secciones, podrá controlar eficazmente su diabetes con la aplicación iAPS.

### 4.2 Lazo Cerrado

Ahora que sabemos cómo funciona el iAPS, vamos a discutir cómo utilizar el iAPS en modo automático o en modo de bucle cerrado. Inicio del modo Bucle cerrado de iAPS Una vez que haya comprobado que los ajustes de su núcleo son bastante precisos, puede activar el Bucle cerrado a través de los Ajustes. Utilizar un objetivo Temporal preestablecido En iAPS, puede establecer un Objetivo temporal a través de un interruptor de perfil,

- Los preajustes más comunes son un objetivo alto para hacer ejercicio y un objetivo bajo para prepararse para las comidas.

- Un

interruptor de perfiltambién permiteajustesde su proporción de

carbohidratos, ISF y SMB,según sus necesidades y preferencias individuales Ajuste de parámetros En iAPS, tienes la flexibilidad de cambiar tu Perfil por defecto o Normal a través de los Ajustes. Aquí puede cambiar su tasa de insulina basal, la proporción de carbohidratos, la sensibilidad a la insulina y la glucosa objetivo. La duración de la acción de la insulina se encuentra en los ajustes de la bomba. Administración de un bolo de insulina puedes administrar insulina para una comida de 2 formas:

- A través del botón de acción Comida, puede introducir carbohidratos, y se calculará un bolo de insulina. Puede confirmar o corregir antes de "ejecutar" el bolo.

- O bien, a través del botón con forma de gota de insulina, puede introducir directamente el número de unidades de insulina que desea administrar. Suspender la insulina Si necesitas suspender temporalmente la administración de insulina, por ejemplo durante el ejercicio para evitar el riesgo de hipoglucemia, puedes ir a la pantalla de tu Bomba tocando los iconos de la bomba en la pantalla de inicio o a través de los ajustes. Desde ahí, puedes elegir la opción de "Suspender la administración de insulina" durante un periodo que oscila entre 30 minutos y 2 horas. Esto suspenderá temporalmente la administración de insulina de la bomba. Aquí también puede reanudar la administración de insulina.

### 4.3 Bucle abierto

En determinadas situaciones, puede ser necesario cambiar al Modo Manual en iAPS. En teoría, iAPS debería ser capaz de gestionar enfermedades y otras perturbaciones. Sin embargo, a veces puede ser más apropiado volver a lo básico. Puede pasar al Modo Manual desactivando el Bucle Cerrado a través de los Ajustes. En el Modo Manual, iAPS funciona como el Modo Lazo Cerrado:

- puedes ajustar la tasa de insulina basal, el ratio de carbohidratos, la sensibilidad a la insulina, el valor objetivo de glucosa y la duración de la acción de la insulina a través de los Ajustes

- Puedes cambiar de perfil o establecer un nuevo perfil a través de la pantalla de inicio.

- Y puede administrar un bolo a través del icono Comida o a través del icono Gota de insulina. En conclusión, iAPS ofrece muchos ajustes adicionales además de los ajustes básicos del Modo Manual. Lo mejor es experimentar con la aplicación en bucle abierto y consultar la documentación antes de cerrar el bucle y utilizar los ajustes avanzados y dinámicos. Aunque pueda parecer desalentador ajustar el sistema por ti mismo, es importante recordar que no estás solo en este viaje. La comunidad iAPS está ahí para apoyarle en cada paso del camino. Por lo tanto, tenga confianza, busque ayuda cuando la necesite y consulte la amplia documentación mientras trabaja para lograr un control glucémico óptimo con iAPS.
