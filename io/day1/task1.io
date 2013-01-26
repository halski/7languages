Animal := Object clone;
Animal age ::= 0;
Animal name ::= "";
Animal init := method(name, age, 
	self setAge(age);
	self setName(name);
	);

Dog := Animal clone;
Dog breed ::= "";
Dog print := method(
	breed println;
	age println;
	name println;
);

rottweiler := Dog clone;
rottweiler setBreed("Rottweiler");
rottweiler setAge(4);
rottweiler setName("Saba");

rottweiler print;

//to run do 'io task1.io'