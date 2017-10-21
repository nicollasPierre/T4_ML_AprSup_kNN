close all; clc; clear;

load grupoDados1

precisaoMaisAlta = 0;
kPrecisao = 0;
for i = 1:rows(grupoTrain)
  rotuloPrevisto = meuKnn(grupoTrain, trainRots, grupoTest, i);
  estaCorreto = rotuloPrevisto == testRots;
  numCorreto = sum(estaCorreto);
  totalNum = length(testRots);
  precisao = numCorreto / totalNum;
  
  if(precisaoMaisAlta < precisao)
    precisaoMaisAlta = precisao;
    kPrecisao = i;
  end
end

%Q1.1 = A preciso mais alta  de 0.98, usando k = 3
['A precisão mais alta é de ' num2str(precisaoMaisAlta) ', usando k = ' num2str(kPrecisao)]

%Q1.2 = SIM ---- revisar com a professora como fazer essa questão







visualizaPontos(grupoTrain, trainRots, 1, 2);