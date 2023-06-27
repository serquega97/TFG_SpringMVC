/*
* File that contains the statements to insert all services/treatments to database
* Author:  sergiquevedogarreta
*/

USE phisioweb;

INSERT INTO Treatment (ID, SERVICE_NAME, SERVICE_PRICE, SERVICE_DESC1, SERVICE_DESC2,
    SERVICE_DESC3, SERVICE_DESC4, SERVICE_DESC5, URL_PHOTO, SERVICE_DURATION, SERVICE_WEBNAME) 
    VALUES (1, 'Punción seca', 35,
    'La punción seca es una herramienta terapéutica muy efectiva que introduce agujas de acupuntura para tratar el dolor musculoesquelético. La intención es tratar estas contracturas con “estímulos mecánicos”. De igual forma que cuando hacemos un masaje, es como si estuviéramos amasando el pan, para darle forma con nuestras manos. Este “estímulo mecánico” se provoca también con la aguja, que al ser más pequeña de diámetro hace el tratamiento más preciso.', 
    'La diana terapéutica es el punto gatillo miofascial, una zona hiperirritable del músculo esquelético asociada a un nódulo palpable hipersensible localizado en una banda tensa de fibras musculares. Este es responsable de un conjunto de signos y síntomas sensoriales, motores y autonómicos causando lo que se conoce como síndrome de dolor miofascial; según Travell y Simons.',
    'Las técnicas que más se suelen utilizar son la técnica de punción seca superficial de Peter Baldry, que consiste en dejar la aguja en los tejidos subcutáneos suprayacentes al punto gatillo miofascial durante un corto periodo de tiempo; y la técnica de punción seca profunda de entrada y salida rápidas de Chan-Zern Hong. Esta consiste en localizar y estabilizar el punto gatillo miofascial, insertar la aguja hasta atravesarlo con la intención de provocar respuestas de espasmo local mediante entradas y salidas rápidas.',
    'De igual forma que los fisioterapeutas tenemos la capacidad de sentir como esta el tejido con las manos y de encontrar con facilidad el punto de dolor, al final uno coge la misma percepción mediante la aguja y busca las contracturas con más facilidad y efectividad.',
    'Contraindicaciones de la punción seca: belonefobia, inmunodeficiencias, problemas de la coagulación importantes, alergia a los metales, zonas con heridas, cicatrices, tatuajes, manchas que sean recientes en mujeres embarazadas (en zonas próximas a las regiones pélvica y abdominal).',
    'PuncionService.JPG',
    30,
    'Puncion');

INSERT INTO Treatment (ID, SERVICE_NAME, SERVICE_PRICE, SERVICE_DESC1, SERVICE_DESC2,
    SERVICE_DESC3, SERVICE_DESC4, SERVICE_DESC5, URL_PHOTO, SERVICE_DURATION, SERVICE_WEBNAME) 
    VALUES (2, 'Readaptación deportiva', 40,
    'La readaptación no solo está indicada para deportistas profesionales y amateurs, también es eficaz si la lesión ha sido provocada por una caída, un mal gesto, un atropello, etc. No hay límite de edad para hacer readaptación a la actividad física. Cada persona tendrá un objetivo distinto en la recuperación, desde volver a practicar deporte hasta poder ejercer sus actividades de la vida diaria de manera más rápida y segura después de sufrir una lesión.',
    'La readaptación deportiva es la unión que existe en el ámbito deportivo, entre la fisioterapia y la preparación física. Según Carlos Lalín Novoa, un referente de la readaptación fisíca, consiste en el proceso de enseñanza/aprendizaje mediante el cual se revisten los patrones motores generales y específicos de un deportista, facilitando en el menor tiempo posible un estado óptimo para el esfuerzo, que garantice su incorporación a su actividad y entorno habitual con normalidad y diligencia.',
    'Ejemplo 1: un corredor profesional se lesiona de un tirón muscular a 200 metros de su llegada a la meta. A esta persona no solo tendremos que trabajar mediante la fisioterapia y después hacer ejercicios de readaptación. Esta persona también necesitara alguien que la comprenda, que trabaje el miedo a volverse a lesionar, la inseguridad de volver a competir y ayudarle a sentirse capaz de volver a correr como antes. Incluso mejor.',
    'Ejemplo 2: una señora de 70 años atropellada por un vehículo se rompe un hueso de la pierna. Ella vive sola. Antes del accidente salía a pasear con sus amigas, podía ir a comprar e incluso cogía el coche para visitar a la familia. Ahora no puede hacer nada. Igual que en el caso anterior, no solo hay que hacer técnicas de fisioterapia y enseñarle ejercicios. Hay muchas cosas más importantes que tener en cuenta.',
    'Las contraindicaciones relativas de la readaptación son: enfermedades cardiovasculares, enfermedades del aparato respiratorio, enfermedades endocrino-metabólicas y nutricionales, enfermedades infecciosas, enfermedades nefrourológicas, enfermedades oftalmológicas, enfermedades del aparato digestivo y locomotor, etc.',
    'ReadaptacionService.JPG',
    60,
    'Readaptacion');

