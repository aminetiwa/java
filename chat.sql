CREATE DATABASE chat;
USE chat;

CREATE TABLE message (
    id INT AUTO_INCREMENT PRIMARY KEY,
    texte VARCHAR(255) NOT NULL
);

INSERT INTO message (texte) VALUES ("La seule limite à nos réalisations de demain est nos doutes d'aujourd'hui.");
INSERT INTO message (texte) VALUES ("Le but de la vie est d'être heureux.");
INSERT INTO message (texte) VALUES ("La vie, c'est ce qui arrive pendant qu'on est occupé à faire d'autres plans.");
INSERT INTO message (texte) VALUES ("Profite de chaque instant, car il ne reviendra pas.");
INSERT INTO message (texte) VALUES ("Chaque jour est une nouvelle opportunité.");
INSERT INTO message (texte) VALUES ("Le bonheur est un voyage, pas une destination.");
INSERT INTO message (texte) VALUES ("Ce que nous pensons, nous le devenons.");
INSERT INTO message (texte) VALUES ("L'échec est juste une opportunité de recommencer plus intelligemment.");
INSERT INTO message (texte) VALUES ("Il faut viser la lune pour atteindre les étoiles.");
INSERT INTO message (texte) VALUES ("Les rêves ne fonctionnent que si vous le faites.");

CREATE TABLE message (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom_utilisateur VARCHAR(255) NOT NULL,
    texte VARCHAR(255) NOT NULL,
    reference_id INT NOT NULL,
    cree_le TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    mis_a_jour_le TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (reference_id) REFERENCES message(id)
);

INSERT INTO message (nom_utilisateur, texte, reference_id) VALUES ("Alice", "Salut tout le monde !", 1);
INSERT INTO message (nom_utilisateur, texte, reference_id) VALUES ("Lucas", "Comment ça va ?", 2);
INSERT INTO message (nom_utilisateur, texte, reference_id) VALUES ("Emma", "J'adore discuter ici.", 3);
INSERT INTO message (nom_utilisateur, texte, reference_id) VALUES ("Noah", "Quelqu'un a un bon livre à recommander ?", 4);
INSERT INTO message (nom_utilisateur, texte, reference_id) VALUES ("Sofia", "Il fait beau aujourd'hui.", 5);
INSERT INTO message (nom_utilisateur, texte, reference_id) VALUES ("Hugo", "Je cherche une série à regarder.", 6);
INSERT INTO message (nom_utilisateur, texte, reference_id) VALUES ("Lina", "Bonne journée à tous !", 7);
INSERT INTO message (nom_utilisateur, texte, reference_id) VALUES ("Nathan", "Quels sont vos hobbies ?", 8);
INSERT INTO message (nom_utilisateur, texte, reference_id) VALUES ("Mia", "À bientôt tout le monde !", 9);
INSERT INTO message (nom_utilisateur, texte, reference_id) VALUES ("Ethan", "C'était sympa de discuter ici.", 10);
