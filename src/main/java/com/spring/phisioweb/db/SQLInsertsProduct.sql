/*
* File that will be executed after creating the database inserting initial values to Product table
* Author:  sergiquevedogarreta
*/

#Electroterapia inserts
INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (1, 'Electroestimulador Med-Fit 3', 0.33, 29.95, 'Electroterapia', 
    'Es el más económico.', 
    'El más fácil de utilizar y más recomendable para personas novatas.',
    'Sencillo pero suficiente.',
    'Enfocado en el alivio del dolor y relajación muscular.',
    'Funciona con una pila de 9V.',
    'Electro3.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (2, 'Electroestimulador Easy@Home', 0.34, 30.95, 'Electroterapia', 
    'Es económico.', 
    'Es muy pequeño y fácil de transportar.',
    '3 en 1: TENS, fitness y una función de masaje.',
    'La estructura de los electrodos hace que se conserven mejor.',
    'Cuenta con 16 programas.',
    'ElectroHome.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (3, 'Electroestimulador Beurer EM49', 0.11, 60.90, 'Electroterapia', 
    'La mejor opción calidad/precio.', 
    'Pantalla digital que facilita su uso.',
    '3 en 1: TENS, fitness y una función de masaje.',
    '2 canales con 4 electrodos autoadhesivos.-  Cuenta con 6 programas.',
    'Tecnología con cables.',
    'ElectroBeurer.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (4, 'Electroestimulador Compex Fit 3.0', 0.43, 299.95, 'Electroterapia', 
    'Más enfocada al fitness.', 
    '4 en 1: TENS, fitness, anti dolor y masaje.',
    'Usa tecnología MI-Scan.',
    'Cuenta con 20 programas.',
    'Incluye batería recargable.',
    'ElectroCF3.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (5, 'Electroestimulador Compex SP 2.0', 0.43, 299.95, 'Electroterapia', 
    'Más enfocada al deporte.', 
    'En 1: TENS, fitness, anti dolor y masaje.',
    'Usa tecnología MI-Scan.tecnología MI-Scan.',
    '4 canales con 8 electrodos autoadhesivos.',
    'Cuenta con 20 programas.',
    'ElectroCompex.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (6, 'Electroestimulador Globus Duo Pro', 0.40, 118.99, 'Electroterapia', 
    '4 en 1: TENS, fitness, estética y masaje.', 
    '2 canales con 4 electrodos autoadhesivos.',
    'Tecnología con cables.',
    'Cuenta con 35 programas.',
    'Funciona con 3 pilas AAA.',
    'ElectroGlobus.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (7, 'Electroestimulador Compex SP 4.0', 0.45, 440.30, 'Electroterapia', 
    '5 en 1: TENS, fitness, preparación física, anti dolor y masaje.', 
    'Usa tecnología MI-Scan, MI- Range y MI-TENS.',
    '4 canales con 8 electrodos autoadhesivos.',
    'Cuenta con 30 programas.',
    'Incluye batería recargable.',
    'Electro4.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (8, 'Electroestimulador Compex SP 8.0', 0.50, 860.30, 'Electroterapia', 
    '5 en 1: TENS, fitness, preparación física, anti dolor y masaje.', 
    'Capaz de guardar el historial de tus sesiones y descargar objetivos.',
    'Usa tecnología MI-SCAN, MI-Autorange, MI-Tens, MI-Action (en todos los canales).',
    '4 canales con 8 electrodos autoadhesivos.',
    'Cuenta con 40 programas.',
    'Electro8.jpg',
    0,
    '');

#Termoterapia inserts
INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (9, 'Almohadilla Eléctrica de Calefacción MaxKare', 0.54, 25.99, 'Termoterapia', 
    'Calentamiento rápido.', 
    'Protección contra sobrecalentamiento.',
    '4 niveles de temperatura.',
    'Apagado automático después de 1.5 horas.',
    'Certificaciones de CE, GS y Öko-Tex 100.',
    'Maxkare.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (10, 'Almohadilla Eléctrica de Calefacción Laluztop', 0.50, 31.90, 'Termoterapia', 
    'Calentamiento rápido.', 
    'Material terciopelo de franela no alérgica.',
    '4 modos temporizadores (30/60/90/120min).',
    'Lleva una cinta elástica para fijar la manta alrededor del cuerpo.',
    'Apagado automático.',
    'Laluztop.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (11, 'Saco térmico de semillas de trigo Carredana', 0.99, 19.99, 'Termoterapia', 
    'Tiene más de 800 valoraciones en Amazon, con una media de 4.5 de 5.', 
    'Calentar en microondas.',
    'Se puede lavar.',
    '50 x 16 cm de tamaño.',
    'Fabricado en España.',
    'Carredana.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (12, 'Saco Térmico Semillas MaxiCervical', 0.64, 20.99, 'Termoterapia', 
    'Calentar en microondas.', 
    'Se puede lavar.',
    'Incluye libro de instrucciones.',
    'Hecho a mano.',
    'Material algodón 100%.',
    'Maxicervical.jpg',
    0,
    '');