INSERT INTO Treatment (ID, SERVICE_NAME, SERVICE_PRICE, SERVICE_DESC1, SERVICE_DESC2,
    SERVICE_DESC3, SERVICE_DESC4, SERVICE_DESC5, URL_PHOTO, SERVICE_DURATION, SERVICE_WEBNAME) 
    VALUES (3, 'Electroterapia', 50,
    'La electroterapia consiste en la aplicación de pequeñas corrientes eléctricas con fines terapéuticos. Se podría definir como la ciencia que emplea el tratamiento de las lesiones por medio de la electricidad. La electrofisiología combina el conocimiento del fisioterapeuta con las leyes de la física y de la química para conseguir reacciones curativas que terminan por relajar la musculatura de manera natural y por paliar el alcance de las lesiones que se hayan podido sufrir.',
    'La electroterapia como dice su nombre es una terapia mediante electricidad con fines terapéuticos. Hay diferentes tipos de electroterapia: TENS (estimulación eléctrica transcutánea de los nervios), donde se colocan unos electrodos a la persona en la zona lesionada. A través de los electrodos sentirá una vibración suave que ayuda a reducir el dolor y relajar la musculatura. EMS (Electroestimulador muscular): este es casi igual que la anterior. La diferencia es que la persona tendrá que hacer un ejercicio específico mientras siente la vibración para ayudarle a coger fuerza muscular.',
    'Otros tipos de electroterapia serian : Ultrasonidos: esta técnica es muy parecida a la ecografía.El cabezal de la máquina produce una mínima vibración y un aumento de la temperatura que ofrece un efecto antiinflamatorio y alivio del dolor. Magnetoterapia: esta terapia a diferencia de las anteriores, produce efectos gracias al campo magnético. Es más indicada para fracturas, fisuras y lesiones articulares, gracias a su gran efecto de regeneración.',
    'Beneficios: Su poder para calmar las molestias musculares, su carácter antiinflamatorio, su valor como medida preventiva, su capacidad para equilibrar el riego sanguíneo en la zona dañada, su eficacia para corregir todo tipo de lesiones.',
    'Contraindicaciones de la electroterapia: proceso tumoral, embarazos, trastornos de sensibilidad, personas no colaboradoras, personas con marcapasos, en heridas abiertas, en la parte anterior del cuello, personas alérgicas al gel de los electrodos.',
    'ElectroService.JPG',
    90,
    'Electroterapia');

