
function createNode(element) {
    return document.createElement(element);
  }
  function append(parent, el) {
    return parent.appendChild(el);
  }
  function AfficherAide()
  {
 
  const elemA = document.getElementById("aides"); 
  const url = "http://localhost:8080/ords/hr2/administration_aides/"; 

  fetch(url)
      .then((resp) => resp.json())
      .then(function (data) {
          let aides= data.items;
          return aides.map(function (aide) {
              let li = createNode("li"),
                  span = createNode("span");
              span.innerHTML = `Email : ${aide.email_admin},  Téléphone : ${aide.telephone_admin}`;
              append(li, span);
              append(elemA, li);
          });
      })
      .catch(function (error) {
          console.log(JSON.stringify(error));
      });
  }
  
  
  
  
  
    
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  