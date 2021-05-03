function [a,accuracy] = question3(trainingData)
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
% Using Data set A and B, setting aside 70% of training data
% Each class has 50 samples therefore will set aside 35 
% samples (70% of 50 samples) for training purposes. Remaining 30% will
% be used for testing. 
% Learning rate=0.01
% initial value of a(0) = [0 0 1]
 
% Data set A using features x2 and x3
setosa_Data = trainingData(find(trainingData(:,5) == 1),[2:3 5]);
setosa_train = setosa_Data(1:35,:);
setosa_test = setosa_Data(36:50,:);
% Data set B using features x2 and x3
vericolor_Data = trainingData(find(trainingData(:,5) == 2),[2:3 5]);
vericolor_train = vericolor_Data(1:35,:);
vericolor_test = vericolor_Data(36:50,:);
 
 
% Training Set using A and B.
trainAB = [setosa_train; vericolor_train];
% Make the rows horizontal. Then separating by class 1 then class 2.
train_ABTransposed = trainAB';
x2x3_w1 = train_ABTransposed(1:2,find(train_ABTransposed(3,:)==1));
x2x3_w2 = train_ABTransposed(1:2,find(train_ABTransposed(3,:)==2));
% Normalize the features x2x3 that belong to class 2 (w2) by negating them
x2x3_w2 = x2x3_w2*(-1);
 
% Start creation of augmented matrix. first, get the two rows of sample
% data from features x2 and x3 for classes w1 and w2.
y = horzcat(x2x3_w1,x2x3_w2);
 
% add array of 1xn array of 1's for the samples to complete matrix y.
[rows col] = size(y);
rowOfOnesw1 = ones(1,col/2);
rowOfOnesw2 = ones(1,col/2)*(-1);
AugTrain = horzcat(rowOfOnesw1,rowOfOnesw2);
% complete the matrix y with the row of ones as the first row.
y = [AugTrain; y];
 
% Now begins the Gradient decent and subsequent iterations to find the
% weight vector that will return no negative misclassified values.
% Initializing weight factor a = [0 0 1] learning rate of 0.01.
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
%% Q2(Modified for Q3): Use the 30% set (test samples) and the weight vector 
% computed in the previous step to calculate the classification accuracy 
% of the classifier.
testAB = [setosa_test; vericolor_test];
testABTransposed = testAB';
x2x3_w1Test = testABTransposed(1:2,find(testABTransposed(3,:)==1));
[x2x3w1Rows x2x3w1Cols] = size(x2x3_w1Test);
w1Test = ones(1,x2x3w1Cols);
 
% Normalize features for class 2 labeled values.
x2x3_w2Test = testABTransposed(1:2,find(testABTransposed(3,:)==2))*(-1);
[x2x3w2Rows x2x3w2Cols] = size(x2x3_w2Test);
w2Test = ones(1,x2x3w2Cols)*(-1);
% Combining all augmented matrix y test rows together.
rowOfOnesTest = horzcat(w1Test,w2Test);
x2x3Test = horzcat(x2x3_w1Test,x2x3_w2Test);
% calculate discriminent values
y_test = [rowOfOnesTest; x2x3Test];
g_test = (a')*y_test;
[temp numOfMisclassified] = size(find(g_test(1,:)<=0));
accuracy = (1 - (numOfMisclassified/(x2x3w1Cols+x2x3w2Cols)) )*100
percent = '%';
fprintf('Accuracy: %2.3f%s \n',accuracy,percent);
% disp('Finished')

