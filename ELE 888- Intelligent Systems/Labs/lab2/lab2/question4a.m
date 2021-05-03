function [a,accuracy] = question4(trainingData)
% Return Value:
% a: weight vector produced from iterations where there are no more misclassifications.
% g: discriminent function coefficient vector. 
% eg. a = [a0 a1 a2]
% g = a0+ a1*x2 + a2*x3
% if g = 0 (@ boundary H)
% 0 = w0 + w1*x2 + w2*x3
% x3 = -w0/w2 - (w1/w2)*x2
 
% Input Variables:
% trainingData: Training data generated from runlab1.m script 
% Setting aside 30% of training data Using Data set A and B. 
% Each class has 50 samples therefore will set aside 15 
% samples (30% of 50 samples) for training purposes. The remaining 70% will
% be used for testing
% Learning rate=0.01
% initial value of a(0) = [0 0 1]
 
% Data set B using features x2 and x3
veriData = trainingData(find(trainingData(:,5) == 2),[2:3 5]);
trainVeri = veriData(1:15,:);
testVeri = veriData(16:50,:);
% Data set C using features x2 and x3
virginiaData = trainingData(find(trainingData(:,5) == 3),[2:3 5]);
trainVirginia = virginiaData(1:15,:);
testVirginia = virginiaData(16:50,:);
 
% Training Set using B and C.
trainBC = [trainVeri; trainVirginia];
% Make the rows horizontal. Then separating by class 2 then class 3.
trainBCTransposed = trainBC';
x2x3w2 = trainBCTransposed(1:2,find(trainBCTransposed(3,:)==2));
x2x3w3 = trainBCTransposed(1:2,find(trainBCTransposed(3,:)==3));
% Normalize the features x2x3 that belong to class 2 (w2) by negating them
x2x3w3 = x2x3w3*(-1);
 
% Start creation augmented matrix. first getting the two rows of sample
% data from features x2 and x3 for classes w1 and w2.
y = horzcat(x2x3w2,x2x3w3);
 
% add array of 1xn array of 1's for the samples to complete matrix y.
[rows col] = size(y);
rowOfOnesw2 = ones(1,col/2);
rowOfOnesw3 = ones(1,col/2)*(-1);
AugTrain = horzcat(rowOfOnesw2,rowOfOnesw3);
% complete the matrix y with the row of ones as the first row.
y = [AugTrain; y];
 
% Now begins the Gradient decent and subsequent iterations to find the
% weight vector that will return no negative misclassified values.
learning = 0.01;
a = [0; 0; 1];
 
% Beginning Gradient Decent
for i = 1:300
    g = (a')*y; 
% Find all column numbers that have misclassifications and use the same
% column numbers to find values of y to sum for gradient decent.
    misclassifiedCols = y(:,find(g(1,:)<=0));
    if misclassifiedCols 
        fprintf('Misclassification detected on iteration: %d\n',i)
        gradient = (sum(misclassifiedCols,2))*(-1);
        a = a - learning*gradient;
    else
        fprintf('No misclassifications detected on iteration: %d\n',i);
        break;
    end
end
 
%% Question 2: Use the 70% set (test samples) and the weight vector 
%  calculate the classification accuracy of the classifier.
testBC = [testVeri; testVirginia];
testBCTransposed = testBC';
x2x3_w2Test = testBCTransposed(1:2,find(testBCTransposed(3,:)==2));
[x2x3w2Rows x2x3w2Cols] = size(x2x3_w2Test);
rowOfOnesw1Test = ones(1,x2x3w2Cols);
 
% Normalize features for class 3 labeled values.
x2x3_w3Test = testBCTransposed(1:2,find(testBCTransposed(3,:)==3))*(-1);
[x2x3w3Rows x2x3w3Cols] = size(x2x3_w3Test);
rowOfOnesw2Test = ones(1,x2x3w3Cols)*(-1);
% Combining all augmented matrix y test rows together.
rowOfOnesTest = horzcat(rowOfOnesw1Test,rowOfOnesw2Test);
x2x3Test = horzcat(x2x3_w2Test,x2x3_w3Test);
% calculate discriminent values
y_test = [rowOfOnesTest; x2x3Test];
g_test = (a')*y_test;
[temp numOfMisclassified] = size(find(g_test(1,:)<=0));
accuracy = (1 - (numOfMisclassified/(x2x3w2Cols+x2x3w3Cols)) )*100
percent = '%';
fprintf('Accuracy: %2.3f%s \n',accuracy,percent);
 
 
%disp('done')
