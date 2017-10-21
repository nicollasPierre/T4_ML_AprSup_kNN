function rotuloPrevisto = meuKnn(dadosTrain, rotuloTrain, dadosTeste, k)
% Para cada exemplo de tes

% Calcule a distância entre o exemplo de teste e os dados de treinamento
% Ordene as distâncias. A ordem iX de cada elemento ordenado é importante:
% [distOrdenada ind] = sort(...);
% O rótulo previsto corresponde ao rótulo do exemplo mais próximo (iX(1))
dist = ones(50,100);

  for teste = 1:rows(dadosTeste)
    
    for treino = 1:rows(dadosTrain)
      d = distancia(dadosTeste(teste,:), dadosTrain(treino,:));
      dist(teste,train) = d;
    end
    [distOrdenada ind] = sort(dist(teste,:)); dist(1:50,1:k)
  end

end