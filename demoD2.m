close all; clc; clear;


function retorno = pegaCaracteristicas(indicesCaracteristicas, dados) 
  retorno = dados(:,indicesCaracteristicas); 
end



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


indicesUsados = [1:13];
testGroup = pegaCaracteristicas(indicesUsados, grupoTest);


trainGroup= pegaCaracteristicas(indicesUsados, grupoTrain);

for i = 1:columns(testGroup)
  %dadoMax = max(grupoTrain(:,i));
  %dadoMin = min(grupoTrain(:,i));
  
  %Normalizado
  testGroup(:,i) = normal(testGroup(:,i));
  trainGroup(:,i) = normal(grupoTrain(:,i));
endfor

 
%for i = 4:4%rows(grupoTrain)
  %Q2.2 = Precisão de 98.333%, Normalizei os dados
  rotuloPrevisto = meuKnn(trainGroup, trainRots, testGroup, 1);
  estaCorreto = rotuloPrevisto == testRots;
  numCorreto = sum(estaCorreto);
  totalNum = length(testRots);
  precisao = numCorreto / totalNum;  
['A precisão é de ' num2str(precisao) ', usando k = ' num2str(1)]

  %Q2.1 = Precisão de 68.333%
  rotuloPrevisto = meuKnn(grupoTrain, trainRots, grupoTest, 1);
  estaCorreto = rotuloPrevisto == testRots;
  numCorreto = sum(estaCorreto);
  totalNum = length(testRots);
  precisao = numCorreto / totalNum;
['A precisão mais alta é de ' num2str(precisao) ', usando k = ' num2str(1)]  
  
  %if(precisaoMaisAlta < precisao)
  %  precisaoMaisAlta = precisao;
  %  kPrecisao = i;
    
  %  rotuloPrevistoT = rotuloPrevisto;
  %end
%end

%Q2.1 = 


%Q1.2 = 



