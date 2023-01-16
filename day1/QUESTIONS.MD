## Question 1: 
How much is the current memory capacity of a canister?

### Answer:
The storage capacity of a canister has 450GB in maximum (Subnets) (may change that, after more research)

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
