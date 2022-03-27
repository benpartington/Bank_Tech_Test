Bank (Tech Test)
----------------

### Requirements

* You should be able to interact with your code via a REPL like IRB or Node.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2023  
And a deposit of 2000 on 13-01-2023  
And a withdrawal of 500 on 14-01-2023  
When she prints her bank statement  
Then she would see:

```
date       || credit  || debit    || balance
14/01/2023 ||         || 500.00   || 2500.00
13/01/2023 || 2000.00 ||          || 3000.00
10/01/2023 || 1000.00 ||          || 1000.00
```

Example Input in irb:

Please Select; 1. Deposit 2. Withdrawl 3. Statement 4.Exit:  
%> 1  
Please Enter Deposit Amount:  
%> 1000.00  
Thank you, your balance has been updated to: 1000.00  
Please Select; 1. Deposit 2. Withdrawl 3. Statement 4.Exit:  
%> 1  
Please Enter Deposit Amount:  
%> 2000.00  
Thank you, your balance has been updated to: 3000.00  
Please Select; 1. Deposit 2. Withdrawl 3. Statement 4.Exit:  
%> 2  
Please Enter Withdrawal Amount:  
%> 500.00  
Thank you, your balance has been updated to: 2500.00  
Please Select; 1. Deposit 2. Withdrawl 3. Statement 4.Exit:  
%> 3  
(Prints statment above)  


