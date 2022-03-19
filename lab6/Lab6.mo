model Lab6
  parameter Real a = 0.01; // коэффициент заболеваемости 
  parameter Real b = 0.02; //коэффициент выздоровления
  parameter Integer N = 12300; // общая численность популяции
  parameter Integer I0 = 140; // количество инфицированных особей в начальный момент времени
  parameter Integer R0 = 54; // количество здоровых особей с иммунитетом в начальный момент времени
  parameter Integer S0 = N - I0 - R0; // количество восприимчивых к болезни особей в начальный момент времени
  Real S(start = S0);
  Real I(start = I0);
  Real R(start = R0);
  
equation
  der(S) = 0;
  der(I) = -b * I;
  der(R) = b * I;

end Lab6;
