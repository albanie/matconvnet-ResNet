% res_cifar_100 demonstrates the training of a residual
% network on the CIFAR-100 dataset

% Select the CIFAR-100 dataset
opts.Nclass = 100;

% Select GPU
opts.GPU = 1;

% Use parameters described in original paper
opts.modelType = 'res';
opts.depth = 164;
opts.batchSize = 128;
opts.momentum = 0.95;
opts.weightDecay = 0.0005;
opts.learningRate = [0.01*ones(1,3) ...
    0.1*ones(1,70) ...
    0.01*ones(1,20) ...
    0.001*ones(1,30)];

% Train
cnn_cifar(opts);