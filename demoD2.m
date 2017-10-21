close all; clc; clear;

load grupoDados2

precisaoMaisAlta = 0;
kPrecisao = 0;
%1 10 11 12  -  95%
%1 2 10 11 12  -  95%
%1 2 6 10 11 12  -  96.667%
%1 6 10 11 12  -  96.667%
%1 6 7 10 11 12  -  96.667%
%1 6 8 10 11 12  -  96.667%
%1 6 7 8 10 11 12  -  96.667%
%1 6 7 8 10 11 12 13  -  80%
%1 6 7 8 10 11 12 4  -  95%
%1 6 7 8 10 11 12 5  -  96.667%
%1 6 7 8 10 11 12 9  -  96.667%
%6 7 9 12 - 86%
testGroup = zeros(60,6);
testGroup(:,1) = grupoTest(:,2);
%testGroup(:,2) = grupoTest(:,2);
testGroup(:,2) = grupoTest(:,6);
testGroup(:,3) = grupoTest(:,10); 
testGroup(:,4) = grupoTest(:,11); 
testGroup(:,5) = grupoTest(:,6); 
testGroup(:,6) = grupoTest(:,9);

trainGroup= zeros(118,6);
trainGroup(:,1) = grupoTrain(:,2);
%trainGroup(:,2) = grupoTrain(:,2);
trainGroup(:,2) = grupoTrain(:,6);
trainGroup(:,3) = grupoTrain(:,10);
trainGroup(:,4) = grupoTrain(:,11); 
trainGroup(:,5) = grupoTrain(:,6); 
trainGroup(:,6) = grupoTrain(:,9);
 
for i = 1:rows(grupoTrain)
  
  rotuloPrevisto = meuKnn(trainGroup, trainRots, testGroup, i);
  estaCorreto = rotuloPrevisto == testRots;
  numCorreto = sum(estaCorreto);
  totalNum = length(testRots);
  precisao = numCorreto / totalNum;
  
  if(precisaoMaisAlta < precisao)
    precisaoMaisAlta = precisao;
    kPrecisao = i;
  end
end

%Q2.1 = 
['A precisão mais alta é de ' num2str(precisaoMaisAlta) ', usando k = ' num2str(kPrecisao)]

%Q1.2 = 










