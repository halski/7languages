foo := Object clone;
 
foo greet := method( name,
return( "Well hello there : " .. name .. " ! ");
);

foo perform( "greet", "Kuba" ) println;
