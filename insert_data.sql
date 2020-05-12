INSERT INTO utilisation (nom) 
VALUES 
('Programmation'),
('Base de données'),
('OS');

INSERT INTO langage (nom, id_utilisation) 
VALUES 
('Java', 1),
('TypeScript', 1),
('Python', 1),
('SQL', 2),
('Linux', 3);

INSERT INTO outil (id_langage, nom, img_url) 
VALUES 
(1, 'SpringBoot', 'assets/images/outils/springboot.png'),
(1, 'Hibernate', 'assets/images/outils/hibernate.png'),
(1, 'Thymeleaf', 'assets/images/outils/thymeleaf.png'),
(1, 'Maven', 'assets/images/outils/maven.png'),
(2, 'Angular', 'assets/images/outils/angular.png'),
(4, 'MySQL', 'assets/images/outils/mysql.png'),
(4, 'PostgreSQL', 'assets/images/outils/postgresql.png'),
(5, 'Ubuntu', 'assets/images/outils/ubuntu.png');

INSERT INTO fonction (nom_fonction) 
VALUES
('Déclarer une variable'),
('Déclarer un tableau'),
('Parcourir un tableau'),
('Créer un utilisateur'),
('Gérer les routes'),
('Mettre à jour son système'),
('Créer un web-service Rest'),
('Créer un projet');

INSERT INTO commande (id_langage, id_fonction, detail, ligne_commande)
VALUES
(1, 1, 'Les variables commencent pour une minuscule. Différents types : int, double, float, String, boolean', 'type nom_variable = value;\nint monEntier = 5; double monDecimal = 2.5;'),
(2, 1, 'Utilisation de let pour les variables à portée bloc. Variables toujours typées, même en l\'abscence de type explicite', 'nom_variable: type = value;\nmonEntier: number = 5; monDecimal: number = 2.5;'),
(3, 1, 'Pas de typage lors de l\'instanciation. Mais si on fait type(nom_variable), cela indique le type.', 'monEntier = 5\ntype(monEntier) -->int'),
(1, 2, 'Même typage que pour les variables. Rajoute []. La taille est fixe', 'int mesEntiers[] = {1,2,3};\nint mesEntiers[] = new int[3];'),
(2, 2, 'Comme pour Java, on rajoute []. Par contre la taille peut varier', 'mesEntiers: number[] = [1, 2, 3]\nmesEntiers: number[] = []'),
(3, 2, 'Les tableaux sont uniquement pour les nombres. Pas de typage', 'tableau = array([1, 2, 3, 3.5, 4.5])'),
(1, 3, 'Une des façons de parcourir un tableau', 'int mesEntiers[];\nfor(int i : mesEntiers){...}'),
(2, 3, 'Utilisation de Let car la variable à la portée de la boucle.', 'mesEntiers: number[];\nfor(let nombre of mesEntiers){...}'),
(3, 3, 'Il n\'y a pas d\'accolade. La boucle finit par : puis retour à la ligne pour dire l\'action à effectuer.', 'for nombre in mesEntiers:\n		...');

INSERT INTO action (id_outil, id_fonction, num_etape, nom_fichier, detail, ligne_commande)
VALUES
(8, 6, 1, '', 'Mettre à jour la liste des paquets', 'sudo apt update'),
(8, 6, 2, '', 'Installe les nouveaux paquets et supprime les anciens si nécessaire', 'sudo apt full-upgrade'),
(8, 6, 3, '', 'Supprime tous les paquets devenus obsolètes', 'sudo apt autoremove'),
(8, 6, 4, '', 'Supprime le cache des paquets qui ne peuvent plus être téléchargés', 'sudo apt autoclean'),
(1, 7, 1, 'Spring Initializer', 'Créer son projet. Adresse : https://start.spring.io/', 'Dépendances essentielles: Connector JDBC, JPA, REST.\nNon essentielle : LOMBOK, SECURITY.\nPackaging : war'),
(1, 7, 2, 'application.properties', 'Configurer l\'accès à la base de données', 'spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver,
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect,\nspring.data.rest.base-path=/api,\n+ spring.datasource.(url, username et password)'),
(1, 7, 3, '@Entity', 'Créer les entitiés. Avec la dépandence LOMBOK pas besoin de déclarer les getters, setters, constructeurs... ', '@Entity\n@DATA (si LOMBOK)\n@Table(name="...") (si nom différent entre table et classe)\npublic Class Classe{\n\n@ID\n@GeneratedValue(strategy = GenerationType.IDENTITY)\nprivate int id'),
(1, 7, 4, 'Repository', 'Créer les interfaces. Va créer à localhost:8080/api/products l\'ensemble des endpoints', 'public interface ProductRepository extends JpaRepository<Product, Long>\nProduct correspond à l\'entité, Long le type pour l\'ID. 
@CrossOrigin("http://localhost:4200") Si le front et le back sont séparé.\n Autorise cette adresse a se connecter aux web-services.');