INSERT INTO Treatment (ID, SERVICE_NAME, SERVICE_PRICE, SERVICE_DESC1, SERVICE_DESC2,
    SERVICE_DESC3, SERVICE_DESC4, SERVICE_DESC5, URL_PHOTO, SERVICE_DURATION, SERVICE_WEBNAME) 
    VALUES (4, 'Vendaje Neuromuscular (Kinesiotaping)', 25,
    'Seguro que habrás visto alguna vez en la televisión o en directo, a un deportista profesional con unas cintas de colores en la piel. Esas cintas son vendajes neuromusculares o kinesiotape. No solo son aptas para deportistas de élite. Hoy en día se utilizan para muchos fines. Desde una anciana con dolor de rodilla, hasta un niño con espasticidad por hemiplejia, hasta para calmar el dolor menstrual.',
    'El vendaje neuromuscular o Kinesiotaping fue desarrollado por el doctor Kenzo Kase y es un vendaje principalmente compuesto de algodón con un adhesivo acrílico, hipoalergénico, resistente al agua y elástico en un 130% de su longitud original. El vendaje tiene una textura y elasticidad muy cercana a la piel humana.',
    'Existen muchas situaciones en las que podríamos colocar el kinesiotape, per normalmente se utiliza para: aliviar el dolor, aumentar la movilidad, disminuir la inflamación y hematoma, ofrecer cierta estabilidad en deportes o gestos que necesitan un alto rango de movimiento, ayuda a mejorar la fuerza muscular, remedia problemas posturales.',
    'La técnica consiste en la aplicación de las cintas sobre la piel de la persona con la intención de: reducir el dolor en lesiones o disfunciones del sistema musculoesquelético, mejorar la biomecánica articular, mejorar la función articular, principalmente la propiocepción, facilitar la vuelta al ejercicio después de una lesión, mejorar el rendimiento deportivo, incrementar el tono muscular en músculos débiles, relajar músculos sobrecargados, favorecer el drenaje linfático y venoso, la reabsorción de edemas y reducir la inflamación.',
    'Los beneficios del ,kinesiotaping son: Efecto circulatorio: debido a la elasticidad del vendaje, se genera una ligera elevación de la piel formando pliegues cutáneos superficiales. Estos aumentan el espacio celular subcutáneo donde se encuentran los capilares sanguíneos y perilinfáticos, generando así, un aumento de la circulación local. Efecto analgésico: el aumento del espacio celular subcutáneo disminuye la presión de los mecanorreceptores ubicados en este espacio, reduciendo las aferencias nociceptivas. El efecto circulatorio favorece el drenaje de los detritos tisulares y de los mediadores inflamatorios acumulados en la zona lesionada. Efecto neuro-mecánico: la tracción producida por la elasticidad del vendaje tensa las fibras de colágeno y la fascia profunda, desencadenando un reflejo protector para evitar el sobrestiramiento de estos tejidos lesionados.',
    'KinesioService.JPG',
    30,
    'Kinesio');

INSERT INTO Treatment (ID, SERVICE_NAME, SERVICE_PRICE, SERVICE_DESC1, SERVICE_DESC2,
    SERVICE_DESC3, SERVICE_DESC4, SERVICE_DESC5, URL_PHOTO, SERVICE_DURATION, SERVICE_WEBNAME) 
    VALUES (5, 'Masaje terapéutico (masoterapia)', 35,
    'El masaje terapéutico o masoterapia es un conjunto de movimientos que hacemos con las manos en contacto con la otra persona por encima o alrededor de la zona lesionada con el objetivo de aliviar el dolor y mejorar la sensación previa. Un masaje es como amasar el pan. Hay que hacer una serie de presiones para moldearlo y darle la forma correcta. En el músculo es similar. Esos movimientos y presiones ayudan a quitar el aumento de tensión muscular y posibles contracturas (como una bola) que pueden provocar dolor, dificultad para mover u otras sensaciones.',
    'EN EL SISTEMA CIRCULTARIO:',
    'EN EL SISTEMA MUSCULAR:',
    'EN EL SISTEMA NERVISOSO:',
    'Contraindicaciones del masaje terapéutico: período agudo de traumatismos, contusiones y/o derrames articulares, heridas abiertas, infecciones de piel, inicios de flebitis y fragilidad vascular, fiebre.',
    'MasoterapiaService.JPG',
    60,
    'Masoterapia');

