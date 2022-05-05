f:{i:0;
	if[L[y-1][x-1]~"0";i:i+1;];
	if[L[y-1][x]~"0";i:i+1;];
	if[L[y-1][x+1]~"0";i:i+1;];
	if[L[y][x-1]~"0";i:i+1;];
	if[L[y][x+1]~"0";i:i+1;];
	if[L[y+1][x-1]~"0";i:i+1;];
	if[L[y+1][x]~"0";i:i+1;];
	if[L[y+1][x+1]~"0";i:i+1];
	if[not i in (2;3);`P set .[P;(y;x);:;"."];];
	if[i~3;`P set .[P;(y;x);:;"0"];];
	}

f1:{`P set L;
	(f each til count L[0]) each til count L;
	`L set P;
	show L;
	show "";
	}


L:read0 `:file.txt
//L:read0 `:fileTwo.txt

\c 1000 1000

f1 each til 1000;
