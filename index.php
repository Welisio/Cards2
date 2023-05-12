<?php
print 1;
include "core.php";

print_r($connection);

$selectCard = mysqli_query($connection, "SELECT * FROM `card`");

?>
<style>
.price-rate-count,.card-container,.count,.rate,.cards {
    display: flex;
}
.card-container {
    margin-right: 15px;
    padding: 10px;
    width: 300px;
    flex-direction: column;
    justify-content: space-between;
    background: #CBE038;
    border-radius: 10px;
    margin-bottom: 10px;
}
.card-img,.title,.description,.category {
    margin-bottom: 20px;
}
.price-rate-count {
    justify-content: space-between;
}
.category {
    font-size: 22px;
    font-weight: 600;
}
.title {
    font-size: 18px;
    font-weight: 600;
}
.description {
    line-height: 25px;
}
.count > div,.rate > div {
    margin-right: 5px;
}
.count,.rate,.price {
    font-size: 18px;
    font-weight: 600;
}
.cards {
    flex-wrap: wrap;
}
.btn-green {
    height: 50px;
    padding-top: 15px;
    width: 300px;
    display: flex;
    color: #fff;
    align-items: center;
    justify-content: center;
    padding: 7px 15px;
    background: #5982e3;
    margin-bottom: 30px;
    cursor: pointer;
    border-radius: 10px;
}
.btn-green > div:first-child {
    margin-right: 15px;
}
.centerpoint,.centerpoint2 {
    top: 50%;
    left: 50%;
    position: fixed;
    z-index: 5;
    transform: translate(-50%, -50%);
}
.basket-container,.wishlist-container {
    display: flex;
    flex-direction: column;
    position: relative;
    width: 300px;
    display: flex;
    height: 300px;
    background: gray;
    padding: 10px;
    overflow-y: scroll;
}
.qty {
    display: flex;
}
.qty > *:not(:last-child) {
    margin-right: 15px;
}
.qty > div {
    cursor: pointer;
}
.basket > div {
    margin-bottom: 20px;
}
.cross {
    display: flex;
    cursor: pointer;
    justify-content: flex-end;
}
.add-to-basket,.add-to-wishlist {
    cursor: pointer;
}
.btns-container {
    display: flex;
}
.btns-container > div:first-child {
    margin-right: 7px;
}
</style>

<div class="cards-wrapper">
<?php 
    while (($card = mysqli_fetch_assoc($selectCard))) {
?>
    <div class="card-container">
        <div class="category">${element.category}</div>
        <div class="title">${element.title}</div>
        <img class="card-img" height="200px" src="${element.image}" alt="">
        <div class="description">
            ${element.description}
        </div>
        <div class="price-rate-count">
            <div class="price">${element.price}$</div>
            <div class="rate">
                <div>${element.rating.rate}</div> 
                <i class="fa-solid fa-star"></i>
            </div>
            <div class="count">
                <div>${element.rating.count}</div> 
                <i class="fa-solid fa-boxes-stacked"></i>
            </div>
        </div> 
        ${basket.findIndex(el => el.id === element.id) === -1 ? `<div class="add-to-basket add-to-basket${element.id}" onclick="addToBasket(${element.id},event)">Add to basket</div>` : `<div class="remove-from-basket remove-from-basket${element.id}" onclick="removeFromBasket(${element.id},event)">Remove from basket</div>`}
        ${wishlist.findIndex(el => el.id === element.id) === -1  ?  `<div class="add-to-wishlist add-to-wishlist${element.id}" onclick="addToWishlist(${element.id},event)">Add to Wishlist</div>` : `<div class="remove-from-wishlist remove-from-wishlist${element.id}" onclick="removeFromWishlist(${element.id},event)">Remove from Wishlist</div>`}
    </div>
<?php 
    }
?>
</div>