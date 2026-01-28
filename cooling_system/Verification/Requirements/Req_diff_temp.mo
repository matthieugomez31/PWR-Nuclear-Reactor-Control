within EI_CS_Modelica.cooling_system.Verification.Requirements;

model Req_diff_temp
  Modelica.Blocks.Interfaces.BooleanOutput y annotation(
    Placement(transformation(origin = {108, 6}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput SEN_T_IN annotation(
    Placement(transformation(origin = {-102, -18}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 22}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput SRI_T_OUT annotation(
    Placement(transformation(origin = {-102, 18}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, -40}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Math.Gain gain(k = -1)  annotation(
    Placement(transformation(origin = {-54, -20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Sum sum1(nin = 2)  annotation(
    Placement(transformation(origin = {-26, 2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.And and1 annotation(
    Placement(transformation(origin = {52, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold = 22+ 273.15)  annotation(
    Placement(transformation(origin = {-10, -52}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold(threshold = 7)  annotation(
    Placement(transformation(origin = {14, 16}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.LessThreshold lessThreshold(threshold = 22+ 273.15)  annotation(
    Placement(transformation(origin = {0, 50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.And and2 annotation(
    Placement(transformation(origin = {50, -32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.Or or1 annotation(
    Placement(transformation(origin = {82, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.LessEqualThreshold lessEqualThreshold1(threshold = 5)  annotation(
    Placement(transformation(origin = {16, -22}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(SEN_T_IN, gain.u) annotation(
    Line(points = {{-102, -18}, {-66, -18}, {-66, -20}}, color = {0, 0, 127}));
  connect(greaterEqualThreshold.u, SEN_T_IN) annotation(
    Line(points = {{-22, -52}, {-102, -52}, {-102, -18}}, color = {0, 0, 127}));
  connect(sum1.y, lessEqualThreshold.u) annotation(
    Line(points = {{-14, 2}, {2, 2}, {2, 16}}, color = {0, 0, 127}));
  connect(SEN_T_IN, lessThreshold.u) annotation(
    Line(points = {{-102, -18}, {-124, -18}, {-124, 54}, {-52, 54}, {-52, 53}, {-12, 53}, {-12, 50}}, color = {0, 0, 127}));
  connect(and1.u1, lessThreshold.y) annotation(
    Line(points = {{40, 34}, {12, 34}, {12, 50}}, color = {255, 0, 255}));
  connect(lessEqualThreshold.y, and1.u2) annotation(
    Line(points = {{26, 16}, {40, 16}, {40, 26}}, color = {255, 0, 255}));
  connect(and1.y, or1.u1) annotation(
    Line(points = {{64, 34}, {70, 34}, {70, 6}}, color = {255, 0, 255}));
  connect(and2.y, or1.u2) annotation(
    Line(points = {{62, -32}, {70, -32}, {70, -2}}, color = {255, 0, 255}));
  connect(or1.y, y) annotation(
    Line(points = {{94, 6}, {108, 6}}, color = {255, 0, 255}));
  connect(greaterEqualThreshold.y, and2.u2) annotation(
    Line(points = {{2, -52}, {38, -52}, {38, -40}}, color = {255, 0, 255}));
  connect(lessEqualThreshold1.u, sum1.y) annotation(
    Line(points = {{4, -22}, {-7, -22}, {-7, -20}, {-12, -20}, {-12, 2}, {-14, 2}}, color = {0, 0, 127}));
  connect(lessEqualThreshold1.y, and2.u1) annotation(
    Line(points = {{28, -22}, {38, -22}, {38, -32}}, color = {255, 0, 255}));
  connect(sum1.u[1], SRI_T_OUT) annotation(
    Line(points = {{-38, 2}, {-102, 2}, {-102, 18}}, color = {0, 0, 127}));
  connect(sum1.u[2], gain.y) annotation(
    Line(points = {{-38, 2}, {-42, 2}, {-42, -20}}, color = {0, 0, 127}));
  annotation(
    Icon(graphics = {Rectangle(fillColor = {246, 97, 81}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-6, 124}, extent = {{-136, 30}, {136, -30}}, textString = "%name")}),
    Diagram(graphics = {Text(origin = {-8, 51},textColor = {28, 108, 200}, extent = {{-90, 49}, {101, 30}}, textString = "La différence de température entre sortie et entrée de la source froide doit être inférieur à 7°C. Si La température de la sourcé à l'entrée est supérieur à 22°C cette différence doit être inférieur à 5°C")}));
end Req_diff_temp;
