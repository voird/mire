location(main_door, 'Главная дверь замка').
location(main_hall, 'Главный зал').
location(throne_room, 'Тронный зал').
location(kitchen, 'Кухня').
location(cellar, 'Погреб').
location(prison, 'Тюремные камеры').
location(secret_passage, 'Секретный проход').
location(courtyard, 'Двор замка').
location(garden_maze, 'Садовый лабиринт').
location(library, 'Библиотека').
location(lookout_tower, 'Наблюдательная башня').
location(armory, 'Оружейная').
location(training_ground, 'Тренировочная площадка').
location(alchemy_lab, 'Зал алхимии').
location(chapel, 'Капелла').
location(abandoned_bedrooms, 'Заброшенные спальни').
location(hall_of_mirrors, 'Зал зеркал').

connected(main_door, main_hall).
connected(main_hall, throne_room).
connected(main_hall, kitchen).
connected(main_hall, main_door).
connected(throne_room, main_hall).
connected(throne_room, secret_passage).
connected(kitchen, main_hall).
connected(kitchen, cellar).
connected(cellar, kitchen).
connected(cellar, prison).
connected(prison, cellar).
connected(prison, secret_passage).
connected(secret_passage, throne_room).
connected(secret_passage, prison).
connected(main_door, courtyard).
connected(courtyard, main_door).
connected(courtyard, garden_maze).
connected(garden_maze, courtyard).
connected(main_hall, library).
connected(library, main_hall).
connected(library, lookout_tower).
connected(library, armory).
connected(lookout_tower, library).
connected(lookout_tower, garden_maze).
connected(armory, library).
connected(armory, training_ground).
connected(training_ground, armory).
connected(training_ground, courtyard).
connected(kitchen, alchemy_lab).
connected(alchemy_lab, kitchen).
connected(alchemy_lab, library).
connected(library, alchemy_lab).
connected(main_hall, chapel).
connected(chapel, main_hall).
connected(chapel, prison).
connected(prison, chapel).
connected(throne_room, abandoned_bedrooms).
connected(abandoned_bedrooms, throne_room).
connected(abandoned_bedrooms, secret_passage).
connected(secret_passage, abandoned_bedrooms).
connected(throne_room, hall_of_mirrors).
connected(hall_of_mirrors, throne_room).
connected(hall_of_mirrors, secret_passage).
connected(secret_passage, hall_of_mirrors).

description(main_door, 'Огромные деревянные ворота с металлическими полосами и массивным засовом. Сквозь щели пробивается холодный ветер.').
description(main_hall, 'Просторный зал с высоким сводчатым потолком, украшенный гобеленами. В центре стоит массивный дубовый стол.').
description(throne_room, 'Величественный зал с троном из черного камня. На стенах тяжелые гобелены, освещение слабое.').
description(kitchen, 'Небольшая кухня с очагом и пыльными банками на полках. На дне котла видны странные остатки.').
description(cellar, 'Темное помещение с бочками и следами воды на полу. Факел на стене горит, но воздуха почти нет.').
description(prison, 'Узкий коридор с решетчатыми дверями. Камеры пусты, но кажутся зловещими.').
description(secret_passage, 'Узкий туннель со стенами, покрытыми мхом. Слышен слабый звук капающей воды.').
description(courtyard, 'Заброшенный двор с сорняками и обломками статуй. В центре стоит старый колодец.').
description(garden_maze, 'Запутанный лабиринт с кустами. В центре каменный постамент с загадочной надписью.').
description(library, 'Темная библиотека с высокими полками. На столе лежит дневник с загадочными записями.').
description(lookout_tower, 'Винтовая лестница ведет на вершину башни. Вид на туманные окрестности.').
description(armory, 'Комната с оружием и стойкой для доспехов. Некоторые мечи выглядят необычно новыми.').
description(training_ground, 'Площадка с обломками мишеней и следами старой битвы.').
description(alchemy_lab, 'Зал с запахом трав и химикатов. В котле бурлит зелёная жидкость.').
description(chapel, 'Каменный зал для молитв с алтарем и старой фреской. Секретная дверь скрыта за алтарем.').
description(abandoned_bedrooms, 'Ряд старых комнат с пылью и паутиной. Следы когтей видны на кроватях.').
description(hall_of_mirrors, 'Зал с рядами зеркал. В некоторых видны шевелящиеся отражения.').
