## Question 1: 
How much is the current memory capacity of a canister?

### Answer:
It may depends on the view what a canister could contain if the capacity of a subnet is meant. The stable memory capacity of a canister is 48 GB and a subnet can reach 450 GB for now. 

## Question 2: 
What is the issue with the following code sample?

### Answer:
The Actor should has a 'var' counter instead of a 'let' cause let in Motoko is immutable. Using a query function validates that the var now increments the counter value correctly. 

## Question 3: 
What is the issue with the following code sample?

### Answer:
the var message should contain a String value like "Hello World" (double ticks are important!). Also the first public function should not be an query function. 'query' should be removed to overwrite the initial 'message', if it's not the case we cant overwrite the message and still see the initial message in the second query function.

## Question 4:
False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.

### Answer:
False
