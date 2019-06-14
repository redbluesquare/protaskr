angular.
module('productList').
component('productList', {
  // Note: The URL is relative to our `index.html` file
  templateUrl: 'app/product-list/product-list.template.html',
  controller: function ProductListController() {
    this.products = [
      {
          sku: '0603100071',
          product_name: 'Bosch PMF 180 E',
          images:['images/0603100071/0603100071.jpg']
      }, 
      {
          sku: '06015A1001',
          product_name: 'Bosch GST 12V-70 Professional',
          images:['images/06015A1001/06015A1001.png']
      }
    ];
  }
});