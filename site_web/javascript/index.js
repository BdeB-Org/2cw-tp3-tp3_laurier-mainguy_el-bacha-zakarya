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
 
  const elemC = document.getElementById("clients"); 
  const url = "http://localhost:8080/ords/hr2/clients/"; 

  fetch(url)
      .then((resp) => resp.json())
      .then(function (data) {
          let clients= data.items;
          return clients.map(function (client) {
              let li = createNode("li"),
                  span = createNode("span");
              span.innerHTML = `Nom du client : ${client.prenom_client} ${client.nom_client} `;
              append(li, span);
              append(elemC, li);
          });
      })
      .catch(function (error) {
          console.log(JSON.stringify(error));
      });
  }
  
  
  
  
  
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  