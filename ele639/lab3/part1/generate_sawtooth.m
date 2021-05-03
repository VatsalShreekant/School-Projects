%ELE639 Lab 3-Generate "sawtooth" input for the servo % 30 second sample time(note the servos sample at 1/150th of a second):
t = 0:1/150:30;
% Generate 5Hz Sawtooth 0 to 90 degrees for 30 seconds:
Data1 = sawtooth(2*pi*(1/5)*t)*45+45;

Data2 = sawtooth(2*pi*(1/5)*t)*90;

Servodata1 = Data1';
Servodata2 = Data2';

save('Sawtooth1.dat','Servodata1','-ascii');
save('Sawtooth2.dat','Servodata2','-ascii');
