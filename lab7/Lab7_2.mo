model Lab7_2
  parameter Integer x0 = 9; // знают о товаре
  parameter Integer N = 1040; // макс. людей
  Real x(start=x0);
equation
  der(x) = (0.000094 + 0.94*x)*(N-x);
  // Пик распространения приходится на момент, когда x = 520 (половина)
end Lab7_2;

// время + интервал [0:0.00001:0.02] 
