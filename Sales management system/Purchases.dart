class Purchase {
  String? Date;
  bool? IsCash;
  String? EmployeeName;
  String? supplierName;
  String? productName;
  double? Creditor;
  double? Debitor;
  double? salePercent;
  double? saleAmount;
  double? TaxPercent;
  double? TaxAmount;
  double? PurchaseAmount;
  double? Buying;
  double? Selling;
  int? Quantity;

  Purchase(
      this.Date,
      this.supplierName,
      this.EmployeeName,
      this.productName,
      this.IsCash,
      this.Creditor,
      this.Debitor,
      this.salePercent,
      this.saleAmount,
      this.TaxPercent,
      this.TaxAmount,
      this.PurchaseAmount,
      this.Buying,
      this.Selling,
      this.Quantity);

  @override
  String toString() {
    return (" ***** PURCHASE ***** \n Date: $Date \n Cash: $IsCash \n Employee Name: $EmployeeName \n Supplier Name: $supplierName \n Product Name: $productName \n Creditor: $Creditor \n Debitor: $Debitor \n Sale Percent: $salePercent \n Sale Amount: $saleAmount \n Tax Percent: $TaxPercent \n Tax Amount: $TaxAmount \n Purchase Amount: $PurchaseAmount \n Buying: $Buying \n Selling: $Selling \n Quantity: $Quantity ");
  }
}
