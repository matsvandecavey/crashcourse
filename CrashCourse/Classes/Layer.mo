within CrashCourse.Classes;
model Layer

    Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort_a annotation (extent=[-110,-10; -90,10]);
    Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b heatPort_b annotation (extent=[92,-8; 112,12]);

    parameter Real R=3;
    parameter Real C=800;

    CrashCourse.Connectors.with.resistor r1(R=R/2);
    CrashCourse.Connectors.with.resistor r2(R=R/2);
    replaceable FixedCap c(CNom=C, T(start = 273.15)) constrainedby
    Classes.PartialCap(                                                        CNom=C)
                                                                 annotation (choicesAllMatching=true);

equation
    connect(heatPort_a,r1.heatPort_a);
    connect(r1.heatPort_b,c.heatPort);
    connect(r1.heatPort_b,r2.heatPort_a);
    connect(r2.heatPort_b, heatPort_b);

end Layer;