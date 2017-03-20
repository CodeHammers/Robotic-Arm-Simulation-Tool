fileID = fopen('input.txt','r');
formatSpec = '%f';
input = fscanf(fileID,formatSpec);
InverseKinematic(input(7),input(8),input(9),input(10),input(11),input(12));
printf("\n");
#printf("program passed , press anykey to continue to Plotting");
#pause;
#PlotWorkingSpace(input(1),input(2),input(3),input(4),input(5),input(6));
