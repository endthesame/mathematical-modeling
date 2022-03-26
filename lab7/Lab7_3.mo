model Lab7_3
  parameter Integer x0 = 9; // знают о товаре
  parameter Integer N = 1040; // макс. людей
  Real x(start=x0);
equation
  der(x) = (0.94*sin(time) + 0.94*sin(time)*x)*(N-x);
end Lab7_3;

// время + интервал [0:0.001:0.2]
