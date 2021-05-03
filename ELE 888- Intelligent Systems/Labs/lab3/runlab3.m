%% Lab 3: Multilayer Neural Networks
% Students: 
% Nicholas An 500750378, 
% Gurvir Parmar 500765786, 
% Vatsal Shreekant 500771363

% Assumption: one output neuron/class

clc;
close all
clear; 

%% Part A: XOR data
x1 = [-1 -1 1 1];%XOR
x2 = [-1 1 -1 1];%~XOR
targets = [-1 1 1 -1]; % 
patterns = vertcat(x1,x2); %
eta = 0.1;
theta = 0.001;

[wk,wj1,wj2,zOut]= backprop(patterns,targets,eta,theta);
error = sum((targets - zOut))/4;
accuracy_percent = (1 - error)*100;
disp(['Accuracy of XOR problem = %' , num2str(accuracy_percent)]);
disp(zOut);

%% Part B: Wine Data Test
load wineData.csv;
% Wine data for Class 1
wine_class1 = wineData(wineData(:, 1) == 1,:);

% Wine data for Class 3
wine_class3 = wineData(wineData(:, 1) == 3,:);

% Parse data samples by features and normalize by multiplying by -1 for class 3.
wine_class1 = wine_class1(:, 1:3);
wine_class3 = wine_class3(:, 1:3).*-1;
wine_class3(find(wine_class3(:, 1) == -3), 1) = -1; %replace all class labels of -3 with -1 for target.

% Set up training samples
wineTrainingTargetClasses = [wine_class1(1:20,1); wine_class3(1:20,1)]';
wineTrainingSample1 = [wine_class1(1:20,2); wine_class3(1:20,2)]';
wineTrainingSample2 = [wine_class1(1:20,3); wine_class3(1:20,3)]';
wineTrainingPattern = [wineTrainingSample1; wineTrainingSample2];

[winewkTrain winewj1Train winewj2Train wineZOutTrain] = backprop(wineTrainingPattern,wineTrainingTargetClasses,eta,theta);

numOfOutputs = size(wineZOutTrain);
error = abs(wineTrainingTargetClasses - wineZOutTrain);
error_total = sum(error)/numOfOutputs(2);
accuracy = (1 - error_total)*100;
disp(['Accuracy of Wine Training= %' , num2str(accuracy)]);

wineTestTargetClasses = [wine_class1(21:48,1); wine_class3(21:48,1)]';
wineTestSample1 = [wine_class1(21:48,2); wine_class3(21:48,2)]';
wineTestSample2 = [wine_class1(21:48,3); wine_class3(21:48,3)]';
wineTestPattern = [wineTestSample1; wineTestSample2];

[winewkTest winewj1Test winewj2Test wineZOutTest] = backprop(wineTestPattern,wineTestTargetClasses,eta,theta);

% Accuracy Calculation

numOfOutputs = size(wineZOutTest);
error = abs(wineTestTargetClasses - wineZOutTest);
error_total = sum(error)/numOfOutputs(2);
accuracy = (1 - error_total)*100;
disp(['Accuracy of Wine Testing= %' , num2str(accuracy)]);