%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LAB 2, Linear Discriminent Function Using Gradient Descent
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nicholas An 500750378
% Gurvir Parmar
% Vatsal Shreekant
% Attribute Information for IRIS data:
%    1. sepal length in cm
%    2. sepal width in cm
%    3. petal length in cm
%    4. petal width in cm

%    class label/numeric label: 
%       -- Iris Setosa / 1 
%       -- Iris Vericolour / 2
%       -- Iris Virginica / 3


%% this script will run lab1 experiments..
clear
load irisdata.mat

%% extract unique labels (class names)
labels = unique(irisdata_labels);

%% generate numeric labels
numericLabels = zeros(size(irisdata_features,1),1);
for i = 1:size(labels,1)
    numericLabels(find(strcmp(labels{i},irisdata_labels)),:)= i;
end
%% build training data set for two class comparison
% merge feature samples with numeric labels for two class comparison (Iris
% Setosa vs. Iris Veriscolour
trainingSet = [irisdata_features(1:150,:) numericLabels(1:150,1) ];

%% Question 1, 2: Refer to question1.m
% gradient decent
% Using 30% training and 70% testing for classification.
a = question1(trainingSet);
w0 = a(1);
w1 = a(2);
w2 = a(3);
x2 = 0:0.1:10;
x3 = boundary(w0,w1,w2,x2);
figure
plot(irisdata_features(find(numericLabels(:)==1),2),irisdata_features(find(numericLabels(:)==1),3),'rs'); 
title('Iris Setosa Vs Iris Vericolor 30% Training 70% Testing Samples x_2 vs x_3');
hold on;
plot(irisdata_features(find(numericLabels(:)==2),2),irisdata_features(find(numericLabels(:)==2),3),'k.');
plot(x2,x3);
legend("Iris Setosa","Iris Vericolor");
axis([1.5 5 0.25 6]);
%% Question 3: Refer to question3.m
% Using 70% training and 30% testing for classification.
a = question3(trainingSet);
w0 = a(1);
w1 = a(2);
w2 = a(3);
x2 = 0:0.1:10;
x3 = boundary(w0,w1,w2,x2);
 
% feature distribution of x2 vs x3 for two classes 
%70% training and 30% testing
 
figure
 
plot(irisdata_features(find(numericLabels(:)==1),2),irisdata_features(find(numericLabels(:)==1),3),'rs'); 
title('Setosa Vs Vericolor 70% Training 30% Testing Samples x_2 vs x_3');
hold on;
plot(irisdata_features(find(numericLabels(:)==2),2),irisdata_features(find(numericLabels(:)==2),3),'k.');
plot(x2,x3);
legend("Setosa","Vericolor");
axis([1.5 5 0.25 6]);
%% Question 4A: Refer to question4a.m
a = question4a(trainingSet);
w0 = a(1);
w1 = a(2);
w2 = a(3);
x2 = 0:0.1:10;
x3 = boundary(w0,w1,w2,x2);
 
figure
plot(irisdata_features(find(numericLabels(:)==2),2),irisdata_features(find(numericLabels(:)==1),2),'rs');
title('Vericolor Vs Virginia 30% Training 70% Testing Samples x_2 vs x_3');
hold on;
plot(irisdata_features(find(numericLabels(:)==3),2),irisdata_features(find(numericLabels(:)==2),3),'k.');
plot(x2,x3);
legend("Vericolor","Virginia");
axis([1.5 5 2 6]);
%% Question 4B: Refer to question4b.m
a = question4b(trainingSet);
w0 = a(1);
w1 = a(2);
w2 = a(3);
x2 = 0:0.1:10;
x3 = boundary(w0,w1,w2,x2);
 
figure
plot(irisdata_features(find(numericLabels(:)==2),2),irisdata_features(find(numericLabels(:)==1),2),'rs');
title('Vericolor Vs Virginia 70% Training 30% Testing Samples x_2 vs x_3');
hold on;
plot(irisdata_features(find(numericLabels(:)==3),2),irisdata_features(find(numericLabels(:)==2),3),'k.');
plot(x2,x3);
legend("Vericolor","Virginia");
axis([1.5 5 2 6]);
%% Question 5: Refer to question5.m
 
% Same initial weight vector a, different value learning rate #1.
a_0 = [0;0;1];
learningRate = 0.1;
a = question5(trainingSet,learningRate,a_0);
w0 = a(1);
w1 = a(2);
w2 = a(3);
x2 = 0:0.1:10;
x3 = boundary(w0,w1,w2,x2);
 
figure
plot(irisdata_features(find(numericLabels(:)==2),2),irisdata_features(find(numericLabels(:)==1),2),'rs');
title('Vericolor Vs Virginia 70% Training 30% Testing Samples Learning Rate 0.1 a = [0;0;1] x_2 vs x_3');
hold on;
plot(irisdata_features(find(numericLabels(:)==3),2),irisdata_features(find(numericLabels(:)==2),3),'k.');
plot(x2,x3);
legend("Vericolor","Virginia");
axis([1.5 5 2 6]);
% Same initial weight vector a, different value learning rate #2.
a_0 = [0;0;1];
learningRate = 1;
a = question5(trainingSet,learningRate,a_0);
w0 = a(1);
w1 = a(2);
w2 = a(3);
x2 = 0:0.1:10;
x3 = boundary(w0,w1,w2,x2);
 
figure
plot(irisdata_features(find(numericLabels(:)==2),2),irisdata_features(find(numericLabels(:)==1),2),'rs');
title('Vericolor Vs Virginia 70% Training 30% Testing Samples Learning Rate 1 a = [0;0;1] x_2 vs x_3');
hold on;
plot(irisdata_features(find(numericLabels(:)==3),2),irisdata_features(find(numericLabels(:)==2),3),'k.');
plot(x2,x3);
legend("Vericolor","Virginia");
axis([1.5 5 2 6]);
 
% different initial weight vector a, same value learning rate #1.
a_0 = [3;3;3];
learningRate = 0.01;
a = question5(trainingSet,learningRate,a_0);
w0 = a(1);
w1 = a(2);
w2 = a(3);
x2 = 0:0.1:10;
x3 = boundary(w0,w1,w2,x2);
 
figure
plot(irisdata_features(find(numericLabels(:)==2),2),irisdata_features(find(numericLabels(:)==1),2),'rs');
title('Vericolor Vs Virginia 70% Training 30% Testing Samples Learning Rate 0.01 a = [3;3;3] x_2 vs x_3');
hold on;
plot(irisdata_features(find(numericLabels(:)==3),2),irisdata_features(find(numericLabels(:)==2),3),'k.');
plot(x2,x3);
legend("Vericolor","Virginia");
axis([1.5 5 2 6]);
 
% different initial weight vector a, same value learning rate #2.
a_0 = [1;2;3];
learningRate =0.01;
a = question5(trainingSet,learningRate,a_0);
w0 = a(1);
w1 = a(2);
w2 = a(3);
x2 = 0:0.1:10;
x3 = boundary(w0,w1,w2,x2);
 
figure
plot(irisdata_features(find(numericLabels(:)==2),2),irisdata_features(find(numericLabels(:)==1),2),'rs');
title('Vericolor Vs Virginia 70% Training 30% Testing Samples Learning Rate 0.01 a = [1;2;3] x_2 vs x_3');
hold on;
plot(irisdata_features(find(numericLabels(:)==3),2),irisdata_features(find(numericLabels(:)==2),3),'k.');
plot(x2,x3);
legend("Vericolor","Virginia");
axis([1.5 5 2 6]);
 

