class BankAccount {
  String accountnumber;
  String accountHolder;
  double balance;

  BankAccount(this.accountHolder ,this.accountnumber , this.balance );


  void deposit(double amount){
    balance += amount;
    print("Deposited \$${amount.toStringAsFixed(2)}");


  }

  void withdraw(double amount){
    if (balance >= amount) {
      balance -= amount;

      print('withdrew \$${amount.toStringAsFixed(2)}');
    
    }else{
      print('ยอดเงินไม่เพียงพอ');
    }
  }
  void displayInfo(){
    print('Account Number: $accountnumber');
    print('Account Holder: $accountHolder');
    print('Balance: \$${balance.toStringAsFixed(2)}');
  }

}


void main(){
  BankAccount account = BankAccount('1234567890', 'John Doe', 1000.0);

  account.displayInfo();

  account.deposit(500.0);

  account.displayInfo();

  account.withdraw(300.0);

  account.displayInfo();

  
}

