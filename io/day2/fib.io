fib := method(n,

	if( ((n==1) or (n==2)), return(1););

	n1 := 1;
	n2 := 1;
	
	for(i,3,n,1,
		currentN := n1 + n2
		n2 := n1
		n1 := currentN
//		("curr:" .. currentN .. " n1: " .. n1 .. " n2: " .. n2 ) println
	);
	return( currentN );
);

fib(1) println;
fib(2) println;
fib(3) println;
fib(4) println;
fib(5) println;

