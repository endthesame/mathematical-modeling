model Lab8_2
  parameter Real M0_1 = 3.7; 
  parameter Real M0_2 = 2.8; 
  parameter Real p_cr = 27; 
  parameter Real tau1 = 27; 
  parameter Real tau2 = 17; 
  parameter Real p1= 6.7; 
  parameter Real p2 = 11.7; 
  parameter Real N = 37; 
  parameter Real q = 1; 
  Real x1(start = M0_1); 
  Real x2(start = M0_2);
  
  parameter Real a1 = p_cr / (tau1 * tau1 * p1 * p1 * N * q);
  parameter Real a2 = p_cr / (tau2 * tau2 * p2 * p2 * N * q);
  parameter Real b = p_cr / (tau1 * tau1 * p1 * p1 * tau2 * tau2 * p2 * p2 * N * q);
  parameter Real c1 = (p_cr - p1) / (tau1 * p1);
  parameter Real c2 = (p_cr - p2) / (tau1 * p2);
  
equation
  der(x1) = (c1/c1) * x1 - (b/c1) * x1 * x2 - (a1/c1) * x1 * x1;
  der(x2) = (c2/c1) * x2 - ((b/c1) +0.00063) * x1 * x2 - (a2/c1) * x2 * x2;

end Lab8_2;
