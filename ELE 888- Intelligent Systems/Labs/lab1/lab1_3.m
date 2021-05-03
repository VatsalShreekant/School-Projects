%% Question 3:
%feature 1: sepal length, feature 2: sepal width
feature = 2; 
x=[3.3, 4.4, 5.0, 5.7, 6.3];

for i = 1 : length(x)
    [posteriors_x,g_x]=lab1(x(i),trainingSet,feature)  
end
%% Question 4:

%implement count to calculate threshold

countSertosa = trainingSet(1:50,feature);
countVersicolour = trainingSet(51:100,feature);

% comparing count vs feature for Sertosa & Versicolor

figure;
histogram(countSertosa,unique(countSertosa))
hold on;
histogram(countVersicolour,unique(countVersicolour))
if feature == 1
    featureName = 'Sepal Length';
else
    featureName = 'Sepal Width';
end 
title(['Distribution of Versicolour and Sertosa for ' , featureName]);
xlabel(featureName)
ylabel('Count')
legend('Sertosa','Versicolour')


% using conditional probabilty to find threshold

%Setosa
sertosaMn = mean(irisdata_features(1:50,feature));
sertosaStd = std(irisdata_features(1:50,feature));
sertosaMax = max(irisdata_features(1:50,feature));

%Versicolour
versicolourMn = mean(irisdata_features(51:100,feature));
versicolourStd = std(irisdata_features(51:100,feature));
versicolourMax = max(irisdata_features(51:100,feature));

maxWidth = max(versicolourMax, sertosaMax);
x = [0:0.01:maxWidth];
%conditional probability distributions
sertosaCp = normpdf(x,sertosaMn,sertosaStd);
versicolourCp = normpdf(x,versicolourMn,versicolourStd);

figure;
hold on;
plot(x,sertosaCp,'b',x,versicolourCp,'r');
if feature == 1
    featureName = 'Sepal Length';
else
    featureName = 'Sepal Width';
end    
title(['Conditional Probabilty for ', featureName, ' for Versicolour vs. Sertosa']);
xlabel(featureName);
ylabel('Conditional Probabililty');
legend('Sertosa','Versicolour'); 



    
