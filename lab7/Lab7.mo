model Lab7_1
  parameter Integer x0 = 9; // знают о товаре
  parameter Integer N = 1040; // макс число людей
  Real x(start=x0);
equation
  der(x) = (0.94 + 0.000094*x)*(N-x);
end Lab7_1;

// время + интервал [0:0.01:10]
