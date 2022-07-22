# README
-link: *https://autoecole-alpha.herokuapp.com/*
- Pour les identifiants voir le doc **admin_et_autres.txt**

## L'application a Troi parties importantes:

1. L'admin, Il(s) peut sélectionner  l'étudiant et lui ajouter des crédits, créer les jours des cours et les créneaux. les créneaux s'adaptent automatiquement à la spécificité du jour.

2. L'étudaiant (student). Il peut sélectionner les créneaux quand il veut faire un cours de conduite, vérifier son profile ou il y aura affiché les séances et les crédits qui lui restent. Les cours déjà réservés ne peuvent plus être sélectionné par les autres 'students'.

- L'Étudiant peut supprimer les cours qu'il a déjà réservées sauf les cours dans les prochaines 48 heures.

- Le crédit de l'étudaint baisse quand il réserve une séance et augmente quand il l'annule.

-Le cours déjà passé ne ***s'affiche*** plus (il ne se supprimera pas dans la base de données)

3. Le Professeur (teacher). Seulement lui (et l'admin) peut créer les jours et les créneaux. Le 'teacher' ne peut pas ajouter des crédits à l'étudiant (student).


  * Le bouton profile dirige vers *'login'* si on n'est pas connecté. Si la personne est un student il va le diriger vers le profil student et dans la page admin/professeur si la personne est un admin/professeur.

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
