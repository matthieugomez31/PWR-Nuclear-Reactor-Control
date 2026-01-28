within EI_CS_Modelica.cooling_system.Behavior.Utils.PO;
block CapteurTemperature
  import EI_CS_Modelica.ThermoSysPro;
  parameter Boolean defaut=false "Défaut capteur";
  parameter Real defval=0 "Valeur du signal en cas de défaut capteur";
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante Defaut(K=defaut)
    annotation (Placement(transformation(extent={{-40,20},{-20,40}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal mesure
                                        annotation (
    layer="icon", Placement(transformation(
        origin={30,-110},
        extent={{-10,-10},{10,10}},
        rotation=90)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal etat
    annotation (                           layer="icon", Placement(
        transformation(extent={{160,20},{180,40}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Selecteur
    Selecteur1                           annotation (Placement(
        transformation(extent={{80,20},{100,40}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante
    Constante1(                      k=defval)
    annotation (Placement(transformation(extent={{20,60},{40,80}}, rotation=
           0)));
equation
  connect(Defaut.yL, Selecteur1.uCond) annotation (Line(points={{-19,30},{
          79,30}}));
  connect(mesure, Selecteur1.u2) annotation (Line(points={{30,-110},{30,22},
          {79,22}}));
  connect(Selecteur1.y, etat)
    annotation (Line(points={{101,30},{170,30}}, color={0,0,255}));
  connect(Constante1.y, Selecteur1.u1)
    annotation (Line(points={{41,70},{60,70},{60,38},{79,38}}, color={0,0,
          255}));
  annotation (
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        preserveOrientation=false,
        extent={{-100,-100},{160,160}},
        grid={2,2},
        initialScale=0), graphics),
    Window(
      x=0.23,
      y=0.14,
      width=0.65,
      height=0.64),
    Icon(coordinateSystem(
        preserveAspectRatio=false,
        preserveOrientation=false,
        extent={{-100,-100},{160,160}},
        grid={2,2},
        initialScale=0), graphics={
        Ellipse(
          extent={{-30,140},{90,20}},
          lineColor={28,108,200},
          fillColor={192,192,192},
          fillPattern=FillPattern.Solid),
        Rectangle(extent={{-100,160},{160,-100}}),
        Text(extent={{-120,214},{180,174}}, textString=
                                                "%name"),
        Line(points={{30,20},{30,-100}})}),
    Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
"));
end CapteurTemperature;
