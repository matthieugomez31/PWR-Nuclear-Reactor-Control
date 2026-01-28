within EI_CS_Modelica.cooling_system.Verification.Requirements;

model Req_debit_pompes
  Modelica.Blocks.Interfaces.BooleanOutput y annotation(
    Placement(transformation(origin = {108, 6}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, 4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.RealInput debit_pompe3 annotation(
    Placement(transformation(origin = {-100, -54}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 20}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput debit_pompe2 annotation(
    Placement(transformation(origin = {-100, -2}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.RealInput debit_pompe1 annotation(
    Placement(transformation(origin = {-100, 54}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, 100}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold(threshold = 700/3600)  annotation(
    Placement(transformation(origin = {-26, 42}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold1(threshold = 700/3600)  annotation(
    Placement(transformation(origin = {-24, -2}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.GreaterEqualThreshold greaterEqualThreshold2(threshold = 700/3600)  annotation(
    Placement(transformation(origin = {-24, -44}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.And and1 annotation(
    Placement(transformation(origin = {84, 28}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.And and3 annotation(
    Placement(transformation(origin = {86, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Interfaces.BooleanInput bool_moteur1 annotation(
    Placement(transformation(origin = {-100, 28}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, -20}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput bool_moteur2 annotation(
    Placement(transformation(origin = {-100, -28}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, -60}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Interfaces.BooleanInput bool_moteur3 annotation(
    Placement(transformation(origin = {-100, -78}, extent = {{-20, -20}, {20, 20}}), iconTransformation(origin = {-120, -100}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Blocks.Logical.And and2 annotation(
    Placement(transformation(origin = {8, 32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.And and4 annotation(
    Placement(transformation(origin = {10, -10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.And and5 annotation(
    Placement(transformation(origin = {18, -60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.Xor xor annotation(
    Placement(transformation(origin = {38, 22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.Not not1 annotation(
    Placement(transformation(origin = {58, 50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.Xor xor1 annotation(
    Placement(transformation(origin = {34, -22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.Not not2 annotation(
    Placement(transformation(origin = {64, -10}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.Xor xor2 annotation(
    Placement(transformation(origin = {48, -76}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Logical.Not not3 annotation(
    Placement(transformation(origin = {82, -74}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(debit_pompe1, greaterEqualThreshold.u) annotation(
    Line(points = {{-100, 54}, {-69, 54}, {-69, 42}, {-38, 42}}, color = {0, 0, 127}));
  connect(greaterEqualThreshold1.u, debit_pompe2) annotation(
    Line(points = {{-36, -2}, {-100, -2}}, color = {0, 0, 127}));
  connect(greaterEqualThreshold2.u, debit_pompe3) annotation(
    Line(points = {{-36, -44}, {-68, -44}, {-68, -54}, {-100, -54}}, color = {0, 0, 127}));
  connect(and3.y, y) annotation(
    Line(points = {{97, -26}, {92.5, -26}, {92.5, 6}, {108, 6}}, color = {255, 0, 255}));
  connect(and3.u1, and1.y) annotation(
    Line(points = {{74, -26}, {95, -26}, {95, 28}}, color = {255, 0, 255}));
  connect(greaterEqualThreshold.y, and2.u1) annotation(
    Line(points = {{-14, 42}, {-4, 42}, {-4, 32}}, color = {255, 0, 255}));
  connect(greaterEqualThreshold1.y, and4.u1) annotation(
    Line(points = {{-12, -2}, {-2, -2}, {-2, -10}}, color = {255, 0, 255}));
  connect(greaterEqualThreshold2.y, and5.u1) annotation(
    Line(points = {{-12, -44}, {6, -44}, {6, -60}}, color = {255, 0, 255}));
  connect(bool_moteur1, and2.u2) annotation(
    Line(points = {{-100, 28}, {-4, 28}, {-4, 24}}, color = {255, 0, 255}));
  connect(bool_moteur2, and4.u2) annotation(
    Line(points = {{-100, -28}, {-2, -28}, {-2, -18}}, color = {255, 0, 255}));
  connect(and5.u2, bool_moteur3) annotation(
    Line(points = {{6, -68}, {-100, -68}, {-100, -78}}, color = {255, 0, 255}));
  connect(xor2.u1, and5.y) annotation(
    Line(points = {{36, -76}, {30, -76}, {30, -60}}, color = {255, 0, 255}));
  connect(xor2.u2, bool_moteur3) annotation(
    Line(points = {{36, -84}, {-100, -84}, {-100, -78}}, color = {255, 0, 255}));
  connect(xor2.y, not3.u) annotation(
    Line(points = {{60, -76}, {70, -76}, {70, -74}}, color = {255, 0, 255}));
  connect(not3.y, and3.u2) annotation(
    Line(points = {{94, -74}, {74, -74}, {74, -34}}, color = {255, 0, 255}));
  connect(xor1.u1, and4.y) annotation(
    Line(points = {{22, -22}, {22, -10}}, color = {255, 0, 255}));
  connect(xor1.u2, bool_moteur2) annotation(
    Line(points = {{22, -30}, {-2, -30}, {-2, -28}, {-100, -28}}, color = {255, 0, 255}));
  connect(xor1.y, not2.u) annotation(
    Line(points = {{46, -22}, {52, -22}, {52, -10}}, color = {255, 0, 255}));
  connect(not2.y, and1.u2) annotation(
    Line(points = {{76, -10}, {72, -10}, {72, 20}}, color = {255, 0, 255}));
  connect(and2.y, xor.u1) annotation(
    Line(points = {{20, 32}, {26, 32}, {26, 22}}, color = {255, 0, 255}));
  connect(xor.u2, bool_moteur1) annotation(
    Line(points = {{26, 14}, {-60, 14}, {-60, 28}, {-100, 28}}, color = {255, 0, 255}));
  connect(xor.y, not1.u) annotation(
    Line(points = {{50, 22}, {46, 22}, {46, 50}}, color = {255, 0, 255}));
  connect(not1.y, and1.u1) annotation(
    Line(points = {{70, 50}, {70, 39}, {72, 39}, {72, 28}}, color = {255, 0, 255}));
  annotation(
    Icon(graphics = {Rectangle(fillColor = {246, 97, 81}, fillPattern = FillPattern.Solid, extent = {{-100, 100}, {100, -100}}), Text(origin = {-6, 124}, extent = {{-136, 30}, {136, -30}}, textString = "%name")}),
    Diagram(graphics = {Text(origin = {-4, 40},textColor = {28, 108, 200}, extent = {{-68, 44}, {76, 27}}, textString = "Le débit dans les pompes doit être supérieur à 700m^3/h")}));
end Req_debit_pompes;