#Crioterapia inserts
INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (13, 'Almohadilla Eléctrica de Calefacción MaxKare', 0.07, 13.28, 'Crioterapia', 
    'Tiene más de 4700 valoraciones en Amazon, con una media de 4.5 de 5.', 
    'Debe introducir cubitos de hielo.',
    'Es flexible y se adapta a cualquier zona.',
    '12, 20 o 28 cm de tamaño.',
    'Proporciona la relajación muscular necesaria.',
    'Neotech.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (14, 'Com-four® 3X Compresas Multiuso en Tres Tamaños Diferentes', 0.76, 14.99, 'Crioterapia', 
    'Incluye funda de vellón para evitar quemaduras en la piel.', 
    'Enfriar 2 horas en el congelador.',
    'Son reutilizables.',
    'La cubierta es de plástico.',
    'Local alivia el dolor, alivia la hinchazón, promueve la circulación sanguínea y elimina la tensión.',
    'Compmultiuso.jpg',
    0,
    '');

#Cremas y aceites inserts
INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (15, 'Aceite Vegetal de Rosa Mosqueta', 0.12, 12.54, 'Aceite', 
    'Es mano de santo.', 
    'Favorece la regeneración cutánea.',
    'Efecto lifting.',
    'Sin ninguna duda lo más recomendable para evitar que quede una cicatriz fea.',
    'La rosa mosqueta es una flor con virtudes sorprendentes que crece en estado silvestre.',
    'Rosamosqueta.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (16, 'FISIOCREM Gel Active', 0.025, 6.99, 'Aceite', 
    'Tiene más de 700 valoraciones en Amazon, con una media de 4.5 de 5.', 
    'Crema con efecto calor suave.',
    'Producto natural compuesto por: Árnica, Caléndula, Melaleuca alternifolia, Hipérico y menta.',
    'Especial para la recuperación cuando existen contusiones.',
    'Especialmente indicada para lesiones deportivas (esguinces y dolores musculares) y de espalda.',
    'Fisiocrem.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (17, 'Bálsamo De Tigre rojo', 0.08, 11.95, 'Aceite', 
    'Crema con efecto calor.', 
    '100 % natural.',
    'Ingredientes: Alcanfor, mentol, aceite esencial de menta, aceite esencial de cajeput, aceite esencial de clavo 
        y aceite esencial de canela de China.',
    'Excelente bálsamo de uso tópico.',
    'Alivia dolores articulares y musculares que pueden ser generados por el ejercicio. ',
    'Balsamotigre.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (18, 'Physiorelax Ultra Heat Crema de Efecto Calor', 0.1, 12.00, 'Aceite', 
    'La crema con efecto calor más alto.', 
    'No recomendada para pieles sensibles.',
    'Testada dermatológicamente.',
    'Perfecta para deportes de contacto, entrenamiento funcional u otros deportes.',
    'Selección exclusiva de aceites esenciales de alta calidad: árnica montana, 
        caléndula, harpagofito, hipérico, capsicum, mentol.Alivia dolores articulares y musculares que pueden ser 
        generados por el ejercicio.',
    'Physiorelax.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (19, 'Bálsamo De Tigre blanco', 0.1, 12.99, 'Aceite', 
    'Crema con efecto frío.', 
    'Ingredientes: Alcanfor, mentol, aceite esencial de eucalipto, aceite esencial de cajeput, aceite esencial de 
        clavo, parafina blanda amarilla y parafina dura.',
    'Alivio de la sensación de dolor.',
    'Eliminar los dolores de cabeza y las migrañas de una manera natural.',
    'Utilizar cuando se padece de congestión nasal y respiratoria.',
    'Balsamotigreblanco.jpg',
    0,
    '');

