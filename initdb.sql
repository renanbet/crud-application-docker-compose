CREATE TABLE IF NOT EXISTS users (
id int(11) NOT NULL AUTO_INCREMENT,
username varchar(100) NOT NULL,
`password` varchar(254) NOT NULL,
role varchar(100) NOT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS procedimentos (
id int(11) NOT NULL AUTO_INCREMENT,
procedimento int(11) NOT NULL,
idade int(11) DEFAULT NULL,
sexo varchar(100) DEFAULT NULL,
permitido varchar(100) DEFAULT NULL,
motivo varchar(254) DEFAULT NULL,
data datetime DEFAULT NULL,
PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO users (username, `password`, role) VALUES
('admin', 'sha1$1fb5ec71$1$2ec69e3b5755e542e5a85a454589f6264c678148', 'admin'),
('user', 'sha1$451485d3$1$05390e46f407a55c582d6a7d28b6c85ea093122f', 'user');