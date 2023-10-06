class Supplier {
  String? CompanyName;
  String? PhoneNumber;
  String? Email;
  String? Address;
  String? ProductCategory;

  Supplier(this.CompanyName, this.PhoneNumber, this.Email, this.Address,
      this.ProductCategory);

  @override
  String toString() {
    return (" ***** SUPPLIERS ***** \n Company Name: $CompanyName \n Phone Number: $PhoneNumber \n Email: $Email \n Address: $Address \n Product Category: $ProductCategory");
  }
}