INSERT INTO Treatment (ID, SERVICE_NAME, SERVICE_PRICE, SERVICE_DESC1, SERVICE_DESC2,
    SERVICE_DESC3, SERVICE_DESC4, SERVICE_DESC5, URL_PHOTO, SERVICE_DURATION, SERVICE_WEBNAME) 
    VALUES (6, 'Mantenimiento y recuperación para gente mayor', 45,
    '¿Tienes un padre o abuelo al que hayan ingresado en el hospital de forma duradera? ¿Qué ha pasado al volver a casa? Pasa, que pierden mucha masa muscular, fuerza y equilibrio. Puede que empieces a notarle alguna demencia por la edad. El mantenimiento para nuestra gente mayor es esencial para su autonomía e independencia.',
    '¿Entonces, que debo hacer en este caso? Acudir a un fisioterapeuta para recuperar su estado de salud. La actividad física es el salvavidas para la gente mayor. Tendremos que realizar una progresión de ejercicios para que poco a poco vuelva a recuperar su autonomía. Un atropello, una caída, la demencia por la edad, dolores y/o lesiones crónicas que se llevan arrastrando muchos años, etc. Hay infinidad de opciones que pueden hacer que nuestros mayores necesiten recuperarse y luego mantener su salud física y mental.',
    'Por eso es importante promover la actividad física, para: reducir el riesgo de padecer enfermedades crónicas, disminuir la posibilidad de sufrir caídas, ofrecer autonomía e independencia propia, evitar estados de ansiedad y depresión, retrasar la aparición de demencias por la edad, ayudar a mantener un peso corporal adecuado, mejorar las relaciones sociales.',
    'La Organización Mundial de la Salud expresa que los adultos mayores necesitan siempre mantenerse en constante actividad física. Estas pueden ser recreativas, de ocio o de desplazamiento, como: caminar, correr, nadar o bailar, ejercicios de fuerza mediante mancuernas, pesas y cintas elásticas, ejercicios de equilibrio, ejercicios de flexibilidad, conjunto de ejercicios suaves, diseñados especialmente para los adultos mayores.',
    'Los beneficios de los ejercicios de mantenimiento para ancianos son: reduce el riesgo de padecer enfermedades crónicas, disminuye la posibilidad de sufrir caídas, ofrece autonomía e independencia propia, evita estados de ansiedad y depresión, retrasa la aparición de demencias por la edad, ayuda a mantener un peso corporal adecuado, mejora las relaciones sociales.',
    '',
    60,
    'Gente_mayor');

INSERT INTO Treatment (ID, SERVICE_NAME, SERVICE_PRICE, SERVICE_DESC1, SERVICE_DESC2,
    SERVICE_DESC3, SERVICE_DESC4, SERVICE_DESC5, URL_PHOTO, SERVICE_DURATION, SERVICE_WEBNAME) 
    VALUES (7, 'Método pilates', 35,
    'Hoy en día se ha puesto muy de moda el Pilates. Yo en su momento me saqué la titulación porque había una alta demanda de trabajo de esta modalidad y quería que estuviera en mi currículo. Ha cambiado mucho mi percepción sobre el Pilates. Tanto, que utilizo sus principios básicos en mi día a día, tanto en la readaptación deportiva, como en ejercicios terapéuticos de rehabilitación. Principalmente el Pilates se centra en: Respiración. (prevención, flexibilización y fortalecimiento muscular y  control postural (estar en forma sin dolor con trabajo de la musculatura profunda abdominal-lumbar).',
    'Por ejemplo, si voy por la calle y un atracador me clava un puñal en la pierna, ¿Qué pasa? Me escaparé medio cojo, pero podré huir medianamente rápido. Al final es como si se nos pincha una rueda del coche, podremos seguir de aquella manera. En cambio, si me clava el puñal en el abdomen, ¿Por qué no podré huir si tengo las piernas bien? Porque toda esta musculatura estabilizadora abdominal-lumbar es la que transfiere la fuerza hacia los brazos y hacia las piernas.  Esta musculatura de la que hablo es el motor de mi coche. Que más da como estén las ruedas, si se ha roto el motor, no podré circular.',
    'Sus principios son: respiración, estabilización y control central, disociación de movimiento, flexibilización articular y muscular, fortalecimiento muscular, alineamiento postural, integración, coordinación, precisión y equilibrio.',
    'Sus beneficios son: aumento de la fuerza y estabilidad, mejora la movilidad, coordinación, corrección postural, prevención de lesiones.',
    'Contraindicaciones para realizar el método Pilates: hipertensión arterial inducida por el embarazo (preclampsia), trabajo de parto prematuro (anterior/presente), el sangrado persistente en el segundo y tercer trimestre, la placenta previa, prematuro; rotura prematura de las membranas.',
    '',
    60,
    'Pilates');