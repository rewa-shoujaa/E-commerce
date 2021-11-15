// Wait for the DOM to be ready
$(function() {
  // Initialize form validation on the registration form.
  // It has the name attribute "registration"
  $("#AddProductLink").addEventListener("click", OpenAddProduct);
  function OpenAddProduct() {
    $.get("SellerAddProduct.php");
    return false;
}
});