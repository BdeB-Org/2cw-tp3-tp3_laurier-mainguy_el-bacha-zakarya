function Connexion(){
    let elemN=document.getElementById("recherche").value;
    window.alert(elemN);

}
function createNode(element) {
    return document.createElement(element);
  }
  function append(parent, el) {
    return parent.appendChild(el);
  }
  function AfficherClients()
  {
  //Constantes pour la table produit
  const client_ul = document.getElementById("clients"); 
  const url = "http://localhost:8080/ords/hr2/clients/"; 
  //Fonction fetch pour Le transfert des données entre la base de données et le site
  fetch(url)
      .then((resp) => resp.json())
      .then(function (data) {
          let clients= data.items;
          return clients.map(function (client) {
              let li = createNode("li"),
                  span = createNode("span");
              span.innerHTML = `Nom des clients : ${client.prenom_client}`;
              append(li, span);
              append(client_ul, li);
          });
      })
      //Un catch pour capturer si il y a une erreur dans l'exécution
      .catch(function (error) {
          console.log(JSON.stringify(error));
      });
  }
  
  
  
  
  
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  