within EI_CS_Modelica.cooling_system.Behavior;

model CmdVannes
  ThermoSysPro.InstrumentationAndControl.Connectors.InputReal T annotation(
    Placement(transformation(origin = {-104, 78}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-104, 34}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal vanne3 annotation(
    Placement(transformation(origin = {102, -72}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, -54}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.OutputReal vanne1 annotation(
    Placement(transformation(origin = {102, 48}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {110, 56}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Continu.PIsat pIsat(maxval = 0.84, minval = 0.11, k = 1, Ti = 0.7, permanent = false)  annotation(
    Placement(transformation(origin = {-4, 66}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Add add(k2 = -1, k1 = 1)  annotation(
    Placement(transformation(origin = {-50, 50}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante constante(k = 17+ 273.15)  annotation(
    Placement(transformation(origin = {-96, 22}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical branche1 annotation(
    Placement(transformation(origin = {-102, -2}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, -12}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Connectors.InputLogical branche2 annotation(
    Placement(transformation(origin = {-104, -76}, extent = {{-10, -10}, {10, 10}}), iconTransformation(origin = {-100, -50}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Logique.XOR xor annotation(
    Placement(transformation(origin = {-24, -8}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Selecteur selecteur2 annotation(
    Placement(transformation(origin = {36, 48}, extent = {{-10, -10}, {10, 10}})));
  EI_CS_Modelica.ThermoSysPro.InstrumentationAndControl.Blocks.NonLineaire.Selecteur selecteur21 annotation(
    Placement(transformation(origin = {44, -72}, extent = {{-10, -10}, {10, 10}})));
  EI_CS_Modelica.ThermoSysPro.InstrumentationAndControl.Blocks.Continu.PIsat pIsat1(maxval = 1, minval = 0.053, k = 1, Ti = 0.7) annotation(
    Placement(transformation(origin = {-4, 40}, extent = {{-10, -10}, {10, 10}})));
  ThermoSysPro.InstrumentationAndControl.Blocks.Math.Polynome polynome(a = {0.355, 0, 0, 0.355})  annotation(
    Placement(transformation(origin = {-6, -50}, extent = {{-10, -10}, {10, 10}})));
  EI_CS_Modelica.ThermoSysPro.InstrumentationAndControl.Blocks.Math.Polynome polynome1(a = {0, 0, 0, 0.712}) annotation(
    Placement(transformation(origin = {-6, -80}, extent = {{-10, -10}, {10, 10}})));
  EI_CS_Modelica.ThermoSysPro.InstrumentationAndControl.Blocks.Math.Add add1(k1 = -1, k2 = 1) annotation(
    Placement(transformation(origin = {70, 14}, extent = {{-10, -10}, {10, 10}})));
  EI_CS_Modelica.ThermoSysPro.InstrumentationAndControl.Blocks.Sources.Constante constante1(k = 1) annotation(
    Placement(transformation(origin = {36, 8}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(T, add.u1) annotation(
    Line(points = {{-104, 78}, {-82.5, 78}, {-82.5, 56}, {-61, 56}}));
  connect(add.y, pIsat.u) annotation(
    Line(points = {{-39, 50}, {-26, 50}, {-26, 66}, {-15, 66}}, color = {0, 0, 255}));
  connect(constante.y, add.u2) annotation(
    Line(points = {{-85, 22}, {-85, 44}, {-60, 44}}, color = {0, 0, 255}));
  connect(branche1, xor.uL1) annotation(
    Line(points = {{-102, -2}, {-35, -2}}));
  connect(branche2, xor.uL2) annotation(
    Line(points = {{-104, -76}, {-93, -76}, {-93, -74}, {-60, -74}, {-60, -24}, {-59.5, -24}, {-59.5, -14}, {-35, -14}}));
  connect(xor.yL, selecteur2.uCond) annotation(
    Line(points = {{-12, -8}, {20, -8}, {20, 48}, {25, 48}}, color = {0, 0, 255}));
  connect(selecteur2.y, vanne1) annotation(
    Line(points = {{47, 48}, {102, 48}}, color = {0, 0, 255}));
  connect(selecteur21.uCond, xor.yL) annotation(
    Line(points = {{33, -72}, {20, -72}, {20, -8}, {-12, -8}}, color = {0, 0, 255}));
  connect(pIsat.y, selecteur2.u1) annotation(
    Line(points = {{7, 66}, {20, 66}, {20, 56}, {25, 56}}, color = {0, 0, 255}));
  connect(add.y, pIsat1.u) annotation(
    Line(points = {{-38, 50}, {-26, 50}, {-26, 40}, {-14, 40}}, color = {0, 0, 255}));
  connect(pIsat1.y, selecteur2.u2) annotation(
    Line(points = {{8, 40}, {25, 40}}, color = {0, 0, 255}));
  connect(polynome.y, selecteur21.u1) annotation(
    Line(points = {{6, -50}, {26, -50}, {26, -64}, {33, -64}}, color = {0, 0, 255}));
  connect(polynome1.y, selecteur21.u2) annotation(
    Line(points = {{6, -80}, {33, -80}}, color = {0, 0, 255}));
  connect(selecteur2.y, add1.u1) annotation(
    Line(points = {{48, 48}, {52, 48}, {52, 20}, {59, 20}}, color = {0, 0, 255}));
  connect(constante1.y, add1.u2) annotation(
    Line(points = {{48, 8}, {59, 8}}, color = {0, 0, 255}));
  connect(add1.y, polynome.u) annotation(
    Line(points = {{82, 14}, {88, 14}, {88, -28}, {-30, -28}, {-30, -50}, {-16, -50}}, color = {0, 0, 255}));
  connect(add1.y, polynome1.u) annotation(
    Line(points = {{82, 14}, {88, 14}, {88, -28}, {-30, -28}, {-30, -80}, {-16, -80}}, color = {0, 0, 255}));
  connect(selecteur21.y, vanne3) annotation(
    Line(points = {{56, -72}, {102, -72}}, color = {0, 0, 255}));

annotation(
    Diagram);
end CmdVannes;
