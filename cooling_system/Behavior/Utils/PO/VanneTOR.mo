within EI_CS_Modelica.cooling_system.Behavior.Utils.PO;
block VanneTOR
  import EI_CS_Modelica.ThermoSysPro;
  import BFE;
  parameter Integer delaiOuverture=1 "Délai d'ouverture de la vanne";
  parameter Boolean defaut=false "Défaut vanne";

  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical uL annotation
    (Placement(transformation(extent={{-120,20},{-100,40}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical etatE
                                        annotation (Placement(
        transformation(extent={{160,20},{180,40}}, rotation=0)));
  BFE.Logique.TEX TEX1(T=delaiOuverture)
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
  connect(uL, TEX1.uL) annotation (Line(points={{-110,30},{-10,30},{-10,10},
          {-1,10}}));
  connect(Defaut.yL, NONL1.uL) annotation (Line(points={{-19,70},{-1,70}}));
  connect(NONL1.yL, ETL1.uL1)
    annotation (Line(points={{21,70},{40,70},{40,56},{59,56}}));
  connect(TEX1.yL, ETL1.uL2)
    annotation (Line(points={{21,10},{40,10},{40,44},{59,44}}));
  connect(ETL1.yL, etatE)
    annotation (Line(points={{81,50},{120,50},{120,30},{170,30}}));
  connect(ETL1.yL, Cmd)
    annotation (Line(points={{81,50},{120,50},{120,-60},{30,-60},{30,-110}}));
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
      x=0.08,
      y=0.21,
      width=0.65,
      height=0.64),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        preserveOrientation=false,
        extent={{-100,-100},{160,160}},
        grid={2,2},
        initialScale=0), graphics={
        Rectangle(extent={{-100,160},{160,-100}}),
        Text(extent={{-120,214},{180,174}}, textString=
                                                "%name"),
        Line(points={{30,-30},{30,40},{30,60}}),
        Polygon(
          points={{30,-30},{140,20},{140,-80},{30,-30}},
          lineColor={28,108,200},
          fillColor={192,192,192},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{30,-30},{-80,20},{-80,-80},{30,-30}},
          lineColor={28,108,200},
          fillColor={192,192,192},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{140,60},{-80,60},{-78,72},{-72,82},{-70,84},{-66,88},{
              -58,94},{-48,100},{-38,104},{-28,108},{-20,110},{-10,112},{0,
              114},{20,116},{40,116},{60,114},{80,110},{98,104},{108,100},{
              118,94},{126,88},{132,82},{138,72},{140,64},{140,60}},
          lineColor={28,108,200},
          fillColor={192,192,192},
          fillPattern=FillPattern.Solid)}),
    Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
"));
end VanneTOR;
