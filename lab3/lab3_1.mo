model lab3_1
  parameter Real a = 0.401;
  parameter Real b = 0.707;
  parameter Real c = 0.606;
  parameter Real h = 0.502;
  parameter Real x0 = 22022;
  parameter Real y0 = 33033;
  Real x(start=x0);
  Real y(start=y0);
  
equation
  der(x)=-a*x-b*y+sin(8*time);
  der(y)=-c*x-h*y+cos(6*time);

end lab3_1;
