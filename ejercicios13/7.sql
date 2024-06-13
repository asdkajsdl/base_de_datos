-ejercicios 13/7

CREATE TABLE user (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 username TEXT UNIQUE NOT NULL,
 password TEXT NOT NULL
);
CREATE TABLE post (
 id INTEGER PRIMARY KEY AUTOINCREMENT,
 author_id INTEGER NOT NULL,
 created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
 title TEXT NOT NULL,
 body TEXT NOT NULL,
 FOREIGN KEY (author_id) REFERENCES user (id)
);


INSERT INTO user (username,password)
VALUES ("Alex","aaa234"),("benja siuu","bbb789")

INSERT INTO post (author_id,title,body)
VALUES ((SELECT id FROM user WHERE username like "alex%"),"gym","peso pesado"),
       ((SELECT id FROM user WHERE username like "alex%"),"jordan","me gustan las zapas"),
	   ((SELECT id FROM user WHERE username like "alex%"),"grego","vicio"),
	   
	   ((SELECT id FROM user WHERE username like "benjaSiuu%"),"cr7","mi jugador favorito es CR7"),
       ((SELECT id FROM user WHERE username like "benjaSiuu%"),"vinicius","el nuevo balon de oro "),
	   ((SELECT id FROM user WHERE username like "benjaSiuu%"),"futbolista","quiere ser uno");