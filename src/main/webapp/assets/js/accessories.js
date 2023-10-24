/**
 * 
 */

 let filtered = [];
  
      const url1 = "http://localhost:8080/liveon-web/AccessoriesServlet";
              axios.get(url1)
                .then(function (response) {
                  console.log(response.data)  
                  
  
          filtered = response.data;
          
        productCard(filtered);
       
          
      
                })
                .catch(function (error) {
                  // handle error
                  console.log(error);
                })
function productCard(array=[]) {
    const parentHtmlDiv = document.querySelector(".container");
  parentHtmlDiv.innerHTML = "";
  array.forEach((item) => {
    const product = document.createElement("div")
    product.setAttribute("class", "product")
    product.setAttribute("value",item.vehicleType);
    // document.querySelector(".container").prepend(product)
    parentHtmlDiv.prepend(product)
    console.log(product);
    const forwed = document.createElement("a")
    forwed.setAttribute("href", "/liveon-web/AccessoriesDetails?spartPartId=" + item.id)
    product.append(forwed)

    // Create the card element
const card = document.createElement('div');
card.setAttribute("class","card");
forwed.append(card)

// Create the card image element
const cardImg = document.createElement('div');
cardImg.setAttribute("class","card-img");
card.append(cardImg);

// Create the card image tag
const cardImage = document.createElement('img')
cardImage.setAttribute("src", item.imageUrl[0])
cardImg.append(cardImage);
// Create the card info element
const cardInfo = document.createElement('div');
cardInfo.setAttribute("class","card-info");


// Create the product description element
const description = document.createElement('p');
description.setAttribute("class","text-body");
description.innerText = item.name;
cardInfo.append(description);

card.append(cardInfo);

// Create the card footer element
const cardFooter = document.createElement('div');
cardFooter.className = 'card-footer';

// Create the price element
const price = document.createElement('span');
price.setAttribute("class","text-title");
price.innerText=  item.price;
cardFooter.append(price);

// Create the card button element (empty in this example)
const cardButton = document.createElement('div');
cardButton.setAttribute("class", "card-button");
cardFooter.append(cardButton);
let products_star = item;
let rating_round = Math.round(products_star.rating);
let stars = document.createElement('div');

for (let j = 0; j < rating_round; j++) {
    const starIcon = document.createElement('i');
    starIcon.classList.add('fas', 'fa-star');
    stars.appendChild(starIcon);
}
cardButton.appendChild(stars);
card.append(cardFooter);


  })
}


const selectOption = document.getElementById("store");
let filteredData = [];
selectOption.addEventListener("change", (e) => {
  const seletedQuery = selectOption.value.trim();
  console.log(seletedQuery);

  if (e.key === "Enter") {
    e.preventDefault();

  }
  if (seletedQuery !== "all") {
    filteredData = filtered.filter((item) =>
    item.vehicleType.includes(seletedQuery)
    );
  }

  else {
    filteredData = filtered;
  }
  console.log(filteredData);
  if (filteredData.length === 0) {
    const parentHtmlDiv2 = document.querySelector(".parent");
    const p = document.createElement("p");
    p.setAttribute("class", "noresult");
    p.innerText = "No result found";
    parentHtmlDiv2.innerHTML = "";
    parentHtmlDiv2.append(p);
    console.log("pkdd");
  } else {
    productCard(filteredData);
  }
});

const searchbox = document.getElementById("name");
searchbox.addEventListener("keydown", (e) => {
  const searchQuery = searchbox.value.trim().toLowerCase();
//   console.log(searchQuery,"yogi");
  if (e.key === "Enter"){
    e.preventDefault();
    // e.stopPropagation();
    // // return false
  }
  const filteredList = filteredData.filter((item) => {
    return item.name.toLowerCase().includes(searchQuery) 
    // || item.about_product.toLowerCase().includes(searchQuery)
  })
  productCard(filteredList);
if(selectOption.value==""){
  const filteredList2 = filtered.filter((item) => {
    return item.name.toLowerCase().includes(searchQuery)
    //  || item.about_product.toLowerCase().includes(searchQuery)
  })
  
  productCard(filteredList2)
}
})
