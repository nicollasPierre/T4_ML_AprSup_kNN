close all; clc; clear;

load grupoDados1

precisaoMaisAlta = 0;
kPrecisao = 0;
for i = 1:rows(grupoTrain)
  rotuloPrevisto = meuKnn(grupoTrain(:,[1 3 4]), trainRots, grupoTest(:,[1 3 4]), i);
  estaCorreto = rotuloPrevisto == testRots;
  numCorreto = sum(estaCorreto);
  totalNum = length(testRots);
  precisao = numCorreto / totalNum;
  
  if(precisaoMaisAlta < precisao)
    precisaoMaisAlta = precisao;
    kPrecisao = i;
    rotuloPrevistoT = rotuloPrevisto;
  end
end

%Q1.1 = A precis�o mais alta com todas as caracteristicas � de 0.98, usando k = 3
['A precis�o mais alta � de ' num2str(precisaoMaisAlta) ', usando k = ' num2str(kPrecisao)]

%Q1.2 =
['N�o, pois ao fazer testes com as caracteristicas da coluna 1, 2 e 3 foi descoberto'
'que a precis�o usando k = 1 � igual �  96%, ou seja, a mesma precis�o usando'
'todas as caracteristicas com o k = 1']






visualizaPontos(grupoTrain, trainRots, 1, 2);