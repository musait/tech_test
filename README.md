## Import du projet et lancement 
 
- ``` git clone https://github.com/musait/tech_test.git ```
- ``` rails db:create db:migrate ```
- ``` rails server ``` 

## Utilisation de l'API avec Postman

- L'endpoint pour créer un utilisateur est celui-ci : ``` http://localhost:3000/users ``` en requête POST.
- Dans l'onglet "Body", séléctionnez "raw"
- Dans le champs en dessous, vous pouvez entrer ceci : ``` { "user": {"name":"AAA"}} ``` en remplacant "AAA" par la composition de lettres et/ou de chiffres de votre choix.
- Si le pseudo que vous avez choisi convient, vous obtiendrez un statut "201 created" avec un message "OK" ,sinon, le programme vous renverra un autre choix qui sera créer aléatoirement. 


## Test

- Vous pouvez lancer une série de test en tapant ```bundle exec rspec spec/models/user_spec.rb``` en console.
