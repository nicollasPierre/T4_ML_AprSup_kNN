function rotuloPrevisto = meuKnn(dadosTrain, rotuloTrain, dadosTeste, k)
dist = zeros(rows(dadosTeste),rows(dadosTrain));
distOrdenada = zeros(rows(dadosTeste),rows(dadosTrain));
indDistOrdenada = zeros(rows(dadosTeste),rows(dadosTrain));
%Para cada exemplo de teste
  for teste = 1:rows(dadosTeste)
    
    for treino = 1:rows(dadosTrain)
      % Calcule a dist�ncia entre o exemplo de teste e os dados de treinamento
      d = distancia(dadosTeste(teste,:), dadosTrain(treino,:));
      dist(teste,treino) = d;
    end
    % Ordene as dist�ncias. A ordem iX de cada elemento ordenado � importante:
    [temp ind] = sort(dist(teste,:));% [distOrdenada ind] = sort(...);
    distOrdenada(teste,:) = temp;
    indDistOrdenada(teste,:) = ind; 
  end
  
    
    
  % O r�tulo previsto corresponde ao r�tulo do exemplo mais pr�ximo (iX(1))
  rotulos = zeros(rows(dist),1);
  for i = 1:rows(dist)
    qtdRotulos = zeros(3,1);%Quantidade de rotulos dentro do limite K 
    %(qtdRotulos(1) cont�m X rotulos 1, qtdRotulos(2) cont�m Y rotulos 2...)
    for j = 1:k
      qtdRotulos(rotuloTrain(indDistOrdenada(i,j)))++;
    end
    
    %Verifica qual tem mais rotulos
    rotuloMaisProximo =  1;
    for z = 2:3
      if(qtdRotulos(rotuloMaisProximo) < qtdRotulos(z))
        rotuloMaisProximo = z;
      endif
    end
    
    rotulos(i) = rotuloMaisProximo;
  end
  
  rotuloPrevisto = rotulos;
end