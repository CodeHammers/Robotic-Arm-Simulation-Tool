fileID = fopen('input.txt','r');
formatSpec = '%f';
input = fscanf(fileID,formatSpec);

disp('\n');
disp('program passed , press anykey to continue to Calculating InverseKinematics');
pause;
disp('\n');
InverseKinematic(input(10),input(11),input(12),input(13),input(14),input(15));
disp('\n');


disp('program passed , press anykey to continue to Calculating Max Torque');
pause;
disp('\n');
GetMaxTorque(input(16),input(17),input(18),input(19),input(20),input(21),input(22),input(23),input(24),[input(25) input(26) input(27)]')
disp('\n');

disp('program passed , press anykey to continue to Plotting');
pause;
disp('\n');
PlotWorkingSpace(input(1),input(2),input(3),input(4),input(5),input(6),input(7),input(8),input(9));