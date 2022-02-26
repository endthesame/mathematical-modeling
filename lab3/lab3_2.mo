model lab3_2
  parameter Real a = 0.343;
  parameter Real b = 0.895;
  parameter Real c = 0.699;
  parameter Real h = 0.433;
  parameter Real x0 = 22022;
  parameter Real y0 = 33033;
  Real x(start=x0);
  Real y(start=y0);
  
equation
  der(x)=-a*x-b*y+2*sin(2*time);
  der(y)=-c*x*y-h*y+2*cos(time);

end lab3_2;
