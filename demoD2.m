close all; clc; clear;

load grupoDados2

precisaoMaisAlta = 0;
kPrecisao = 0;
for i = 1:rows(grupoTrain)
  rotuloPrevisto = meuKnn(grupoTrain(:,5:7), trainRots, grupoTest(:,5:7), i);
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






visualizaPontos(grupoTrain, trainRots, 5, 8);
visualizaPontos(grupoTrain, trainRots, 1, 3);
visualizaPontos(grupoTrain, trainRots, 1, 4);
visualizaPontos(grupoTrain, trainRots, 1, 5);
visualizaPontos(grupoTrain, trainRots, 1, 1);