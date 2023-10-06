import 'Manager.dart';
import 'dart:io';

class MainMenu extends Manager {
  void menu() {
    while (true) {
      print(
          " ***** SALES MANAGEMENT SYSTEM ***** \n 1- Customers \n 2- Suppliers \n 3- Products \n 4- Purchases \n 5- Store \n 6- Invoices");
      int choice = int.parse(stdin.readLineSync()!);
      switch (choice) {
        case 1:
          print(
              " ----------------------------------- \n 1- Add Customers \n 2- Delete Customers \n 3- Display all customers");
          int choice = int.parse(stdin.readLineSync()!);
          switch (choice) {
            case 1:
              AddCust(ReadCustomerData());
              break;
            case 2:
              print(
                  " ----------------------------------- \n Enter the customer name: ");
              String Name = stdin.readLineSync()!;
              DeleteCust(Name);
              break;
            case 3:
              DisplayCust();
          }

          break;

        case 2:
          print(
              " ----------------------------------- \n 1- Add Suppliers \n 2- Delete Suppliers \n 3- Display all Suppliers");
          int choice = int.parse(stdin.readLineSync()!);
          switch (choice) {
            case 1:
              AddSupplier(ReadSupplierData());
              break;
            case 2:
              print(
                  " ----------------------------------- \n Enter the Supplier name: ");
              String Name = stdin.readLineSync()!;
              DeleteSupplier(Name);
              break;
            case 3:
              DisplaySuppliers();
          }

          break;

        case 3:
          print(
              " ----------------------------------- \n 1- Add Products \n 2- Delete Products \n 3- Display all Products");
          int choice = int.parse(stdin.readLineSync()!);
          switch (choice) {
            case 1:
              AddProduct(ReadProductDate());
              break;
            case 2:
              print(
                  " ----------------------------------- \n Enter the Product ID: ");
              String ID = stdin.readLineSync()!;
              DeleteProduct(ID);
              break;
            case 3:
              DisplayProducts();
          }

          break;

        case 4:
          print(
              " ----------------------------------- \n 1- Add Purchases \n 2- Display all purchases");
          int choice = int.parse(stdin.readLineSync()!);
          switch (choice) {
            case 1:
              Addpurchase(ReadPurchaseData());
              break;
            case 2:
              DisplayPurchases();
          }

          break;

        case 5:
          print(
              " ----------------------------------- \n 1- Add to store \n 2- Display all store products ");
          int choice = int.parse(stdin.readLineSync()!);
          switch (choice) {
            case 1:
              AddToStore(ReadStoreData());
              break;
            case 2:
              DisplayStoreProducts();
          }

          break;

        case 6:
          print(
              " ----------------------------------- \n 1- Add invoices \n 2- Display all invoices");
          int choice = int.parse(stdin.readLineSync()!);
          switch (choice) {
            case 1:
              AddInvoice(ReadInvoiceData());
              break;
            case 2:
              DisplayInvoices();
          }

          break;
      }
    }
  }
}
