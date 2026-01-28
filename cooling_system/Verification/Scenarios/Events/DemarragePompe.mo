within EI_CS_Modelica.cooling_system.Verification.Scenarios.Events;
model DemarragePompe
  import EI_CS_Modelica.ThermoSysPro;

  parameter Real at=200 "date à laquelle le client est ajouté";
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical inputLogical
    annotation (Placement(transformation(extent={{-120,-10},{-100,10}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputLogical outputLogical
    annotation (Placement(transformation(extent={{100,-10},{120,10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.Echelon echelon(
      startTime=at)
    annotation (Placement(transformation(origin = {44, 10}, extent = {{-84, -48}, {-64, -28}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.OR or1 annotation(
    Placement(transformation(origin = {18, -10}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(or1.yL, outputLogical) annotation(
    Line(points = {{30, -10}, {110, -10}, {110, 0}}, color = {0, 0, 255}));
  connect(or1.uL1, inputLogical) annotation(
    Line(points = {{8, -4}, {-110, -4}, {-110, 0}}, color = {0, 0, 255}));
  connect(or1.uL2, echelon.yL) annotation(
    Line(points = {{8, -16}, {-18, -16}, {-18, -28}}, color = {0, 0, 255}));
  annotation (
    Icon(graphics={  Rectangle(extent = {{-100, 100}, {100, -100}},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),                            Text(origin = {-5, 129}, extent = {{-117, 33}, {117, -33}}, textString = "%name")}));
end DemarragePompe;
