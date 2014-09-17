within Lib.Introduction;
model Mass2 "Mass with final parameter C"

parameter Real m=1.5 "mass, in kg";
parameter Real c=1600 "specific capacity, J/kgK";
parameter Real UA=20 "heat transfer coefficient, in W/K";
final parameter Real C = c*m "final prevents modification of this parameter";
Real T(start=200,fixed=false);
parameter Real Ta=300;

equation
C * der(T) + UA * (T-Ta) = 0;

end Mass2;
