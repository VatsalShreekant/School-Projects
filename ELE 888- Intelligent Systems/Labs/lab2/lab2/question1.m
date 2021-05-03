function [a,accuracy] = question1(trainingData)
% Return Value:
% a: weight vector produced from iterations where there are no more misclassifications.
% accuracy: accuracy percentage for the training data.
% Input Variables:
% trainingData: Training data generated from runlab1.m script 
% class1: class name to set for training data.
% class2: same as class1 definition.
% Using Data set A and B, will be setting aside 30% of training data 
% From the training set, each class has 50 samples
% 15 samples (30% of 50 samples) used for training purposes. 
% Reamining 70% used for testing. 
% Learning rate= 0.01 
% a(0) = [0 0 1]
 
% Data set A using features x2 and x3
setosa_Data = trainingData(find(trainingData(:,5) == 1),[2:3 5]);
setosa_trainData = setosa_Data(1:15,:);
setosa_testData = setosa_Data(16:50,:);
% Data set B using features x2 and x3
vericolor_Data = trainingData(find(trainingData(:,5) == 2),[2:3 5]);
vericolor_trainData = vericolor_Data(1:15,:);
vericolor_testData = vericolor_Data(16:50,:);
 
% Training Set using A and B.
train_AB = [setosa_trainData; vericolor_trainData];
% Make the rows horizontal. Then separating by class 1 then class 2.
trainAB_Transposed = train_AB';
x2x3_w1 = trainAB_Transposed(1:2,find(trainAB_Transposed(3,:)==1));
x2x3_w2 = trainAB_Transposed(1:2,find(trainAB_Transposed(3,:)==2));
% Normalize the features x2x3 which belong to class 2 (w2) 
% by making them negative.
x2x3_w2 = x2x3_w2*(-1);
% Start creating augmented matrix. first, getting the two rows of sample
% data from features x2 and x3 for classes w1 and w2.
y = horzcat(x2x3_w1,x2x3_w2);
 
%Then,add array of 1xn array of 1's for the samples to complete matrix y.
[rows col] = size(y);
rowOfOnes_w1 = ones(1,col/2);
rowOfOnes_w2 = ones(1,col/2)*(-1);
AugTrain = horzcat(rowOfOnes_w1,rowOfOnes_w2);
% complete the matrix y with the row of ones as the first row.
y = [AugTrain; y];
 
% Now begins the Gradient decent and subsequent iterations to determine
% weight vector that will return no negative misclassified values.
% Initialize weight factor a = [0 0 1] with learning rate of 0.01.
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
% Calculate the classification accuracy of the classifier.
test_AB = [setosa_testData; vericolor_testData];
test_ABTransposed = test_AB';
w1Test = test_ABTransposed(1:2,find(test_ABTransposed(3,:)==1));
[x2x3w1Rows x2x3w1Cols] = size(w1Test);
rowOfOnesw1Test = ones(1,x2x3w1Cols);
 
% Normalize features for class 2 labeled values.
w2Test = test_ABTransposed(1:2,find(test_ABTransposed(3,:)==2))*(-1);
[x2x3w2Rows x2x3w2Cols] = size(w2Test);
rowOfOnesw2Test = ones(1,x2x3w2Cols)*(-1);
% Combining all augmented matrix y test rows together.
rowOfOnesTest = horzcat(rowOfOnesw1Test,rowOfOnesw2Test);
x2x3Test = horzcat(w1Test,w2Test);
% calculate discriminent values
y_test = [rowOfOnesTest; x2x3Test];
g_test = (a')*y_test;
[temp numOfMisclassified] = size(find(g_test(1,:)<=0));
accuracy = (1 - (numOfMisclassified/(x2x3w1Cols+x2x3w2Cols)) )*100
percent = '%';
fprintf('Accuracy: %2.3f%s \n',accuracy,percent);
 
 
% disp('Finished')


