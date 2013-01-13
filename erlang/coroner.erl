-module(coroner).
-export([loop/0]).

loop() -> 
	process_flag(trap_exit, true),
	receive 
		{monitor, Process} -> 
			io:format("Monitoring Process~n"), loop();
		_ -> io:format("click~n"), loop()
	end.
