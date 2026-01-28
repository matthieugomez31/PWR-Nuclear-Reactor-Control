within EI_CS_Modelica.cooling_system.Behavior.Utils.PO;
block Pompe
  import EI_CS_Modelica.ThermoSysPro;
  import BFE;
  parameter Integer delaiDemarrage=1 "Délai de démarrage de la pompe";
  parameter Boolean defaut=false "Défaut pompe";
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical uL annotation
    (Placement(transformation(extent={{-120,20},{-100,40}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical etatE
                                        annotation (Placement(
        transformation(extent={{160,20},{180,40}}, rotation=0)));
  BFE.Logique.TEX TEX1(T=delaiDemarrage)
    annotation (Placement(transformation(extent={{0,0},{20,20}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical Cmd
    annotation (Placement(transformation(
        origin={30,-110},
        extent={{10,-10},{-10,10}},
        rotation=90)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante Defaut(
                                 K=defaut)
    annotation (Placement(transformation(extent={{-40,60},{-20,80}},
          rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.NONL NONL1
                           annotation (Placement(transformation(extent={{0,
            60},{20,80}}, rotation=0)));
  BFE.Logique.ETL ETL1    annotation (Placement(transformation(extent={{60,
            40},{80,60}}, rotation=0)));
equation
  connect(Defaut.yL, NONL1.uL) annotation (Line(points={{-19,70},{-1,70}}));
  connect(NONL1.yL, ETL1.uL1)
    annotation (Line(points={{21,70},{40,70},{40,56},{59,56}}));
  connect(TEX1.yL, ETL1.uL2)
    annotation (Line(points={{21,10},{40,10},{40,44},{59,44}}));
  connect(ETL1.yL, etatE)
    annotation (Line(points={{81,50},{120,50},{120,30},{170,30}}));
  connect(ETL1.yL, Cmd)
    annotation (Line(points={{81,50},{120,50},{120,-60},{30,-60},{30,-110}}));
  connect(uL, TEX1.uL) annotation (Line(points={{-110,30},{-10,30},{-10,10},
          {-1,10}}));
  connect(uL, TEX1.uInit)
    annotation (Line(points={{-110,30},{-10,30},{-10,-10},{10,-10},{10,-1}}));
  annotation (
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        preserveOrientation=false,
        extent={{-100,-100},{160,160}},
        grid={2,2},
        initialScale=0), graphics),
    Window(
      x=0.06,
      y=0.28,
      width=0.65,
      height=0.64),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        preserveOrientation=false,
        extent={{-100,-100},{160,160}},
        grid={2,2},
        initialScale=0), graphics={
        Ellipse(
          extent={{-80,140},{140,-80}},
          lineColor={28,108,200},
          fillColor={192,192,192},
          fillPattern=FillPattern.Solid),
        Line(points={{-60,28},{120,28}}),
        Line(points={{60,68},{120,28},{60,-12}}),
        Rectangle(extent={{-100,160},{160,-100}}),
        Text(extent={{-120,214},{180,174}}, textString=
                                                "%name")}),
    Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
"));
end Pompe;
