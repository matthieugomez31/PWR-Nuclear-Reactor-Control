within EI_CS_Modelica.cooling_system.Behavior.Utils.ST;
block CapteurNiveau
  import EI_CS_Modelica.ThermoSysPro;
  import BFE;
  parameter Real seuil = 0 "Seuil";
  parameter Boolean defaut = false "Défaut capteur";
  parameter Boolean sens = true "Sens de la détection - true : >, false : <";
  parameter String repere = "xxxxSN" "Repère fonctionnel";
  parameter String libelle = "niveau" "Libellé";
  parameter Real Ti = 0.1 "Constante de temps";
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical etat
    annotation (Placement(transformation(extent={{200,50},{220,70}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal u annotation (
    Placement(transformation(origin = {50, -110}, extent = {{-10, -10}, {10, 10}}, rotation = 90)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Inf Inf1 annotation (
    Placement(transformation(extent = {{80, -40}, {100, -20}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Constante1(k = seuil) annotation (
    Placement(transformation(extent = {{40, -60}, {60, -40}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante Constante2(k = seuil) annotation (
    Placement(transformation(extent = {{40, 40}, {60, 60}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Sup Sup1 annotation (
    Placement(transformation(extent = {{80, 60}, {100, 80}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Selecteur Selecteur1 annotation (
    Placement(transformation(extent = {{120, 10}, {140, 30}}, rotation = 0)));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Constante Constante3(K = sens) annotation (
    Placement(transformation(extent = {{80, 10}, {100, 30}}, rotation = 0)));
  PO.CapteurNiveau CapteurNiveau1(defaut=defaut) annotation (Placement(
        transformation(extent={{-20,10},{0,30}}, rotation=0)));
  BFE.Logique.IMP IMP1(T=Ti) annotation (Placement(transformation(extent={{160,
            10},{180,30}}, rotation=0)));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal valeur annotation (
    Placement(transformation(extent = {{200, -70}, {220, -50}}, rotation = 0)));
equation
  connect(Sup1.yL, Selecteur1.uL1) annotation (
    Line(points = {{101, 70}, {114, 70}, {114, 28}, {119, 28}}));
  connect(Inf1.yL, Selecteur1.uL2) annotation (
    Line(points = {{101, -30}, {114, -30}, {114, 12}, {119, 12}}));
  connect(Constante3.yL, Selecteur1.uCond) annotation (
    Line(points = {{101, 20}, {119, 20}}, color = {0, 0, 255}));
  connect(u, CapteurNiveau1.mesure) annotation (
    Line(points = {{50, -110}, {50, -80}, {-10, -80}, {-10, 9.23077}}));
  connect(CapteurNiveau1.etat, Sup1.u1) annotation (
    Line(points = {{0.769231, 20}, {20, 20}, {20, 76}, {79, 76}}, color = {0, 0, 255}));
  connect(CapteurNiveau1.etat, Inf1.u1) annotation (
    Line(points = {{0.769231, 20}, {20, 20}, {20, -24}, {79, -24}}, color = {0, 0, 255}));
  connect(Selecteur1.yL, IMP1.uL) annotation (
    Line(points = {{141, 20}, {159, 20}}));
  connect(IMP1.yL, etat) annotation (
    Line(points = {{181, 20}, {190, 20}, {190, 60}, {210, 60}}));
  connect(Selecteur1.yL, IMP1.uInit) annotation (
    Line(points = {{141, 20}, {150, 20}, {150, 0}, {170, 0}, {170, 9}}));
  connect(CapteurNiveau1.etat, valeur) annotation (
    Line(points = {{0.769231, 20}, {20, 20}, {20, -70}, {190, -70}, {190, -60}, {210, -60}}, color = {0, 0, 255}));
  connect(Constante2.y, Sup1.u2) annotation (
    Line(points = {{61, 50}, {70, 50}, {70, 64}, {79, 64}}, color = {0, 0, 255}));
  connect(Constante1.y, Inf1.u2) annotation (
    Line(points = {{61, -50}, {70, -50}, {70, -36}, {79, -36}}, color = {0, 0, 255}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio = false, preserveOrientation = false, extent = {{-100, -100}, {200, 100}}, grid = {2, 2}, initialScale = 0), graphics={  Rectangle(extent = {{-100, 100}, {200, -100}}, lineColor = {28, 108, 200}, lineThickness = 0.5), Text(extent = {{-122, 144}, {226, 106}}, textString = "%name"), Rectangle(extent = {{-20, 30}, {120, -30}}), Line(points = {{60, 30}, {60, -30}}), Text(extent = {{124, 86}, {198, 34}}, textString = "état"), Text(extent = {{-16, 26}, {56, -26}}, textString = "PN"), Text(extent = {{-80, -40}, {112, -80}}, textString = "%libelle"), Text(extent = {{-80, 88}, {60, 54}}, textString = "%repere"), Rectangle(extent = {{120, 80}, {200, 40}}), Text(extent = {{124, -34}, {198, -86}}, textString = "valeur"), Rectangle(extent = {{120, -40}, {200, -80}})}),
    Window(x = 0.32, y = 0.18, width = 0.6, height = 0.59),
    Documentation(info = "<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
      "));
end CapteurNiveau;
