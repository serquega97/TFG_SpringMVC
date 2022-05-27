/*
* File that contains the statements to insert all products to database
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