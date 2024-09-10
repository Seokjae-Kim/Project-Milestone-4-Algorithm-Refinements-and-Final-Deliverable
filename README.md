# Project-Milestone-4-Algorithm-Refinements-and-Final-Deliverable

NaturalCatalysts has asked our team to create an algorithm that will analyze enzyme data of their new ‘NextGen’ enzymes in order for them to be used in laundry detergents. We will analyze the enzyme data by finding the Vmax (Maximum reaction velocity) and Km (Michaelis constant) of the reaction of the enzyme with a substrate. We are constrained to writing an algorithm that can be implemented into any data processing application.
Our algorithm consists of a group of UDFs (user defined functions), the first of this finds the Vo (V naught, initial velocity of reaction) for PGO-X50 and each NextGen enzyme’s test then averages any duplicates of NextGen enzyme, the second UDF uses Lineweaver-Burk linearization of a Michaelis- Menten model to find Vmax and Km, and the third UDF is the main function that combines these subfunctions in order to find Vmax, Km, and Vos for each enzyme.
