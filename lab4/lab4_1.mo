model lab4_1
  parameter Real w = sqrt(6);
  parameter Real g = 0; 
  parameter Real x0 = 0.6;
  parameter Real y0 = 1.6;
  Real x(start=x0);
  Real y(start=y0);
equation
  der(x) = y; 
  der(y) = -w*w*x - g*y;
end lab4_1;
