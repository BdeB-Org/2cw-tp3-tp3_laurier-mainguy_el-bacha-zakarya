function createNode(element)
{
 return document.createElement(element);
}
function append(parent, el)
{
    return parent.appendChild(el);
}
function AfficherProduit()
{
    const produit_ul = document.getElementById("produit");
    const urltable = "http://127.0.0.1:8080/ords/hr2/produit"; 
    
    fetch(urltable)
    .then((resp) => resp.json())
    .then(function (data){
        let produit = data.items;
        return produit.map(function (produits) {
          let li = createNode("li"),
          span = createNode("span");
          span.innerHTML = `${produits.nom_produit}`;
          append(li,span);
          append(produit_ul,li);

        });
    })
    .catch(function (error)
    {
      console.log(JSON.stringify(error));
    });





}