#Kinesiotape inserts
INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (20, 'ALPIDEX Cinta Kinesiología Tape', 0.45, 19.99, 'Kinesiotape', 
    'Ideal para personas que no se exponen a grandes actividades físicas.', 
    'Diseñadas con algodón elástico (130%).',
    'Adhesivo resistente.',
    'Resistencia al agua.',
    'Transpirables.',
    'KineAlpidex.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (21, 'RockTape Bulk Cinta para kinesiología', 0.6, 13.99, 'Kinesiotape', 
    'Ideal para personas que no se exponen a grandes actividades físicas.', 
    'Económico, pero de calidad baja-media, suficiente para practicar las primeras veces o si no queréis gastaros 
        mucho.',
    'Recomendado para los más novatos.',
    'Resistencia al agua.',
    'Adhesivo hipoalergénico.',
    'KineRock.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (22, 'Physix Gear Cintas kinesiológicas', 0.49, 17.99, 'Kinesiotape', 
    'Ideal para personas que sudan mucho, practican deportes de agua y prefieren la fijación a la comodidad.', 
    'Tienen un adhesivo de grado médico.',
    'Impermeable al agua.',
    'Transpirable.',
    'Aprobada por la FDA y tiene certificado CE.',
    'KineGear.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (23, 'Effekt Manufaktur Kinesiotape', 0.52, 9.49, 'Kinesiotape', 
    'Ideal para deportistas de alto rendimiento.', 
    'Diseñadas con algodón elástico (150%).',
    'Adhesivo muy resistente.',
    'Se venden cintas enteras y precortadas.',
    'Impermeable al agua.',
    'KineEffekt.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (24, 'KT Cinta Original', 0.018, 11.99, 'Kinesiotape', 
    'La marca más completa.', 
    'Ideal para deportistas de alto rendimiento.',
    'Diseñadas con algodón elástico y fuerte.',
    'Sin látex adhesivo.',
    'Adhesivo resistente.',
    'KineCinta.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (25, 'BB Sport Sport Tape', 0.06, 6.99, 'Kinesiotape', 
    'Tejido de algodón 100% rígido.', 
    'Respetuoso con la piel, resistente al agua y transpirable.',
    'Gran sujeción y estabilidad gracias al adhesivo con óxido de zinc y sin disolventes.',
    'La cinta se puede quitar fácilmente con la mano.',
    'No son necesarias tijeras para cortar la cinta.',
    'KineSport.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (26, 'Venda PreTape de espuma suave no adhesiva', 0.28, 14.99, 'Kinesiotape', 
    'Buena adhesión a la piel sin deslizamiento.', 
    'Puede ser utilizado como acolchado bajo los apósitos.',
    'Evita irritación de la piel.',
    '3 rollos de 7 cm de ancho por 25 m de largo.',
    'Vendaje deportivo proporciona un soporte excelente.',
    'KinePreTape.jpg',
    0,
    '');

#Magnetoterapia inserts
INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (27, 'Magnum L con 1 solenoide flexible', 1.16, 289.00, 'Magnetoterapia', 
    'Campos magnéticos pulsados (CMP) de baja frecuencia.', 
    '8 programas de salud/recuperación: 1. Pequeña fractura – 2. Grandes fracturas: 3. Osteoartritis cervical - 4. 
        Dolor de espalda: -5. Osteoporosis - 6. Artrosis - 7. Artritis - 8. Epicondilitis.',
    'Pantalla gráfica retroiluminada.',
    '1 solenoide flexible.',
    'Funciona conectado a la corriente.',
    'MagnetoMagnumL.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (28, 'I-Tech Mag 2000', 1.5, 298.37, 'Magnetoterapia', 
    'Campos magnéticos pulsados (CMP) de baja frecuencia.', 
    '35 programas: 20 programas preestablecidos para el tratamiento de varias patologías, 14 programas identificados 
        por la frecuencia de trabajo (de 1 a 100 Hz) y un programa Autoscan con variación continua de frecuencia para el 
        tratamiento de tejidos duros y blandos al mismo tiempo.',
    'Doble canal para aplicación simultánea en dos puntos.',
    'Faja elástica terapéutica con 3 solenoides.',
    'Certificación medica CE046.',
    'Magneto2000.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (29, 'I-TECH Medical Division', 2.1, 300.99, 'Magnetoterapia', 
    'Frecuencia de 1 a 100 Hz.', 
    'Campos magnéticos pulsados (CMP) de baja frecuencia.',
    '2 bandas elásticas terapéuticas.',
    'Doble canal para aplicación simultánea en dos puntos.',
    '46 programas terapéuticos preestablecidos.',
    'MagnetoMedical.jpg',
    0,
    '');

