class Product {
  String? ProductID;
  String? ProductName;
  String? ProductCategory;
  String? ProductSupplier;

  Product(this.ProductID, this.ProductName, this.ProductCategory,
      this.ProductSupplier);

  @override
  String toString() {
    return (" ***** PRODUCTS ***** \n Product ID: $ProductID \n Product Category: $ProductCategory \n Product Name: $ProductName \n Product Supplier: $ProductSupplier");
  }
}
