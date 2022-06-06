# Chalenge_sql![base ](https://user-images.githubusercontent.com/100726144/170610870-42487e44-0a60-455e-a059-a27fbb1d75ba.png)


Here is a list of some queries to help you navigate this database

*  to add a movie
 
insert into `info_film`(titre)value( the name of your movie);


*  to modify a movie
 
UPDATE `test`.`info_film` SET `TItre`='New_name' WHERE `id_film`='id_Number';


* to delete a movie

DELETE FROM `test`.`info_film`  WHERE `id_film`= 'id_Number';


*  to add a client

insert into `info_utilisateur`(nom,prenom,email)value(Name,Second_Name,Email);


*  to modify a client

UPDATE  `test`.`info_utilisateur`  
SET 
    nom = `The_Name`,
    prenom=`The_second_Name`
    email = `example@gmail.com`
WHERE
  `id_client`='id_Number'; 
  
  *  to delete a client
  
  DELETE FROM `test`.`info_utilisateur`  WHERE `id_client` = 'id_Number';
  
  *  to display the last 3 movies added
  *  
    SELECT * FROM `info_utilisateur` ORDER BY `id_client` DESC LIMIT 3;
