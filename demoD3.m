close all; clc; clear;

load grupoDados3


for i = 1:columns(grupoTest)
  
  %Normalizado
  testGroup(:,i) = normal(grupoTest(:,i));
  trainGroup(:,i) = normal(grupoTrain(:,i));
endfor  
  
for k = 1:7
  %Q3.1 = Precisão 70% com K = 1
  rotuloPrevisto = meuKnn(grupoTrain, trainRots, grupoTest, k);
  estaCorreto = rotuloPrevisto == testRots;
  numCorreto = sum(estaCorreto);
  totalNum = length(testRots);
  precisao = numCorreto / totalNum;
  
  
  %Q3.2 = Precisão 92% com K = 7, aumentei o valor de K para que o algoritmo  
    %pegasse mais vizinhos para fazer a comparação e descobrir a classificação
  ['A precisão mais alta é de ' num2str(precisao) ', usando k = ' num2str(k)]
endfor

visualizaPontos(grupoTrain, trainRots, 1, 2);