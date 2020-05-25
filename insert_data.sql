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
('Créer un projet'),
('Donner des droits à un utilisateur'),
('Déployer un projet Springboot sur un serveur'),
('Opérateur ternaire'),
('Arrêter un processus pour un utilisateur'),
('Rechercher un fichier : locate'),
('Rechercher un fichier : find'),
('Se connecter à une base de données avec un compte utilisateur'),
('Lister les tables d\'une base de données'),
('Exécuter un script sql'),
('Créer une base de données puis une table'),
('Insérer les données dans une table'),
('Modifier des données dans une table'),
('Mettre en place la pagination'),
('Packager une application'),
('Changer de répertoire'),
('Lister les éléments d\'un dossier'),
('Créer un dossier'),
('Supprimer un dossier'),
('Créer un fichier vide'),
('Copier un fichier ou un dossier'),
('Déplacer un dossier'),
('Communiquer du controller vers l\'html'),
('Communiquer de l\'html vers le controller'),
('Utiliser la boucle For en html'),
('Utiliser une classe DTO pour les web-services REST'),
('Utiliser une vue SQL pour les web-services REST'),
('Construire sa requête avec Spring DATA JPA'),
('Lancer tout les tests'),
('Opération CRUD');

INSERT INTO commande (id_langage, id_fonction, detail, ligne_commande)
VALUES
(1, 1, 'Les variables commencent par une minuscule. Les principaux types sont : int, double, float, String, boolean', 'type nom_variable = value;\nint monEntier = 5; double monDecimal = 2.5;'),
(2, 1, 'Les variables sont toujours typées, même en l\'absence de type explicite. On utilise Let pour les variables à portée bloc.', 'nom_variable: type = value;\nmonEntier: number = 5; monDecimal: number = 2.5;'),
(3, 1, 'Il n\'y a pas de typage lors de l\'instanciation. Mais si on fait type(nom_variable), cela indique le type.', 'monEntier = 5\ntype(monEntier) -->int'),
(1, 2, 'On rajoute [ ] à la fin ou au début de notre variable pour indiquer qu\'il s\'agit d\'un tableau. Attention : la taille est fixe.', 'int mesEntiers[] = {1,2,3};\nint mesEntiers[] = new int[3];'),
(2, 2, 'On rajoute [ ] au niveau du type de la variable. Contrairement à Java, la taille peut varier.', 'mesEntiers: number[] = [1, 2, 3]\nmesEntiers: number[] = []'),
(3, 2, 'Les tableaux sont uniquement pour les nombres. Pour le reste, on utilise des listes. Il n\'y a pas de typage.', 'tableau = array([1, 2, 3, 3.5, 4.5])'),
(1, 3, 'Il existe deux façon de parcourir un tableau à l\'aide de la boucle for.', 'int mesEntiers[];\nfor(int i : mesEntiers){...}\n ou for(int i =0; i<mesEntiers.length; i++) {...}'),
(2, 3, 'Utilisation de Let c\'est une variable à portée boucle.', 'mesEntiers: number[];\nfor(let nombre of mesEntiers){...}'),
(3, 3, 'Il n\'y a pas d\'accolade. La boucle finit par : puis retour à la ligne pour dire l\'action à effectuer.', 'for nombre in mesEntiers:\n		...'),
(4, 4, 'Création d\'utilisateur avec un mot de passe défini. Utile pour donner certains accès à un utilisateur', 'CREATE USER nom_user WITH PASSWORD = \'pass_user\';'),
(4, 9, 'Il est possible de donner certains privilèges (SELECT, UPDATE, DELETE) ou tous les privilèges (ALL PRIVILEGES)', 'GRANT privileges ON object TO nom_utilisateur;'),
(1, 11, 'variable = (condition) ? valeur_si_vrai : valeur_si_faux;', 'String name = A > B ? "Billy" : "Jimmy";'),
(2, 11, 'variable = (condition) ? valeur_si_vrai : valeur_si_faux;', 'var name = A > B ? "Billy" : "Jimmy";'),
(3, 11, 'a if condition else b', 'x = a if True else b'),
(5, 13, 'locate permet de chercher un fichier. Par contre, si celui-ci vient d\'être créé, il faut faire une mise à jour avec: sudo update db', 'locate nom_fichier'),
(5, 14, 'find équivaut à locate, mais il est plus puissant donc plus long', 'find repertoire_recherche -name "nom_fichier"\nfind /home/ghislain/ -name "documents"\nIl est possible de rechercher de préciser le type de ce que l\'on cherche.\n -type d pour dossier, -type f pour fichier'),
(4, 19, 'On peut insérer plusieurs données dans une table à la suite. INSERT INTO nom_table (liste des colonnes) VALUES (...),..., (...);',
 'INSERT INTO utilisation (nom) 
VALUES 
(\'Programmation\'),
(\'Base de données\'),
(\'OS\');'),
(4, 20, 'On peut modifier une ou plusieurs colonnes d\'une même table en même temps. UPDATE nom_table SET col1 ="...", col2="..." WHERE condition',
 'UPDATE utilisation SET nom ="Système d\'exploitation" WHERE id =3;'),
(5,23, 'On peut taper l\'emplacement complet du dossier ou partir de là où l\'on se trouve.', 'cd /home/ghislain/documents'),
(5,24, 'Si on se situe dans le dossier, on peut faire ls. Sinon ls puis emplacement du dossier', 'ls\nls /home/ghislain/documents'),
(5,25, 'Pour créer un dossier : mkdir nom_dossier', 'mkdir documents'),
(5,26, 'Pour supprimer un seul dossier : rmdir nom_dossier. Pour supprimer le dossier et tout ce qu\'il contient: rm - r nom_dossier.', 'rmdir documents\nrm -r documents'),
(5,27, 'La commande touch permet de créer un fichier vide ou de changer la date du dernier accès ou modification d’un fichier.', 'touch mon_fichier'),
(5,28, 'Pour cela on utilise la commande cp. Elle permet de copier uniquement un fichier, ou un dossier avec tous ses documents avec l\'option -r. Elle permet aussi de renommer.', 'cp photo.jpg /home/ghislain/documents: copie uniquement
cp /home/ghislain/photo.jpg /home/ghislain/documents/image.jpg : copie + renomme
cp -r /home/ghislain/vacances /home/ghislain/documents : copie tout ce qu\'il y a dans vacances'),
(5,29, 'Pour déplacer un dossier : mv. Cette commande permet aussi de renommer.', 'mv fichier1 /home/ghislain/documents\n mv fichier1 /home/ghislain/documents/fichier 2');


INSERT INTO action (id_outil, id_fonction, num_etape, nom_fichier, detail, ligne_commande)
VALUES
(8, 6, 1, '', 'Mettre à jour la liste des paquets', 'sudo apt update'),
(8, 6, 2, '', 'Installe les nouveaux paquets et supprime les anciens si nécessaire', 'sudo apt full-upgrade'),
(8, 6, 3, '', 'Supprime tous les paquets devenus obsolètes', 'sudo apt autoremove'),
(8, 6, 4, '', 'Supprime le cache des paquets qui ne peuvent plus être téléchargés', 'sudo apt autoclean'),
(1, 7, 1, 'Spring Initializer', 'Créer son projet. Adresse : https://start.spring.io/', 'Dépendances essentielles: Connector JDBC, JPA, REST.\nNon essentielles : LOMBOK, SECURITY.\nPackaging : war'),
(1, 7, 2, 'application.properties', 'Configurer l\'accès à la base de données', 'spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver,
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.MySQL8Dialect,\nspring.data.rest.base-path=/api,\n+ spring.datasource.(url, username et password)'),
(1, 7, 3, '@Entity', 'Créer les entités. Avec la dépendance LOMBOK, pas besoin de déclarer les getters, setters, constructeurs... ', '@Entity\n@DATA (si LOMBOK)\n@Table(name="...") (si nom différent entre table et classe)\npublic Class Classe{\n\n@ID\n@GeneratedValue(strategy = GenerationType.IDENTITY)\nprivate int id'),
(1, 7, 4, 'Repository', 'Création d\'interface pour générer les endpoints (get, post, put, delete). Pour une classe product, à l\'adresse localhost:8080/products, je récupère tous mes produits.', '@CrossOrigin("http://localhost:4200") Si le front et le back sont séparé.\n Autorise cette adresse a se connecter aux web-services. 
public interface ProductRepository extends JpaRepository<Product, Long>\nProduct correspond à l\'entité, Long le type pour l\'ID.'),
(5, 5, 1, 'app.module.ts', 'Création d\'une constante de type Routes, importer depuis @angular/router', 'import { Routes } from \'@angular/router\';\nconst routes: Routes = [....]'),
(5, 5, 2, 'app.module.ts', 'Ecriture des routes. Attention, l\'ordre est important. Il faut aller du plus précis vers le moins précis', 'const routes: Routes =[
  {path: \'search/:keyword\', component: ResultatRechercheComponent},
  {path: \'langage/:idLang/outils/:idOut/actions\', component: ListeActionsComponent},
  {path: \'langage/:idLang/commandes\', component: ListeCommandesComponent},
  {path: \'langage/:idLang\', component: OutilsComponent},
  {path: \'accueil\', component: AccueilComponent },
  {path: \'\', redirectTo: \'/accueil\', pathMatch: \'full\'},
  {path: \'**\', redirectTo: \'/accueil\', pathMatch: \'full\'}'),
(5, 5, 3, 'app.module.ts', 'Enregistrer les routes dans l\'application : dans import rajouter RouterModule.forRoot(routes)', 'import {  Routes, RouterModule } from \'@angular/router\';\nimports: [\nRouterModule.forRoot(routes),\n....]'), 
(5, 5, 4, 'app.component.html', 'Indiquer l\'emplacement du composant qui va changer en fonction des routes', '<router-outlet></router-outlet>'),
(5, 5, 5, 'component.html', 'A l\'aide de routerLink, il est possible de naviguer entre composants.', '<a routerLink="/accueil">Accueil</a>'),
(5, 8, 1, '', 'Installer Angular-CLI (COMMAND LINE Interface)', 'npm install @angular/cli@latest'),
(5, 8, 2, '', 'Créer le dossier qui contiendra tous les fichiers.', 'Lancer Visual Studio Code, ouvrir le dossier créé et taper : ng new nom_projet'),
(5, 8, 3, '', 'Pour créer un composant dans le dossier components', 'ng generate component components/nom_composant'),
(5, 8, 4, '', 'Pour créer une classe dans le dossier classes', 'ng generate class classes/nom_classe'),
(5, 8, 5, '', 'Pour créer un service dans le dossier services', 'ng generate service services/nom_service'),
(5, 8, 6, '', 'Pour lancer le projet', 'ng serve\n ng serve --open : pour ouvrir le navigateur directement'),
(1, 10, 1, 'classe qui possède la méthode main', 'Rajouter la dépendance SpringBootServletInitializer', 'public class MainApplication extends SpringBootServletInitializer { ....}'),
(1, 10, 2, 'classe qui possède la méthode main', 'Rajouter la méthode SpringApplicationBuilder', '@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(MainApplication.class);
	}'),
(1, 10, 3, 'pom.xml', 'Rajouter la dépendance qui indique que l\'application sera déployée sur un serveur TomCat', '
<dependency>
	<groupId>org.springframework.boot</groupId>
	<artifactId>spring-boot-starter-tomcat</artifactId>
	<scope>provided</scope>
</dependency>'),
(8, 12, 1, '', 'Rechercher le processus pour cet utilisateur pour trouver son PID', 'ps -u nom_utilisateur | grep nom_processus'),
(8, 12, 2, '', 'A partir du PID trouvé, stopper le processus', 'kill id\n kill -9 id : force l\'arrêt si kill ne fonctionne pas'),
(7, 15, 1, '', 'Commande psql pour se connecter à une base: psql -U nom_utilisateur -h localhost nom_bdd (testbdd)', 'psql -U ghislain -h localhost testbdd'),
(6, 15, 1, '', 'Commande Mysql pour se connecter à une base: mysql -u nom_utilisateur -p', 'mysql -u ghislain -p'),
(7, 16, 1, '', 'Pour se connecter à la base de données: \\c nom_bdd', '\\c testbdd'),
(7, 16, 2, '', 'Lister les tables', '\\d'),
(6, 16, 1, '', 'Lister les tables', 'show tables'),
(7, 17, 1, '', 'Exécuter un script sql  : \\i chemin/fichier.sql', ' \\i /home/me/bdd.sql'),
(6, 17, 1, '', 'Il suffit juste d\'indiquer la location du fichier. Attention à bien mettre des antislash', 'c:/mon_fichier_sql.sql'),
(7, 18, 1, '', 'Création de la base de données pour un utilisateur : createdb -O nom_utilisateur  nom_bdd', 'createdb -O ghislain  testbdd'),
(7, 18, 2, '', 'Il faut ensuite s\'y connecter : psql -U nom_utilisateur -h localhost nom_bdd (testbdd)', 'psql -U ghislain -h localhost testbdd'),
(7, 18, 3, '', 'Ensuite on peut créer les tables. Attention pour PostgreSQL, pour avoir un id en auto-increment, il faut utiliser le type SERIAL', 'CREATE TABLE personne(
id SERIAL PRIMARY KEY,
prenom varchar(50),
nom varchar(50));'),
(6, 18, 1, '', 'Création de la base de données ', 'CREATE DATABASE testbdd;'),
(6, 18, 2, '', 'On indique que l\'on souhaite utiliser cette table.', 'USE testbdd;'),
(6, 18, 3, '', 'Création des tables', 
'CREATE TABLE IF NOT EXISTS utilisation(
id int AUTO_INCREMENT NOT NULL,
nom varchar(50) NOT NULL,
PRIMARY KEY (id));'),
(1, 21, 1, 'Repository', 'Indique que le web-service rest prends en charge la pagination, grâce à Pageable', 'Page<Outil> findByOutilDeLangageId(@RequestParam("id") Integer id, Pageable pageable);'),
(5, 21, 1, '', 'Installation de localize : requis pour Angular 9+.', 'ng add @angular/localize'),
(5, 21, 2, '', 'Installation de ng-boostrap. C\'est un ensemble de composants bootstrap. Il n\'y a pas que la pagination.', 'npm install @ng-bootstrap/ng-bootstrap'),
(5, 21, 3, 'app.module.ts', 'Rajouter l\'import NgbModule pour pouvoir l\'utiliser.', 'import { NgbModule } from \'@ng-bootstrap/ng-bootstrap\';\n imports: [
NgbModule' ),
(5, 21, 4, 'service', 'Il faut indiquer qu\'il faut récupérer les données pour la pagination au niveau de l\'interface',
 'interface getResponseActionFonction {
  _embedded: {
    dtoActionFonctions: DtoActionFonction[];
  },
  page: {
    size: number,
    totalElements: number,
    totalPages: number,
    number: number
  };
}'),
(5, 21, 4, 'html', 'Dans le fichier html, il faut rajouter les balises <ngb-pagination>', '<ngb-pagination\n [(page)]="leNumPage"\n [pageSize]="laTaillePage"\n [collectionSize]="totalElement"
[maxSize]="3"\n (pageChange)="listFonctionSearch()"></ngb-pagination>'),
(5, 21, 5, 'ts', 'Attention en html la pagination commence à 1, tandis que pour Springboot elle commence à 0.', 'this.rechercheService.getAllFonctions(this.keyword, this.leNumPage -1,.....)\n  this.leNumPage = data.page.number + 1;'),
(4, 22, 1, 'pom.xml', 'Indiquer le type de packaging que l\'on veut réaliser (Jar, War, etc..)', '<packaging>war</packaging>'),
(4, 22, 2, 'pom.xml', 'Attention pour les versions de Java supérieures à 8, il y a des modifications à faire. Il faut également que la bonne version de maven soit installée.',
 '<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-compiler-plugin</artifactId>
    <version>3.8.0</version>
    <configuration>
        <release>11</release> 
    </configuration>
</plugin>'),
(4, 22, 3, '', 'Packager son application avec la commande Maven', 'mvn clean install : clean permet de nettoyer tous les artéfacts créés lors des précédents builds.'),
(4, 36, 1, '', 'Lancer tous les tests', 'mvn clean test : clean permet de nettoyer tous les artéfacts créés lors des précédents builds.'),
(3, 8, 1, 'Spring Initializer', 'Créer son projet. Adresse : https://start.spring.io/', 'Dépendances essentielles pour un projet relié à une base de données:\nConnector JDBC, JPA, REST, Thymeleaf'),
(3, 8, 2, 'Dossier template', 'Créer les pages html', 'La première page doit s\'appeler index.html'),
(3, 8, 3, 'Controller', 'La logique entre le code Java et les pages Html passe par les classes Controller (annotées @Controller)', '@Controller\n public class MainController {.....}'),
(3, 30, 1, 'Controller', 'Envoie à la page les informations souhaitées via des méthodes qui interagissent avec le modèle.',
'@RequestMapping		// Préciser le Mapping
 public String bonjour(Model model) {		// Création d\'un modèle 
    String prenom = "Ghislain";			// Définition d\'une variable				
    model.addAttribute("prenom", prenomEnv);	// Attribution de la variable au modèle
    return "index";		// Retourne la page
}'),             
(3, 30, 2, 'Fichier html', 'Indiquer au niveau de la balise html que les annotations Thymeleaf vont être utilisées.', '<html xmlns:th="http://www.thymeleaf.org">'),
(3, 30, 3, 'Fichier html', 'Utilisation de l\'annotation th: text pour afficher ce qui a été envoyé', '<p th:text="\'Hello, \' + ${prenomEnv} + \'!\'" />\nprenomEnv correspond au nom de la variable lors de l\'attribution au modèle. Cf étape précédente'),
(3, 31, 1, 'Fichier html', 'Création d\'un formulaire pour envoyer des informations au controller.',
'<form action="sayHello" modelAttribute="personne" method="post">
    <input type="text" value="indique ton nom" name="nom"/>
    <input type="text" value="indique ton prénom" name="prenom"/>
    <button type="submit">Bonjour !</button>
</form>'),
(3, 31, 2, 'Controller', 'Récupération des informations grâce à une méthode. Le nom de l\'action, ici sayHello, sert à indiquer la méthode à utiliser pour ce formulaire.',
'@PostMapping("/sayHello")    //correspond au nom de l\'action
public String saveOrUpdate(@ModelAttribute("personne") 
	Personne laPersonne, Model model) { //Création d\'un objet Personne
   model.addAttribute("prenomForm", laPersonne.getPrenom()); // Attribution de la variable au modèle
   model.addAttribute("nomForm", laPersonne.getNom());       // Attribution de la variable au modèle
   return "bonjour";                                         //Renvoie les informations à une autre page.
}'),
(3, 32, 1, 'Controller', 'Ajouter une liste à un modèle. Cf : Communication controller vers html', 'List<Series> mesSeries = new ArrayList<>();\n.....\nmodel.addAttribute("listeSeries", mesSeries);'),
(3, 32, 2, 'Fichier html', 'Indiquer au niveau de la balise html que les annotations Thymeleaf vont être utilisées.', '<html xmlns:th="http://www.thymeleaf.org">'),
(3, 32, 3, 'Fichier html', 'Parcours de la liste à l\'aide de la balise th:each dans une liste par exemple.',
'<ul th:each="maSerie : ${listeSeries}">  
	<li th:text="${maSerie.nom}"></li>
	<li th:text="${maSerie.resume}"></li>
	...
</ul>'),
(5, 32, 1, '**.component.ts', 'Dans le fichier **.component.ts, récupérer la liste à partir des web-services Rest',
'mesUtilisations: Utilisation[] = [];
listUtilisations() {
    this.langageService.getUtilisations().subscribe(
      data => this.mesUtilisations = data
    );
}'),
(5, 32, 2, '**.component.html', 'Utilisation de la balise *ngFor pour parcourir la liste',
'<div  *ngFor="let tempUtilisation of mesUtilisations">
    <h6>{{ tempUtilisation.nom }}</h6>
	....
</div>'),
(1,33, 1, 'class DTO', 'Création d\'une classe DTO (Data Transfert Object) pour simuler une entité qui va contenir les informations de plusieurs entités.',
'@Entity
@Data //Utilisation de LOMBOK pour générer Getters et Setters
@SqlResultSetMapping(name="UtilisationLangage",
        entities={
                @EntityResult(entityClass= DtoUtilisationDeLangage.class, fields={
                        @FieldResult(name="idLangage", column="id_langage"),
                        .....})
        })
public class DtoUtilisationDeLangage {

    @Id
    private int idLangage;
    .....

    // L\'ordre pour le constructeur correspond à l\'ordre pour le select au niveau des web-services.
    public DtoUtilisationDeLangage(int idLangage, String nomLangage, String nomUtilisation) {
        this.idLangage = idLangage;
		.....
    }
	}'),
(1,33, 2, 'Repository', 'Utilisation de la classe DTO crée au niveau de la requête JPQL pour envoyer les données ciblées.',
'@Query("SELECT new fr.springboot.prog4fun.dto.DtoUtilisationDeLangage(l.id, l.nom, u.nom) "
            + "FROM Utilisation u INNER JOIN u.mesLangages l ")
    List<DtoUtilisationDeLangage> langageAvecUtilisation();'),
(1,34, 1, 'fichier SQL', 'Création de la vue au niveau de la base de données',
'CREATE OR REPLACE VIEW mes_fonctions_avec_commandes AS
SELECT ..........'),
(1,34, 2, 'Entity', 'Création d\'une entité qui correspond à la vue',
'@Entity
@Data // Utilisation de LOMBOK
@Immutable
@Table(name = "mes_fonctions_avec_commandes")
public class FonctionComplete {

    @Id
    int id;
    @Column(name = "nom_fonction")
    String nomFonction;
    ......
}'),
(1,34, 3, 'Repository', 'Utilisation de l\'entité crée correspondant à la vue au niveau de la requête JPQL',
'@Query("select f from FonctionComplete f where f.nomFonction like %?1%")
Page<FonctionComplete> mesFonctions (@RequestParam("keyword") String keyword, Pageable pageable);'),
(1,35, 1, 'Repository', 'Possibilité de créer sa requête avec des mots clé comme AND, OR, IsNul, Like, StartingWith, Not,....',
'findByFirstNameAndLastName(String firstName, String lastName);
findByNameIsNot(String name);
findByCountryIsNull();
findByFirstNameOrCountryAllIgnoreCase(String firstName, String country);
findByFirstNameOrderByLastNameAsc(String firstName);
findByNameLike(String likePattern);
findByNameStartingWith(String prefix);
findByAgeLessThan(Integer age);'),
(2, 37, 1, 'Classe DAO', 'Toutes les classes DAO sont des repository, il faut rajouter cette annotation.', 
'@Repository
public class PersonneDAOImpl implements PersonneDAO {.....}'),
(2, 37, 2, 'Classe DAO', 'Création d\'un objet EntityManager qui sera autoinjecté.',
'private EntityManager entityManager;

@Autowired
public PersonneDAOImpl(EntityManager entityManager) {
	this.entityManager = entityManager;}'),
(2, 37, 3, 'Classe DAO - Méthode', 'Pour chaque méthode il faut récupérer la session',
'Session currentSession = this.entityManager.unwrap(Session.class);'),
(2, 37, 4, 'Classe DAO - Méthode','Création de la requête à partir de la Session récupérée',
'//Récupération de toutes les personnes
Query<Personne> maRequete = currentSession.createQuery("from Personne", Personne.class);
//Suppression d\'une personne à partir de l\'id
Query maRequete = currentSession.createQuery("delete from Personne where id=:personneId");
maRequete.setParameter("personneId", id);
//Pour la Sauvegarde, la mise à jour et la récupération d\'un objet il n\'y a pas de requête'),
(2, 37, 5, 'Classe DAO - Méthode', 'Exécution de la requête ou utilisation des méthodes Hibernate puis retour du résultat',
'// Méthode Get pour une Liste d\'objet
List<Personne> lesPersonnes = maRequete.getResultList();
// Méthode Get pour un seul objet
Personne personne = currentSession.get(Personne.class, id);
// Méthode POST ou PUT
currentSession.saveOrUpdate(personne);
//Méthode DELETE
maRequete.executeUpdate();'),
(2, 37, 6, 'Classe DAO - Méthode', 'Exemples de méthodes complètes',
'public Personne findById(int id) {
    Session currentSession = this.entityManager.unwrap(Session.class);
    return currentSession.get(Personne.class, id);
    }

public void saveOrUpdate(Serie maSerie) {
        Session currentSession = this.entityManager.unwrap(Session.class);
        currentSession.saveOrUpdate(maSerie);
    }
	
public void deleteById(int id) {
        Session currentSession = (Session)this.entityManager.unwrap(Session.class);
        Query maRequete = currentSession.createQuery("delete from Serie where id=:serieId");
        maRequete.setParameter("serieId", id);
        maRequete.executeUpdate();
    }

public List<Personne> findAll() {
        Session currentSession = this.entityManager.unwrap(Session.class);
        Query<Personne> maRequete = currentSession.createQuery("from Personne", Personne.class);
        return maRequete.getResultList();
    }'),
(2, 37, 7, 'Classe Service', 'Les classes DAO construites sont appelées par des classes de services',
'@Service
public class PersonneServiceImpl implements PersonneService {.....}'),
(2, 37, 8, 'Classe Service', 'Création d\'un objet DAO autoinjecté',
'private PersonneDAO personneDAO;

@Autowired
public PersonneServiceImpl(PersonneDAO personneDAO) {
    this.personneDAO = personneDAO;
    }'),
(2, 37, 9, 'Classe Service - Méthode', 'Au niveau de chaque méthode, il faut indiquer Transactionnal pour gérer automatiquement les ouvertures et fermetures de sessions.',
'@Transactional
public List<Personne> findAll() {
    return this.personneDAO.findAll();
    }');
	


















 




