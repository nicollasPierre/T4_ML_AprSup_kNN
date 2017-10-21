close all; clc; clear;

load grupoDados1
rotuloPrevisto = meuKnn(grupoTrain, trainRots, grupoTest, 3);
estaCorreto = rotuloPrevisto == testRots;
numCorreto = sum(estaCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;


visualizaPontos(grupoTrain, trainRots, 1, 2);