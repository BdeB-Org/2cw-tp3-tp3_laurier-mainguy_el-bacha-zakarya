function createNode(element)
{
 return document.createElement(element);
}
function append(parent, el)
{
    return parent.appendChild(el);
}
const emp_ul  = document.getElementById("produits");
const url = "http://127.0.0.1:8080/ords/hr2/produits";
fetch(url)
  .then((resp) => resp.json())
  .then(function (data) {
    let produits = data.items; //.results;
    return produits.map(function (produit) {
      let li = createNode("li"),
        span = createNode("span");
      span.innerHTML = `${produit.nom_produit}`;
      append(li, span);
      append(emp_ul, li);
    });
  })
  .catch(function (error) {
    console.log(JSON.stringify(error));
  });
    
























