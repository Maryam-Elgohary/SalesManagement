import 'Purchases.dart';
import 'Customers.dart';
import 'Products.dart';
import 'Store.dart';
import 'Suppliers.dart';
import 'dart:io';

import 'invoices.dart';

class Manager {
  List<Customer> Customers = [];
  List<Product> Products = [];
  List<Store> Stores = [];
  List<Supplier> Suppliers = [];
  List<Purchase> Purchases = [];
  List<Invoice> Invoices = [];

  // Customer
  void AddCust(Customer customer) {
    Customers.add(customer);
    print("Customer is added successfully!");
  }

  void DisplayCust() {
    for (int i = 0; i < Customers.length; i++) {
      print("Customer ${i + 1}: \n ${Customers[i]}");
    }
  }

  void DeleteCust(String Name) {
    Customers.removeWhere((customer) => customer.Name == Name);
    print("This customer is deleted successfully!");
  }

  // Product
  void AddProduct(Product product) {
    Products.add(product);
    print("Product is added successfully!");
  }

  void DisplayProducts() {
    for (int i = 0; i < Products.length; i++) {
      print("Pruduct ${i + 1}: \n ${Products[i]}");
    }
  }

  void DeleteProduct(String ID) {
    Products.removeWhere((product) => product.ProductID == ID);
    print("This Product is deleted successfully!");
  }

  // Supplier
  void AddSupplier(Supplier supplier) {
    Suppliers.add(supplier);
    print("Supplier is added successfully!");
  }

  void DisplaySuppliers() {
    for (int i = 0; i < Suppliers.length; i++) {
      print("Supplier ${i + 1}: \n ${Suppliers[i]}");
    }
  }

  void DeleteSupplier(String Name) {
    Suppliers.removeWhere((supplier) => supplier.CompanyName == Name);
    print("This Supplier is deleted successfully!");
  }

  //Purchase
  void Addpurchase(Purchase purchase) {
    Purchases.add(purchase);
    print("Purchase is added successfully!");
  }

  void DisplayPurchases() {
    for (int i = 0; i < Purchases.length; i++) {
      print("Purchase ${i + 1}: \n ${Purchases[i]}");
    }
  }

  // store
  void AddToStore(Store store) {
    Stores.add(store);
    print("Product is added to store successfully!");
  }

  void DisplayStoreProducts() {
    for (int i = 0; i < Stores.length; i++) {
      print("Store Product ${i + 1}: \n ${Stores[i]}");
    }
  }

// invoices
  void AddInvoice(Invoice invoice) {
    Invoices.add(invoice);
    print("$invoice \n Invoice is added successfully!");
  }

  void DisplayInvoices() {
    for (int i = 0; i < Invoices.length; i++) {
      print("Invoice ${i + 1}: \n ${Invoices[i]}");
    }
  }
}

Customer ReadCustomerData() {
  print("Enter the customer name: ");
  String Name = stdin.readLineSync()!;
  print("Enter the customer phone number: ");
  String PhoneNumber = stdin.readLineSync()!;
  print("Enter the customer address: ");
  String Address = stdin.readLineSync()!;
  print("Enter the amount of money if the customer is a creditor: ");
  double Creditor = double.parse(stdin.readLineSync()!);
  print("Enter the amount of money if the customer is a debitor: ");
  double Debitor = double.parse(stdin.readLineSync()!);
  return Customer(Name, PhoneNumber, Address, Creditor, Debitor);
}

Product ReadProductDate() {
  print("Enter the product id: ");
  String ProductID = stdin.readLineSync()!;
  print("Enter the product name: ");
  String ProductName = stdin.readLineSync()!;
  print("Enter the product category: ");
  String ProductCategory = stdin.readLineSync()!;
  print("Enter the product supplier: ");
  String ProductSupplier = stdin.readLineSync()!;
  return Product(ProductID, ProductName, ProductCategory, ProductSupplier);
}

