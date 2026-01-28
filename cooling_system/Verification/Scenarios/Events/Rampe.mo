within EI_CS_Modelica.cooling_system.Verification.Scenarios.Events;
model Rampe
  import EI_CS_Modelica.ThermoSysPro;

  parameter Real power=10E6 "puissance du client (en W)";
  parameter Real at=200 "date à laquelle le client est ajouté";

  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal inputReal
    annotation (Placement(transformation(origin={-108,-2}, extent={{-10,-10},{
            10,10}}), iconTransformation(origin={-108,-2}, extent={{-10,-10},{
            10,10}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal outputReal annotation (
    Placement(transformation(origin = {108, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {108, -2}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Add add annotation (
    Placement(transformation(origin = {-8, -8}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Rampe rampe(Starttime = 200, Duration = 600, Initialvalue = 0, Finalvalue = 300E6)  annotation(
    Placement(transformation(origin = {-46, -28}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(inputReal, add.u1) annotation(
    Line(points = {{-108, -2}, {-19, -2}}));
  connect(add.y, outputReal) annotation(
    Line(points = {{3, -8}, {108, -8}, {108, -2}}, color = {0, 0, 255}));
  connect(add.u2, rampe.y) annotation(
    Line(points = {{-18, -14}, {-34, -14}, {-34, -28}}, color = {0, 0, 255}));
  annotation (
    Icon(graphics={  Rectangle(extent = {{-100, 100}, {100, -100}},
          fillPattern=FillPattern.Solid,
          fillColor={255,255,255}),                                  Text(origin = {-5, 129}, extent = {{-117, 33}, {117, -33}}, textString = "%name")}));
end Rampe;
