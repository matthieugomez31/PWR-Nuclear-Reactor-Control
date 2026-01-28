within EI_CS_Modelica.cooling_system.Verification.Requirements;

model Req_temperature
  Modelica.Blocks.Interfaces.BooleanOutput y annotation(
    Placement(transformation(origin = {108, 6}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput T annotation(
    Placement(transformation(origin = {-100, -14}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 38}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Logical.And and1 annotation(
    Placement(transformation(origin = {58, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.LessThreshold lessThreshold1(threshold = 30+ 273.15) annotation(
    Placement(transformation(extent = {{-16, -52}, {4, -32}})));
  Modelica.Blocks.Logical.GreaterThreshold greaterThreshold(threshold = 16+ 273.15) annotation(
    Placement(transformation(origin = {-10, 12}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(and1.y, y) annotation(
    Line(points = {{69, -14}, {108, -14}, {108, 6}}, color = {255, 0, 255}));
  connect(and1.u2, lessThreshold1.y) annotation(
    Line(points = {{46, -22}, {12, -22}, {12, -42}, {5, -42}}, color = {255, 0, 255}));
  connect(greaterThreshold.y, and1.u1) annotation(
    Line(points = {{1, 12}, {46, 12}, {46, -14}}, color = {255, 0, 255}));
  connect(greaterThreshold.u, T) annotation(
    Line(points = {{-22, 12}, {-100, 12}, {-100, -14}}, color = {0, 0, 127}));
  connect(lessThreshold1.u, T) annotation(
    Line(points = {{-18, -42}, {-100, -42}, {-100, -14}}, color = {0, 0, 127}));
  annotation(
    Icon(graphics = {Rectangle(fillColor = {246, 97, 81}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-6, 124}, extent = {{-136, 30}, {136, -30}}, textString = "%name")}),
    Diagram(graphics = {Text(origin = {-4, 40},textColor = {28, 108, 200}, extent = {{-68, 44}, {76, 27}}, textString = "La température dans le SRI doit être comprise entre 16°C et 30 °C")}));
end Req_temperature;
