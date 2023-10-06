class Invoice {
  String? Date;
  String? CashierName;
  String? customerName;
  String? productName;
  int? Quantity;
  double? Cost;
  bool? IsCash;
  double? SalePercent;
  double? SaleAmount;
  double? Total;

  Invoice(
      this.Date,
      this.CashierName,
      this.customerName,
      this.productName,
      this.Quantity,
      this.IsCash,
      this.Cost,
      this.SalePercent,
      this.SaleAmount,
      this.Total);

  @override
  String toString() {
    return (" ***** INVOICE ***** \n Date: $Date \n Cashier Name: $CashierName \n Customer Name: $customerName \n Product Name: $productName \n Quantity: $Quantity \n Cost: $Cost \n Cash: $IsCash \n Sale Percent: $SalePercent \n Sale Amount: $SaleAmount \n Total: $Total \n");
  }
}