#Objetos de masaje inserts
INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (30, 'Masajeador de Vibrolegs Pies y Piernas', 4.2, 74.99, 'Masaje', 
    'Usa tecnología EMS y TENS.', 
    'Dos sistemas de relajación.',
    'No emite ruido ni vibraciones.',
    '99 niveles de intensidad y 25 modos.',
    'Temporizador automático de 25 minutos.',
    'MasajePies.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (31, 'Pistola de Masaje Masajeadora de Tejido Profundo', 3.4, 55.99, 'Masaje', 
    '6 configuraciones de velocidad.', 
    'Tecnología silenciosa.',
    'Cabezal de masaje desmontable.',
    'La batería puede durar aproximadamente 3 horas.',
    'El mango es cómodo y antideslizante.',
    'MasajePistola.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (32, 'Masajeador Shiatsu Almohada de Masaje', 1.54, 39.99, 'Masaje', 
    '3 velocidades y 8 nodos de masaje.', 
    'Función de calentamiento.',
    'Apagado automático.',
    'Material: tela de malla.',
    'Banda elástica ajustable en la parte posterior de la almohada.',
    'MasajeAlmohada.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (33, 'Asiento Masajeador Shiatsu Masaje de espalda', 2.6, 95.99, 'Masaje', 
    '3 áreas de masaje para elegir: toda la espalda, parte superior o parte inferior.', 
    '3 velocidades, 10 nodos de masaje y vibración en el asiento.',
    'Función de calentamiento.',
    'Solapa trasera desmontable y lavable.',
    'Control remoto.',
    'MasajeEspalda.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (34, 'Rodillo Masaje Muscular de Hule', 1.12, 30.99, 'Masaje', 
    'Excelente herramienta para aliviar el dolor de tu cuerpo.', 
    'Compuesto de material no tóxico.',
    'Perfecto para yoga, fisioculturistas, pilates y rugby.',
    'Fácil de transportar gracias a su material (espuma) y a la mochila.',
    'Compuesto de 4 objetos: rodillo hule negro, foam roller rojo, pelota lacrosse roja 
        y pelota negra dura.',
    'MasajeSet.jpg',
    0,
    '');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (35, 'Masajeador Cuello Cervical Espalda Eléctrico', 1.68, 59.99, 'Masaje', 
    '3 velocidades y 8 nodos de masaje.', 
    'Función de calentamiento.',
    'Asas de correa más largas.',
    'Apagado automático.',
    'Material: Malla transpirable de primera calidad y cuero PU.',
    'MasajeCuello.jpg',
    0,
    '');

