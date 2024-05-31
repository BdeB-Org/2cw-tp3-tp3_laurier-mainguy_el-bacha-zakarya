function AfficherMessageLivraison()
{
   let prenom = document.getElementById('prenom').value
   let nom = document.getElementById('nom').value
   let email = document.getElementById('email').value
   let adresse = document.getElementById('adresse').value

   window.alert(`Merci d'avoir rempli le formulaire ${prenom} ${nom} nous allons vous envoyer un email à cette email : ${email}. Le produit vous sera envoyer à cette adresse : ${adresse}.`)
}
function createNode(element) {
    return document.createElement(element);
}
  function append(parent, el) {
    return parent.appendChild(el);
}
function AfficherLivreurs()
{
//Constantes pour la table livraison
const livreur_ul = document.getElementById("livreurs"); 
const url_livreur = "http://localhost:8080/ords/hr2/livraisons/"; 
//Fonction fetch pour Le transfert des données entre la base de données et le site
fetch(url_livreur)
    .then((resp) => resp.json())
    .then(function (data) {
        let livreurs = data.items;
        return livreurs.map(function (livreur) {
            let li = createNode("li"),
                span = createNode("span");
            span.innerHTML = `Prénom : ${livreur.prenom_livreur} , Nom : ${livreur.nom_livreur} , Disponibilité : ${livreur.disponibilite_province}`;
            append(li, span);
            append(livreur_ul, li);
        });
    })
    //Un catch pour capturer si il y a une erreur dans l'exécution
    .catch(function (error) {
        console.log(JSON.stringify(error));
    });
}