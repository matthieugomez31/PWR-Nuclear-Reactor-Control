within EI_CS_Modelica.cooling_system.Behavior.Utils.PO;
block VanneReglante
  import EI_CS_Modelica.ThermoSysPro;
  parameter Integer delai=0 "Délai de transmission de la commande";
  parameter Real vmax=1 "Vitesse maximum de manoeuvre de la vanne";
  parameter Boolean defaut=false "Défaut vanne";
  parameter Real Ti=0.1 "Constante de temps";

  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal u annotation (
      Placement(transformation(extent={{-120,20},{-100,40}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal Cmd
    annotation (Placement(transformation(
        origin={30,-110},
        extent={{-10,-10},{10,10}},
        rotation=270)));
  ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.RetardFixe
    RetardFixe1(                           retard=delai)
    annotation (Placement(transformation(extent={{120,20},{140,40}},
          rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Selecteur
    Selecteur1                           annotation (Placement(
        transformation(extent={{-40,20},{-20,40}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Continu.PT1 PT1_1(
                          Ti=Ti) annotation (Placement(transformation(
          extent={{0,20},{20,40}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal etat
                                      annotation (Placement(transformation(
          extent={{160,20},{180,40}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.LimiteurVitesse
    LimiteurVitesse1(
    dmax=vmax,
    dmin=-vmax,
    Ti=0.1) annotation (Placement(transformation(extent={{40,20},{60,40}},
          rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Continu.PI PI1(
                       Ti=Ti, permanent=true)
    annotation (Placement(transformation(extent={{-20,-40},{0,-20}},
          rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Add Add1(
                      k2=-1) annotation (Placement(transformation(extent={{
            -60,-40},{-40,-20}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Limiteur
    Limiteur1(                         minval=0)
    annotation (Placement(transformation(extent={{80,20},{100,40}},
          rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante
                          Constante1(K=defaut)
    annotation (Placement(transformation(extent={{-100,40},{-80,60}},
          rotation=0)));
equation
  connect(PT1_1.y, Selecteur1.u1) annotation (Line(points={{21,30},{30,30},
          {30,60},{-50,60},{-50,38},{-41,38}}, color={0,0,255}));
  connect(Selecteur1.y, PT1_1.u)
    annotation (Line(points={{-19,30},{-1,30}}, color={0,0,255}));
  connect(u, Add1.u1)
    annotation (Line(points={{-110,30},{-80,30},{-80,-24},{-61,-24}}));
  connect(Add1.y, PI1.u)
    annotation (Line(points={{-39,-30},{-21,-30}}, color={0,0,255}));
  connect(PI1.y, Selecteur1.u2) annotation (Line(points={{1,-30},{20,-30},{
          20,0},{-60,0},{-60,22},{-41,22}}, color={0,0,255}));
  connect(LimiteurVitesse1.y, Limiteur1.u)
    annotation (Line(points={{61,30},{79,30}}, color={0,0,255}));
  connect(Limiteur1.y, Add1.u2) annotation (Line(points={{101,30},{110,30},
          {110,-60},{-80,-60},{-80,-36},{-61,-36}}, color={0,0,255}));
  connect(PT1_1.y, LimiteurVitesse1.u)
    annotation (Line(points={{21,30},{39,30}}, color={0,0,255}));
  connect(Limiteur1.y, RetardFixe1.u)
    annotation (Line(points={{101,30},{119,30}}, color={0,0,255}));
  connect(RetardFixe1.y, etat)
    annotation (Line(points={{141,30},{170,30}}, color={0,0,255}));
  connect(RetardFixe1.y, Cmd) annotation (Line(points={{141,30},{150,30},{
          150,-80},{30,-80},{30,-110}}, color={0,0,255}));
  connect(Constante1.yL, Selecteur1.uCond)
    annotation (Line(points={{-79,50},{-60,50},{-60,30},{-41,30}}));
  annotation (
    Diagram(coordinateSystem(
        preserveAspectRatio=false,
        preserveOrientation=false,
        extent={{-100,-100},{160,160}},
        grid={2,2},
        initialScale=0), graphics),
    Window(
      x=0.3,
      y=0.25,
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
          points={{140,80},{-80,80},{-78,92},{-72,102},{-70,104},{-66,108},
              {-58,114},{-48,120},{-38,124},{-28,128},{-20,130},{-10,132},{
              0,134},{20,136},{40,136},{60,134},{80,130},{98,124},{108,120},
              {118,114},{126,108},{132,102},{138,92},{140,84},{140,80}},
          lineColor={28,108,200},
          fillColor={192,192,192},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-30,80},{92,80},{30,-30},{-30,80}},
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
end VanneReglante;
