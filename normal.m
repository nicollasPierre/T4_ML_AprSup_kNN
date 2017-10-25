function normalizado = normal(x)
  dadoMax = max(x);
  dadoMin = min(x);
  normalizado = ((x.-dadoMin)./(dadoMax-dadoMin));
  
end