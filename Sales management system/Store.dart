class Store {
  String? ProductName;
  double? buying;
  double? selling;
  int? Quantity;
  double? TotalBuying;
  double? TotalSelling;

  Store(this.ProductName, this.buying, this.selling, this.Quantity,
      this.TotalBuying, this.TotalSelling);

  @override
  String toString() {
    return (" ***** STORE ***** \n Product Name: $ProductName \n Buying Cost: $buying \n selling Cost: $selling \n Quantity: $Quantity \n Total Buying: $TotalBuying \n Total Selling: $TotalSelling");
  }
}
