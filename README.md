## The FACTORY ##
<hr/>

> "Les usines sont à la mode en ce moment, nous allons créer un site pour les usines. Nous allons créer un modèle assemblage, qui serait l'assemblage de plusieurs pièces. Une pièce peut appartenir à plusieurs assemblages."    

<hr/>

## De la reflection sur l'architecture aux dernières erreurs rencontrées:  

* 3 tableaux répartis comme suis/  

L tab **Assembly** :   
----L champs :  
--------L id (integer primary key autoincrement) 
--------L name (string)   
  
L tab **Part**:  
----L champs :  
--------L id (integer primary key autoincrement)     
--------L name (string)   

L tab **Assemblor**:  
----L champs :  
--------L id (integer primary key autoincrement)     
--------L assembly_id (integer)
--------L part_id (integer)   

<hr/>

> Pour tester la relation N-N dans ce programme nous allons créer un assemblage de biberon pour bébé.  

<hr/>  

* Aller dans la console rails  
  ```  rails console  ```

* Créer une entrée pour le produit fini 'Biberize Turbo 3000'  
  ``` biberon = Assembly.create(name: "Biberize Turbo 3000") ```  

* Crée une entrée pour la pièce 'tétine' qui complètera l'assemblage    
  ```  tetine = Part.create(part_number: "Soft'in babyVor V2")  ```  

* Maintenant nous allons assembler la 'tétine' au reste du corps du biberon de folie integalactique !!  
  ```  biberon.parts << tetine  ```  

* Je vous laisse admirer le résultat avec un petit (qui montre que notre model 'Soft'in babyVor V2' à bien été installé sur notre biberon)  
  ```  biberon.parts ```   
