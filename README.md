Bank (Tech Test)
---

### Tech 

- Ruby  
- Rspec  
- Prettier  

### Installs

Install rspec with:
```
$> gem install rspec
```  
Clone the source code:
```
%> git clone https://github.com/benpartington/bank_tech_test.git
```
### Testing  

To run a test:
```
%> rspec
```

### How to run the program!
Please navigate to lib directory follow the commands shown below:

![alt text](https://github.com/benpartington/bank_tech_test/blob/main/docs/irb_test.png)  

### Design Notes  

- I started by creating a bank_spec with the idea that I'd begin with a single (potentially large) class, and extract from it later during refactor
- I wrote my first test to be as simple as possible, returning a balance
- Next I added more complex tests for deposit and withdrawal, and implemented them
- Finally I wrote tests for printing a statement, a history of transactions



<br>

Makers Brief:
---
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
