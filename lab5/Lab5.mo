model Lab5
  parameter Real a = 0.29;
  parameter Real b = 0.031;
  parameter Real c = 0.33;
  parameter Real d = 0.024;
  parameter Real x0 = 7;
  parameter Real y0 = 14;
  parameter Real stat_x = c/d;
  parameter Real stat_y= a/b;
  Real x(start = x0);
  Real y(start = y0);
equation
  der(x) = -a*x + b*x*y;
  der(y) = c*y - d*x*y;
end Lab5;
