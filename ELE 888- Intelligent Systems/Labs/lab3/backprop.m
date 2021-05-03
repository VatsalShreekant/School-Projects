function [wk,wj1,wj2,zk_results] = backprop(patterns, targets, eta, theta)
%% Init network topology & params
% network = MNN model, with trained weights etc:
nI = 2;  %network.nI = number input nodes
nO = 1; %network.nO = number output nodes
input_size = size(patterns); % patterns = training set / test set of input patterns
num_of_train_sample = input_size(2); % number of training samples
nH = 2; %network.nH = number hidden nodes
zk_results = zeros(1,input_size(2));

%% setup network weights and init
w_0 = [-0.5 0.3 0.1]; % network.WO = hidden to output weights (includes bias as nO+1 term); hidden to output weights [-1/sqrt(nH) < Wkj < +1/sqrt(nH)]
hidden_weights_1 = [0 0.5 0.1]; % network.WH = input to hidden weights (includes bias as nH+1 term)
hidden_weights_2 = [0.65 -0.7 -0.9]; %input to hidden weights  [-1/sqrt(nI) < Wkj < +1/sqrt(nI)]
d_w_0_kj = zeros(1,3);
d_hidden_weights_1_i = zeros(1,3);
d_hidden_weights_2_i = zeros(1,3);
Jp = 0; %Cost value per training pair
J = 0; %Final cost value
for epoch = 1:100001
    %Forward propagation     
    z = 0;
    for m = 1:num_of_train_sample
        % 1. get next input & target vector
        x1 = patterns(1,:); %
        x2 = patterns(2,:); %
        tk = targets(m); % targets = training /test set of output patterns
        % 2. forward propagate input to give output zk
       
        net_j_layer_1 = hidden_weights_1(1);
        net_j_layer_1 = net_j_layer_1 + hidden_weights_1(2)*x1(m);
        net_j_layer_1 = net_j_layer_1 + hidden_weights_1(3)*x2(m);
        net_j_layer_2 = hidden_weights_2(1);
        net_j_layer_2 = net_j_layer_2 + hidden_weights_2(2)*x1(m);
        net_j_layer_2 = net_j_layer_2 + hidden_weights_2(3)*x2(m);
        
        y1 = tanh(net_j_layer_1);
        y2 = tanh(net_j_layer_2);
        
        dy1 = sech(net_j_layer_1)^2;
        dy2 = sech(net_j_layer_2)^2;
        
        yj = [1;y1;y2]; %augmenting hidden output with bias term of 1.
        net_k_layer = w_0*yj; %using yj and weight of hidden to output.
       
        zk = tanh(net_k_layer); 
        zk_results(m) = zk;
        % 3. Backward propagate and find sensitivity of k & change in WOkj  
        delta_k = (tk - zk); % ".*" does for each k
        delta_k =  delta_k *(sech(net_k_layer)^2);
        d_w_0_kj = d_w_0_kj; % eta = learning rate
        d_w_0_kj = d_w_0_kj + eta*delta_k*yj';

        
        % 4. find sensitivity of j & changes in Wij       
        delta_j = [delta_k*w_0(2)*dy1; delta_k*w_0(3)*dy2];
        d_hidden_weights_1_i = d_hidden_weights_1_i+ eta*delta_j(1)* [1 x1(m) x2(m)];

        d_hidden_weights_2_i = d_hidden_weights_2_i + eta*delta_j(2)* [1 x1(m) x2(m)];
      
        %evaluating error criterion.
        Jp = Jp + (1/2)*(tk - zk)^2;
    end
    w_0 = w_0 + d_w_0_kj;
    wk = w_0;
    hidden_weights_1 = hidden_weights_1 + d_hidden_weights_1_i;
    wj1 = hidden_weights_1;
    hidden_weights_2 = hidden_weights_2 + d_hidden_weights_2_i;
    wj2 = hidden_weights_2;
    
    deltaJ = abs(J-Jp); %
    iterations(epoch) = deltaJ;
    J = Jp;
    
    if deltaJ<= theta % theta = threshold for stop criterion
        break;
    end
 end
disp(['Number of Epoch Iterations: ' , num2str(epoch)]);
disp(' ');

disp('Weight Vectors Calculated');
disp(['wkj =  ' , num2str(w_0(1))]);
disp(['       ' , num2str(w_0(2))]);
disp(['       ' , num2str(w_0(3))]);
disp(' ');
disp(['wj1 =  ' , num2str(hidden_weights_1(1))]);
disp(['       ' , num2str(hidden_weights_1(2))]);
disp(['       ' , num2str(hidden_weights_1(3))]);
disp(' ');
disp(['wj2 =  ' , num2str(hidden_weights_2(1))]);
disp(['       ' , num2str(hidden_weights_2(2))]);
disp(['       ' , num2str(hidden_weights_2(3))]);

figure;
costX = (1:epoch);
iterationLearningGraph = iterations(1:epoch);
plot(costX, iterationLearningGraph);
title('Learning Curve');
xlabel('Epoch Iteration');
ylabel('Error Delta');

