function rotuloPrevisto = meuKnn(dadosTrain, rotuloTrain, dadosTeste, k)
dist = zeros(rows(dadosTeste),rows(dadosTrain));
distOrdenada = zeros(rows(dadosTeste),rows(dadosTrain));
indDistOrdenada = zeros(rows(dadosTeste),rows(dadosTrain));
%Para cada exemplo de teste
  for teste = 1:rows(dadosTeste)
    
    for treino = 1:rows(dadosTrain)
      % Calcule a distância entre o exemplo de teste e os dados de treinamento
      d = distancia(dadosTeste(teste,:), dadosTrain(treino,:));
      dist(teste,treino) = d;
    end
    % Ordene as distâncias. A ordem iX de cada elemento ordenado é importante:
    [temp ind] = sort(dist(teste,:));
    
    rotuloPrevisto(teste,1) = mode(rotuloTrain(ind(1:k)))';
    
    % [distOrdenada ind] = sort(...);
  end
end