#Services inserts
INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (36, 'Punción seca', 0, 35, 'Servicio',
    'La punción seca es una herramienta terapéutica muy efectiva que introduce agujas de acupuntura para tratar el dolor musculoesquelético. La intención es tratar estas contracturas con “estímulos mecánicos”. De igual forma que cuando hacemos un masaje, es como si estuviéramos amasando el pan, para darle forma con nuestras manos. Este “estímulo mecánico” se provoca también con la aguja, que al ser más pequeña de diámetro hace el tratamiento más preciso.', 
    'La diana terapéutica es el punto gatillo miofascial, una zona hiperirritable del músculo esquelético asociada a un nódulo palpable hipersensible localizado en una banda tensa de fibras musculares. Este es responsable de un conjunto de signos y síntomas sensoriales, motores y autonómicos causando lo que se conoce como síndrome de dolor miofascial; según Travell y Simons.',
    'Las técnicas que más se suelen utilizar son la técnica de punción seca superficial de Peter Baldry, que consiste en dejar la aguja en los tejidos subcutáneos suprayacentes al punto gatillo miofascial durante un corto periodo de tiempo; y la técnica de punción seca profunda de entrada y salida rápidas de Chan-Zern Hong. Esta consiste en localizar y estabilizar el punto gatillo miofascial, insertar la aguja hasta atravesarlo con la intención de provocar respuestas de espasmo local mediante entradas y salidas rápidas. ',
    'De igual forma que los fisioterapeutas tenemos la capacidad de sentir como esta el tejido con las manos y de encontrar con facilidad el punto de dolor, al final uno coge la misma percepción mediante la aguja y busca las contracturas con más facilidad y efectividad.',
    'Contraindicaciones de la punción seca: belonefobia, inmunodeficiencias, problemas de la coagulación importantes, alergia a los metales, zonas con heridas, cicatrices, tatuajes, manchas que sean recientes en mujeres embarazadas (en zonas próximas a las regiones pélvica y abdominal).',
    'PuncionService.JPG',
    30,
    'Puncion');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (37, 'Readaptación deportiva', 0, 40, 'Servicio',
    'La readaptación no solo está indicada para deportistas profesionales y amateurs, también es eficaz si la lesión ha sido provocada por una caída, un mal gesto, un atropello, etc. No hay límite de edad para hacer readaptación a la actividad física. Cada persona tendrá un objetivo distinto en la recuperación, desde volver a practicar deporte hasta poder ejercer sus actividades de la vida diaria de manera más rápida y segura después de sufrir una lesión.',
    'La readaptación deportiva es la unión que existe en el ámbito deportivo, entre la fisioterapia y la preparación física. Según Carlos Lalín Novoa, un referente de la readaptación fisíca, consiste en el proceso de enseñanza/aprendizaje mediante el cual se revisten los patrones motores generales y específicos de un deportista, facilitando en el menor tiempo posible un estado óptimo para el esfuerzo, que garantice su incorporación a su actividad y entorno habitual con normalidad y diligencia.',
    'Ejemplo 1: un corredor profesional se lesiona de un tirón muscular a 200 metros de su llegada a la meta. A esta persona no solo tendremos que trabajar mediante la fisioterapia y después hacer ejercicios de readaptación. Esta persona también necesitara alguien que la comprenda, que trabaje el miedo a volverse a lesionar, la inseguridad de volver a competir y ayudarle a sentirse capaz de volver a correr como antes. Incluso mejor.',
    'Ejemplo 2: una señora de 70 años atropellada por un vehículo se rompe un hueso de la pierna. Ella vive sola. Antes del accidente salía a pasear con sus amigas, podía ir a comprar e incluso cogía el coche para visitar a la familia. Ahora no puede hacer nada. Igual que en el caso anterior, no solo hay que hacer técnicas de fisioterapia y enseñarle ejercicios. Hay muchas cosas más importantes que tener en cuenta.',
    'Las contraindicaciones relativas de la readaptación son: enfermedades cardiovasculares, enfermedades del aparato respiratorio, enfermedades endocrino-metabólicas y nutricionales, enfermedades infecciosas, enfermedades nefrourológicas, enfermedades oftalmológicas, enfermedades del aparato digestivo y locomotor, etc.',
    'ReadaptacionService.JPG',
    60,
    'Readaptacion');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (38, 'Electroterapia', 0, 50, 'Servicio',
    'La electroterapia consiste en la aplicación de pequeñas corrientes eléctricas con fines terapéuticos. Se podría definir como la ciencia que emplea el tratamiento de las lesiones por medio de la electricidad. La electrofisiología combina el conocimiento del fisioterapeuta con las leyes de la física y de la química para conseguir reacciones curativas que terminan por relajar la musculatura de manera natural y por paliar el alcance de las lesiones que se hayan podido sufrir.',
    'La electroterapia como dice su nombre es una terapia mediante electricidad con fines terapéuticos. Hay diferentes tipos de electroterapia: TENS (estimulación eléctrica transcutánea de los nervios), donde se colocan unos electrodos a la persona en la zona lesionada. A través de los electrodos sentirá una vibración suave que ayuda a reducir el dolor y relajar la musculatura. EMS (Electroestimulador muscular): este es casi igual que la anterior. La diferencia es que la persona tendrá que hacer un ejercicio específico mientras siente la vibración para ayudarle a coger fuerza muscular.',
    'Otros tipos de electroterapia serian : Ultrasonidos: esta técnica es muy parecida a la ecografía.El cabezal de la máquina produce una mínima vibración y un aumento de la temperatura que ofrece un efecto antiinflamatorio y alivio del dolor. Magnetoterapia: esta terapia a diferencia de las anteriores, produce efectos gracias al campo magnético. Es más indicada para fracturas, fisuras y lesiones articulares, gracias a su gran efecto de regeneración.',
    'Beneficios: Su poder para calmar las molestias musculares, su carácter antiinflamatorio, su valor como medida preventiva, su capacidad para equilibrar el riego sanguíneo en la zona dañada, su eficacia para corregir todo tipo de lesiones.',
    'Contraindicaciones de la electroterapia: proceso tumoral, embarazos, trastornos de sensibilidad, personas no colaboradoras, personas con marcapasos, en heridas abiertas, en la parte anterior del cuello, personas alérgicas al gel de los electrodos.',
    'ElectroService.JPG',
    90,
    'Electroterapia');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (39, 'Vendaje Neuromuscular (Kinesiotaping)', 0, 25, 'Servicio',
    'Seguro que habrás visto alguna vez en la televisión o en directo, a un deportista profesional con unas cintas de colores en la piel. Esas cintas son vendajes neuromusculares o kinesiotape. No solo son aptas para deportistas de élite. Hoy en día se utilizan para muchos fines. Desde una anciana con dolor de rodilla, hasta un niño con espasticidad por hemiplejia, hasta para calmar el dolor menstrual.',
    'El vendaje neuromuscular o Kinesiotaping fue desarrollado por el doctor Kenzo Kase y es un vendaje principalmente compuesto de algodón con un adhesivo acrílico, hipoalergénico, resistente al agua y elástico en un 130% de su longitud original. El vendaje tiene una textura y elasticidad muy cercana a la piel humana.',
    'Existen muchas situaciones en las que podríamos colocar el kinesiotape, per normalmente se utiliza para: aliviar el dolor, aumentar la movilidad, disminuir la inflamación y hematoma, ofrecer cierta estabilidad en deportes o gestos que necesitan un alto rango de movimiento, ayuda a mejorar la fuerza muscular, remedia problemas posturales.',
    'La técnica consiste en la aplicación de las cintas sobre la piel de la persona con la intención de: reducir el dolor en lesiones o disfunciones del sistema musculoesquelético, mejorar la biomecánica articular, mejorar la función articular, principalmente la propiocepción, facilitar la vuelta al ejercicio después de una lesión, mejorar el rendimiento deportivo, incrementar el tono muscular en músculos débiles, relajar músculos sobrecargados, favorecer el drenaje linfático y venoso, la reabsorción de edemas y reducir la inflamación.',
    'Los beneficios del ,kinesiotaping son: Efecto circulatorio: debido a la elasticidad del vendaje, se genera una ligera elevación de la piel formando pliegues cutáneos superficiales. Estos aumentan el espacio celular subcutáneo donde se encuentran los capilares sanguíneos y perilinfáticos, generando así, un aumento de la circulación local. Efecto analgésico: el aumento del espacio celular subcutáneo disminuye la presión de los mecanorreceptores ubicados en este espacio, reduciendo las aferencias nociceptivas. El efecto circulatorio favorece el drenaje de los detritos tisulares y de los mediadores inflamatorios acumulados en la zona lesionada. Efecto neuro-mecánico: la tracción producida por la elasticidad del vendaje tensa las fibras de colágeno y la fascia profunda, desencadenando un reflejo protector para evitar el sobrestiramiento de estos tejidos lesionados.',
    'KinesioService.JPG',
    30,
    'Kinesio');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (40, 'Masaje terapéutico (masoterapia)', 0, 35, 'Servicio',
    'El masaje terapéutico o masoterapia es un conjunto de movimientos que hacemos con las manos en contacto con la otra persona por encima o alrededor de la zona lesionada con el objetivo de aliviar el dolor y mejorar la sensación previa. Un masaje es como amasar el pan. Hay que hacer una serie de presiones para moldearlo y darle la forma correcta. En el músculo es similar. Esos movimientos y presiones ayudan a quitar el aumento de tensión muscular y posibles contracturas (como una bola) que pueden provocar dolor, dificultad para mover u otras sensaciones.',
    'EN EL SISTEMA CIRCULTARIO:',
    'EN EL SISTEMA MUSCULAR:',
    'EN EL SISTEMA NERVISOSO:',
    'Contraindicaciones del masaje terapéutico: período agudo de traumatismos, contusiones y/o derrames articulares, heridas abiertas, infecciones de piel, inicios de flebitis y fragilidad vascular, fiebre.',
    'MasoterapiaService.JPG',
    60,
    'Masoterapia');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (41, 'Mantenimiento y recuperación para gente mayor', 0, 45, 'Servicio',
    '¿Tienes un padre o abuelo al que hayan ingresado en el hospital de forma duradera? ¿Qué ha pasado al volver a casa? Pasa, que pierden mucha masa muscular, fuerza y equilibrio. Puede que empieces a notarle alguna demencia por la edad. El mantenimiento para nuestra gente mayor es esencial para su autonomía e independencia.',
    '¿Entonces, que debo hacer en este caso? Acudir a un fisioterapeuta para recuperar su estado de salud. La actividad física es el salvavidas para la gente mayor. Tendremos que realizar una progresión de ejercicios para que poco a poco vuelva a recuperar su autonomía. Un atropello, una caída, la demencia por la edad, dolores y/o lesiones crónicas que se llevan arrastrando muchos años, etc. Hay infinidad de opciones que pueden hacer que nuestros mayores necesiten recuperarse y luego mantener su salud física y mental.',
    'Por eso es importante promover la actividad física, para: reducir el riesgo de padecer enfermedades crónicas, disminuir la posibilidad de sufrir caídas, ofrecer autonomía e independencia propia, evitar estados de ansiedad y depresión, retrasar la aparición de demencias por la edad, ayudar a mantener un peso corporal adecuado, mejorar las relaciones sociales.',
    'La Organización Mundial de la Salud expresa que los adultos mayores necesitan siempre mantenerse en constante actividad física. Estas pueden ser recreativas, de ocio o de desplazamiento, como: caminar, correr, nadar o bailar, ejercicios de fuerza mediante mancuernas, pesas y cintas elásticas, ejercicios de equilibrio, ejercicios de flexibilidad, conjunto de ejercicios suaves, diseñados especialmente para los adultos mayores.',
    'Los beneficios de los ejercicios de mantenimiento para ancianos son: reduce el riesgo de padecer enfermedades crónicas, disminuye la posibilidad de sufrir caídas, ofrece autonomía e independencia propia, evita estados de ansiedad y depresión, retrasa la aparición de demencias por la edad, ayuda a mantener un peso corporal adecuado, mejora las relaciones sociales.',
    '',
    60,
    'Gente_mayor');

