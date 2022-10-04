--source /ruta/archivo.sql Ejecutar archivo

INSERT INTO tUsuarios(nombre_usuario, email) VALUES ("Alex Turner",
"alexturner1@mail189.uk");
INSERT INTO tUsuarios(nombre_usuario, email) VALUES ("Carlos Turner",
"carlosturner1@mail189.uk");
INSERT INTO tUsuarios(nombre_usuario, email) VALUES ("Pedro Turner",
"pedroturner1@mail189.uk");
INSERT INTO tUsuarios(nombre_usuario, email) VALUES ("Juan Turner",
"Juanturner1@mail189.uk");
INSERT INTO tUsuarios(nombre_usuario, email) VALUES ("Yago Turner",
"yagoturner1@mail189.uk");

INSERT INTO tJuegos(nombre, desarrolladora, publicaci¢n) VALUES ( "Fallout: New Vegas", "Bethesda", STR_TO_DATE('19-Octubre-2010', '%d-%M-%Y'));
INSERT INTO tJuegos(nombre, desarrolladora, publicaci¢n) VALUES ( "Diablo III", "Blizzard", STR_TO_DATE('15-Mayo-2012', '%d-%M-%Y'));
INSERT INTO tJuegos(nombre, desarrolladora, publicaci¢n) VALUES ( "The Elder Scrolls V: Skyrim", "Bethesda", STR_TO_DATE('11-Noviembre-2011', '%d-%M-%Y'));
INSERT INTO tJuegos(nombre, desarrolladora, publicaci¢n) VALUES ( "Bayonetta", "SEGA", STR_TO_DATE('29-Octubre-2009', '%d-%M-%Y'));
INSERT INTO tJuegos(nombre, desarrolladora, publicaci¢n) VALUES ( "Grand Theft Auto IV", "Rockstar", STR_TO_DATE('29-Abril-2008', '%d-%M-%Y'));

INSERT INTO tComentarios(comentario) VALUES ("Este juego me gusta");
INSERT INTO tComentarios(comentario) VALUES ("Esta juego me gusta");
INSERT INTO tComentarios(comentario) VALUES ("Esta juego me gusta");
INSERT INTO tComentarios(comentario) VALUES ("Esta juego me gusta");
INSERT INTO tComentarios(comentario) VALUES ("Esta juego me gusta");
