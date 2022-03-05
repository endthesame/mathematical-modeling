model lab4_3
  parameter Real w = sqrt(12);
  parameter Real g = 6; 
  parameter Real x0 = 0.6;
  parameter Real y0 = 1.6;
  Real x(start=x0);
  Real y(start=y0);
equation
  der(x) = y; 
  der(y) = -w*w*x - g*y + sin(6*time);
end lab4_3;