INSERT INTO Product (ID, PRODUCT_NAME, PRODUCT_WEIGHT, PRODUCT_PRICE, PRODUCT_TYPE, PRODUCT_DESC1, PRODUCT_DESC2,
    PRODUCT_DESC3, PRODUCT_DESC4, PRODUCT_DESC5, URL_PHOTO, PRODUCT_DURATION, PRODUCT_WEBNAME) 
    VALUES (42, 'Método pilates', 0, 35, 'Servicio',
    'Hoy en día se ha puesto muy de moda el Pilates. Yo en su momento me saqué la titulación porque había una alta demanda de trabajo de esta modalidad y quería que estuviera en mi currículo. Ha cambiado mucho mi percepción sobre el Pilates. Tanto, que utilizo sus principios básicos en mi día a día, tanto en la readaptación deportiva, como en ejercicios terapéuticos de rehabilitación. Principalmente el Pilates se centra en: Respiración. (prevención, flexibilización y fortalecimiento muscular y  control postural (estar en forma sin dolor con trabajo de la musculatura profunda abdominal-lumbar).',
    'Por ejemplo, si voy por la calle y un atracador me clava un puñal en la pierna, ¿Qué pasa? Me escaparé medio cojo, pero podré huir medianamente rápido. Al final es como si se nos pincha una rueda del coche, podremos seguir de aquella manera. En cambio, si me clava el puñal en el abdomen, ¿Por qué no podré huir si tengo las piernas bien? Porque toda esta musculatura estabilizadora abdominal-lumbar es la que transfiere la fuerza hacia los brazos y hacia las piernas.  Esta musculatura de la que hablo es el motor de mi coche. Que más da como estén las ruedas, si se ha roto el motor, no podré circular.',
    'Sus principios son: respiración, estabilización y control central, disociación de movimiento, flexibilización articular y muscular, fortalecimiento muscular, alineamiento postural, integración, coordinación, precisión y equilibrio.',
    'Sus beneficios son: aumento de la fuerza y estabilidad, mejora la movilidad, coordinación, corrección postural, prevención de lesiones.',
    'Contraindicaciones para realizar el método Pilates: hipertensión arterial inducida por el embarazo (preclampsia), trabajo de parto prematuro (anterior/presente), el sangrado persistente en el segundo y tercer trimestre, la placenta previa, prematuro; rotura prematura de las membranas.',
    '',
    60,
    'Pilates');









