% res_cifar_10 demonstrates the training of a residual
% network on the CIFAR-10 dataset

% Select the CIFAR-10 dataset
opts.Nclass = 10;

% Select GPU
opts.GPU = [];

% Use parameters described in original paper
opts.modelType = 'res';
opts.depth = 164;
opts.batchSize = 128;
opts.momentum = 0.95;
opts.weightDecay = 0.0001;
opts.learningRate = [0.01*ones(1,3) ...
                0.1*ones(1,80) ...
                0.01*ones(1,10) ...
                0.001*ones(1,30)];

% Train
cnn_cifar(opts);