# A template for simple Ruby projects

Let’s imagine a health-based SaaS app with a weight tracking feature. 
Each week the user uploads their weight, to be presented with the change in weight relative to last week.

Whatever handles the user’s request will need to speak to some sort of database twice: 
once to get the user’s old weight, and once to persist their new one.

We encapsulate the responsibility of talking to the database in some DAO object, which we can mock out.
Getting the user's weight is a use case for a stub.
Verifying that our business logic instructs the DAO to persist the new weight is a use case for a mock.