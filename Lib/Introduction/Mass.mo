within Lib.Introduction;
model Mass
parameter Real m=1.5 "mass, in kg";
parameter Real c=1600 "specific capacity, J/kgK";
parameter Real UA=20 "heat transfer coefficient, in W/K";
parameter Real C = c*m "dangerous without 'final' keyword";
Real T(start=200);
parameter Real Ta=300;

equation
  C * der(T) + UA * (T-Ta) = 0;

end Mass;
