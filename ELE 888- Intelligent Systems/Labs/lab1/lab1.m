%% ELE 888: LAB 1: Bayesian Decision Theory

%% Student IDs:
% Gurvir Parmar, 500765786

% Nicholas An, 

% Vatsal Shreekant, 500771363

%% Part 1
%% Questions 1 & 2: 
function [posteriors_x,g_x,cp11,cp12]=lab1(x,trainingData,featureInput)

% x = individual sample to be tested (to identify its probable class label)
% featureOfInterest = index of relevant feature (column) in trainingData 
% Train_Data = Matrix containing the training samples and numeric class labels
% posterior_x  = Posterior probabilities
% g_x = value of the discriminant function

D=trainingData;
%D=trainingSet; 
%x=3.3
% D is MxN (M samples, N columns = N-1 features + 1 label)
[M,N]=size(D);    
 
%1 => sepal length, 2 => sepal width

if featureInput == 1
    disp('Discriminating feature: Sepal Length');
    f=D(:,1);  % feature samples
else 
    disp('Discriminating feature: Sepal Width');
    f=D(:,2);  % feature samples
end

la=D(:,N); % class labels


%% Prior Probabilities

% Hint: use the commands "find" and "length"

disp('Prior probabilities:');
Pr1 = length(find(la==1))/length(la);
Pr2 = length(find(la==2))/length(la);

%% Class-conditional probabilities

disp('Mean & Std for class 1 & 2');
m11 =  mean(f(1:50)); % mean of the class conditional density p(x/w1)
std11 = std(f(1:50)); % Standard deviation of the class conditional density p(x/w1)


m12 = mean(f(51:100));% mean of the class conditional density p(x/w2)
std12= std(f(51:100)); % Standard deviation of the class conditional density p(x/w2)


disp(['Conditional probabilities for x=' num2str(x)]);
%cp11= log(Pr1) - log(std11) - 0.5*((x-m11)^2)/std11^2; % use the above mean, std and the test feature to calculate p(x/w1)
cp11= (1/((sqrt(2*pi)*std11)))*exp(-0.5*((x-m11)^2)/std11^2);
cp12= (1/((sqrt(2*pi)*std12)))*exp(-0.5*((x-m12)^2)/std12^2); % use the above mean, std and the test feature to calculate p(x/w2)

%% Compute the posterior probabilities

disp('Posterior prob. for the test feature');

px = (cp11*Pr1)+(cp12*Pr2);

pos11= (cp11*Pr1)/px;  % p(w1/x) for the given test feature value

pos12= (cp12*Pr2)/px; % p(w2/x) for the given test feature value

posteriors_x= [pos11 pos12];

%% Discriminant function for min error rate classifier

g_x= pos11 - pos12; % compute the g(x) for min err rate classifier.

if g_x > 0
    display('Class: Setosa');
else 
    display('Class: Versicolor');
end    

    


