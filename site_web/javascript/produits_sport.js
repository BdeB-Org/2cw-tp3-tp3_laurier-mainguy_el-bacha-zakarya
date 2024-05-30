function createNode(element) {
  return document.createElement(element);
}
function append(parent, el) {
  return parent.appendChild(el);
}
function AfficherProduit()
{
//Constantes pour la table produit
const produit_ul = document.getElementById("produits"); 
const url = "http://localhost:8080/ords/hr2/produits/"; 
//Fonction fetch pour Le transfert des données entre la base de données et le site
fetch(url)
    .then((resp) => resp.json())
    .then(function (data) {
        let produits = data.items;
        return produits.map(function (produit) {
            let li = createNode("li"),
                span = createNode("span");
            span.innerHTML = `Nom des Produits : ${produit.nom_produit}`;
            append(li, span);
            append(produit_ul, li);
        });
    })
    //Un catch pour capturer si il y a une erreur dans l'exécution
    .catch(function (error) {
        console.log(JSON.stringify(error));
    });
}





  





















