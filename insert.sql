--source /ruta/archivo.sql Ejecutar archivo
INSERT INTO tJuegos(id, nombre, url_imagen, desarrolladora, publicación) 
VALUES 
	(1, "Fallout: New Vegas", "https://static.wikia.nocookie.net/fallout/images/f/ff/FNV_box_art_%28US%29.jpg", "Bethesda", STR_TO_DATE('19-October-2010', '%d-%M-%Y')),
	(2, "Diablo III", "https://static.wikia.nocookie.net/diablo/images/1/12/DiabloIIIcover.jpg/revision/latest/scale-to-width-down/220?cb=20120507084548&path-prefix=es", "Blizzard", STR_TO_DATE('15-May-2012', '%d-%M-%Y')),
	(3, "The Elder Scrolls V: Skyrim", "https://static.wikia.nocookie.net/elderscrolls/images/c/c5/Skyrim_Cover.png/revision/latest/scale-to-width-down/350?cb=20160812173034", "Bethesda", STR_TO_DATE('11-November-2011', '%d-%M-%Y')),
	(4, "Bayonetta", "https://static.wikia.nocookie.net/bayonetta/images/9/9f/Bayonetta1_HD2009Cover.jpg/revision/latest/scale-to-width-down/350?cb=20200311020905", "SEGA", STR_TO_DATE('29-October-2009', '%d-%M-%Y')),
	(5, "Grand Theft Auto IV", "https://thumbnails.pcgamingwiki.com/b/b7/Grand_Theft_Auto_IV_cover.jpg/450px-Grand_Theft_Auto_IV_cover.jpg", "Rockstar", STR_TO_DATE('29-April-2008', '%d-%M-%Y'));

INSERT INTO tComentarios(id, comentario, juego_id, usuario_id) 
VALUES 
	(1, "Este juego me gusta", 1, 1),
	(2, "Este juego me gusta", 2, 2),
	(3, "Este juego me gusta", 3, 3),
	(4, "Este juego me gusta", 4, 4),
	(5, "Este juego me gusta", 5, 5);
