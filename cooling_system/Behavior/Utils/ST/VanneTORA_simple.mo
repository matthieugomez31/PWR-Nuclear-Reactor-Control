within EI_CS_Modelica.cooling_system.Behavior.Utils.ST;
block VanneTORA_simple
  import EI_CS_Modelica.ThermoSysPro;
  import BFE;
  parameter Integer delaiOuverture = 1 "Délai d'ouverture de la vanne";
  parameter Boolean defaut = false "Défaut vanne";
  parameter String repere = "xxxxVA" "Repère fonctionnel";
  parameter Integer tension = 125 "Tension d'alimentation";
  parameter String voie = "A" "Voie";
  parameter String manqueTension = "F" "Etat sur manque tension";
  parameter String manqueAir = "F" "Etat sur manque air";
  parameter Real Ti = 0.1 "Constante de temps";
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical E annotation (
      Placement(transformation(extent={{-220,320},{-200,340}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical D annotation (
    Placement(transformation(extent = {{-220, 140}, {-200, 160}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical cmd annotation (
    Placement(transformation(origin = {200, -210}, extent = {{10, -10}, {-10, 10}}, rotation = 90)));
  BFE.Logique.RAZ RAZ1 annotation (Placement(transformation(extent={{160,40},{
            180,60}}, rotation=0)));
  BFE.Logique.OUL OUL4 annotation (
    Placement(transformation(extent = {{60, -41}, {80, -21}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante Defaut(K = defaut) annotation (
    Placement(transformation(extent = {{-100, -80}, {-80, -60}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.NONL NONL1 annotation (
    Placement(transformation(extent = {{-60, -80}, {-40, -60}}, rotation = 0)));
  BFE.Logique.IMP IMP1(T = Ti) annotation (
    Placement(transformation(extent = {{-20, -80}, {0, -60}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante Constante5(K = false) annotation (
    Placement(transformation(extent = {{-40, -110}, {-20, -90}}, rotation = 0)));
  PO.VanneTOR POVanneTOR(delaiOuverture=delaiOuverture, defaut=defaut)
    annotation (Placement(transformation(extent={{340,40},{360,60}}, rotation=0)));
equation
  connect(OUL4.yL, RAZ1.Z) annotation (
    Line(points = {{81, -31}, {150, -31}, {150, 44}, {159, 44}}));
  connect(Defaut.yL, NONL1.uL) annotation (
    Line(points = {{-79, -70}, {-61, -70}}));
  connect(NONL1.yL, IMP1.uL) annotation (
    Line(points = {{-39, -70}, {-21, -70}}));
  connect(IMP1.yL, OUL4.uL2) annotation (
    Line(points = {{1, -70}, {48, -70}, {48, -37}, {59, -37}}));
  connect(Constante5.yL, IMP1.uInit) annotation (
    Line(points = {{-19, -100}, {-10, -100}, {-10, -81}}));
  connect(POVanneTOR.Cmd, cmd) annotation (
    Line(points={{350,39.2308},{350,-140},{200,-140},{200,-210}}));
  connect(E, RAZ1.E) annotation (
    Line(points = {{-210, 330}, {140, 330}, {140, 56}, {159, 56}}));
  connect(E, RAZ1.uInit) annotation (
    Line(points = {{-210, 330}, {140, 330}, {140, 32}, {170, 32}, {170, 39}}));
  connect(D, OUL4.uL1) annotation (
    Line(points = {{-210, 150}, {20, 150}, {20, -25}, {59, -25}}));
  connect(RAZ1.yL, POVanneTOR.uL)
    annotation (Line(points={{181,50},{339.231,50}}, color={0,0,255}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio = false, preserveOrientation = false, extent = {{-200, -200}, {600, 500}}, grid = {2, 2}, initialScale = 0), graphics={  Rectangle(extent = {{-200, 498}, {600, -200}}, lineColor = {28, 108, 200}, lineThickness = 0.5), Rectangle(extent = {{-200, 340}, {-180, 320}}), Text(extent = {{-202, 340}, {-182, 320}}, textString = "E"), Rectangle(extent = {{-200, 160}, {-180, 140}}), Text(extent = {{-200, 160}, {-180, 140}}, textString = "D"), Rectangle(extent = {{-200, 80}, {100, -200}}), Text(extent = {{-178, 58}, {78, -2}}, textString = "%repere"), Rectangle(extent = {{-40, 420}, {400, 200}}), Text(extent = {{-18, 296}, {380, 222}}, textString = "TTLE F : N.A. s"), Text(extent = {{-17, 397}, {381, 323}}, textString = "TTLE O : N.A. s"), Rectangle(extent = {{280, 80}, {600, -200}}), Text(extent = {{300, 78}, {580, 18}}, textString = "Tension: %tension V"), Text(extent = {{320, -60}, {560, -120}}, textString = "Etat/Mqe T: %manqueTension"), Text(extent = {{320, 0}, {580, -40}}, textString = "Voie: %voie"), Text(extent = {{322, -141}, {560, -198}}, textString = "Etat/Mqe air: %manqueAir"), Line(points = {{-180, -180}, {80, -100}, {80, -180}, {-180, -100}, {-180, -180}}), Line(points = {{-180, -60}, {80, -60}}), Line(points = {{-50, -140}, {-50, -60}}), Line(points = {{-180, -60}, {-178, -54}, {-174, -48}, {-162, -40}, {-148, -34}, {-136, -30}, {-126, -28}, {-118, -26}, {-108, -24}, {-92, -22}, {-66, -20}, {-50, -20}, {-32, -20}, {-6, -22}, {16, -26}, {28, -28}, {42, -32}, {54, -36}, {66, -42}, {74, -48}, {78, -52}, {80, -56}, {80, -60}}), Text(extent = {{-196, 596}, {596, 524}}, textString = "%name"), Rectangle(extent = {{560, 480}, {600, 460}}), Text(extent = {{560, 480}, {600, 460}}, textString = "discO"), Rectangle(extent = {{560, 300}, {600, 280}}), Text(extent = {{560, 300}, {600, 280}}, textString = "etatO"), Rectangle(extent = {{560, 120}, {600, 100}}), Text(extent = {{560, 120}, {600, 100}}, textString = "indispo")}),
    Diagram(coordinateSystem(preserveAspectRatio = false, preserveOrientation = false, extent = {{-200, -200}, {600, 500}}, grid = {2, 2}, initialScale = 0)),
    Window(x = 0.21, y = 0.28, width = 0.6, height = 0.6),
    Documentation(info = "<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
      "));
end VanneTORA_simple;
