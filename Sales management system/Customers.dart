class Customer {
  String? Name;
  String? PhoneNumber;
  String? Address;
  double? Creditor;
  double? Debitor;

  Customer(
      this.Name, this.PhoneNumber, this.Address, this.Creditor, this.Debitor);

  @override
  String toString() {
    return (" ***** CUSTOMER DATA ***** \n Name: $Name \n Phone Number: $PhoneNumber \n Address: $Address \n Creditor: $Creditor \n Debitor: $Debitor");
  }
}