Store ReadStoreData() {
  print("Enter the product Name: ");
  String ProductName = stdin.readLineSync()!;
  print("Enter the product buying cost: ");
  double buying = double.parse(stdin.readLineSync()!);
  print("Enter the product selling cost: ");
  double selling = double.parse(stdin.readLineSync()!);
  print("Enter the product Quantity: ");
  int Quantity = int.parse(stdin.readLineSync()!);
  print("Enter the product total buying cost: ");
  double TotalBuying = double.parse(stdin.readLineSync()!);
  print("Enter the product total selling cost: ");
  double TotalSelling = double.parse(stdin.readLineSync()!);
  return Store(
      ProductName, buying, selling, Quantity, TotalBuying, TotalSelling);
}

Supplier ReadSupplierData() {
  print("Enter the supplier name: ");
  String CompanyName = stdin.readLineSync()!;
  print("Enter the supplier phone number: ");
  String PhoneNumber = stdin.readLineSync()!;
  print("Enter the supplier email: ");
  String Email = stdin.readLineSync()!;
  print("Enter the supplier address: ");
  String Address = stdin.readLineSync()!;
  print("Enter the supplier product category: ");
  String ProductCategory = stdin.readLineSync()!;
  return Supplier(CompanyName, PhoneNumber, Email, Address, ProductCategory);
}

Purchase ReadPurchaseData() {
  print("Enter the purchase date: ");
  String Date = stdin.readLineSync()!;
  print("Enter the supplier name: ");
  String SupplierName = stdin.readLineSync()!;
  print("Enter the employee name: ");
  String EmployeeName = stdin.readLineSync()!;
  print("Enter the product name: ");
  String ProductName = stdin.readLineSync()!;
  print("Enter true if you will pay cash and false if not: ");
  bool IsCash = bool.parse(stdin.readLineSync()!);
  print("Enter the purchase quantity: ");
  int Quantity = int.parse(stdin.readLineSync()!);
  print("Enter the amount of money if a creditor: ");
  double Creditor = double.parse(stdin.readLineSync()!);
  print("Enter the amount of money if a debitor: ");
  double Debitor = double.parse(stdin.readLineSync()!);
  print("Enter the sale percentage: ");
  double salePercent = double.parse(stdin.readLineSync()!);
  print("Enter the amount of sale: ");
  double saleAmount = double.parse(stdin.readLineSync()!);
  print("Enter the tax percentage: ");
  double TaxPercent = double.parse(stdin.readLineSync()!);
  print("Enter the amount of tax: ");
  double TaxAmount = double.parse(stdin.readLineSync()!);
  print("Enter the purchase amount: ");
  double PurchaseAmount = double.parse(stdin.readLineSync()!);
  print("Enter the buying cost: ");
  double Buying = double.parse(stdin.readLineSync()!);
  print("Enter the selling cost: ");
  double Selling = double.parse(stdin.readLineSync()!);

  return Purchase(
      Date,
      SupplierName,
      EmployeeName,
      ProductName,
      IsCash,
      Creditor,
      Debitor,
      salePercent,
      saleAmount,
      TaxPercent,
      TaxAmount,
      PurchaseAmount,
      Buying,
      Selling,
      Quantity);
}

Invoice ReadInvoiceData() {
  print("Enter the invoice date: ");
  String Date = stdin.readLineSync()!;
  print("Enter the cashier name: ");
  String CashierName = stdin.readLineSync()!;
  print("Enter the customer name: ");
  String customerName = stdin.readLineSync()!;
  print("Enter the product name: ");
  String productName = stdin.readLineSync()!;
  print("Enter the selling product quantity: ");
  int Quantity = int.parse(stdin.readLineSync()!);
  print("Enter true if you will pay cash and false if not: ");
  bool IsCash = bool.parse(stdin.readLineSync()!);
  print("Enter the cost of this product: ");
  double Cost = double.parse(stdin.readLineSync()!);
  print("Enter the sale percentage: ");
  double SalePercent = double.parse(stdin.readLineSync()!);
  print("Enter the sale amount: ");
  double SaleAmount = double.parse(stdin.readLineSync()!);
  print("Enter the total cost: ");
  double Total = double.parse(stdin.readLineSync()!);

  return Invoice(Date, CashierName, customerName, productName, Quantity, IsCash,
      Cost, SalePercent, SaleAmount, Total);
}
