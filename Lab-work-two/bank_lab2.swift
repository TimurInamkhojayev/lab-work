class BankAccount {
    let accountNumber: String
    let accountOwner: String
    private var balance: Double
    

    init(accountNumber: String, accountOwner: String, initialBalance: Double) {
        self.accountNumber = accountNumber
        self.accountOwner = accountOwner
        self.balance = initialBalance
    }
    
    func deposit(amount: Double) {
        guard amount > 0 else {
            print("Deposit amount must be greater than zero.")
            return
        }
        balance += amount
        print("Deposit successful. New balance: \(balance)")
    }
    
    func withdraw(amount: Double) {
        guard amount > 0 else {
            print("Withdrawal amount must be greater than zero.")
            return
        }
        
        if balance >= amount {
            balance -= amount
            print("Withdrawal successful. New balance: \(balance)")
        } else {
            print("Insufficient funds. Withdrawal failed.")
        }
    }
    
    func getBalance() -> Double {
        return balance
    }
    
    func displayAccountInfo() {
        print("Account Number: \(accountNumber)")
        print("Account Owner: \(accountOwner)")
        print("Current Balance: \(balance)")
    }
}

let myAccount = BankAccount(accountNumber: "872008", accountOwner: "Timur Inamkhojayev", initialBalance: 5000000)

myAccount.deposit(amount: 13000)
myAccount.withdraw(amount: 2000)

myAccount.displayAccountInfo()
