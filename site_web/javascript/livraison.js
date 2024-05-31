function AfficherMessageLivraison()
{
   let prenom = document.getElementById('prenom').value
   let nom = document.getElementById('nom').value
   let email = document.getElementById('email').value
   let adresse = document.getElementById('adresse').value

   window.alert(`Merci d'avoir rempli le formulaire ${prenom} ${nom} nous allons vous envoyer un email à cette email : ${email}. Le produit vous sera envoyer à cette adresse : ${adresse}.`)
}