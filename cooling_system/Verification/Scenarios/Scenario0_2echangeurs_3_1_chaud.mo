within EI_CS_Modelica.cooling_system.Verification.Scenarios;
model Scenario0_2echangeurs_3_1_chaud
  extends Init.Scenario_init;
  Events.Rampe rampe annotation(
    Placement(transformation(origin = {-154, 16}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(Util_init.y, toConnector.comUtil) annotation(
    Line(points = {{-179, -64}, {18, -64}, {18, -75.6}, {32, -75.6}}, color = {0, 0, 255}));
  connect(Fuite_init1.y, toConnector.leak) annotation(
    Line(points = {{-179, -90}, {20, -90}, {20, -91}, {32, -91}}, color = {0, 0, 255}));
  connect(True.yL, toConnector.ouvreBranche2) annotation(
    Line(points = {{-179, 84}, {-80.5, 84}, {-80.5, 76}, {18, 76}, {18, 75.6}, {31.6, 75.6}}, color = {0, 0, 255}));
  connect(True.yL, toConnector.encP1) annotation(
    Line(points = {{-179, 84}, {-80.5, 84}, {-80.5, 76}, {18, 76}, {18, 59.6}, {31.6, 59.6}}, color = {0, 0, 255}));
  connect(toConnector.comVanneBache, False.yL) annotation(
    Line(points = {{32, 12}, {-20.5, 12}, {-20.5, 28}, {-105, 28}, {-105, 56}, {-180, 56}, {-180, 54}, {-178, 54}, {-178, 56}}, color = {0, 0, 255}));
  connect(toConnector.encP3, False.yL) annotation(
    Line(points = {{32, 28}, {-178, 28}, {-178, 56}}, color = {0, 0, 255}));
  connect(toConnector.encP2, True.yL) annotation(
    Line(points = {{32, 44}, {-178, 44}, {-178, 84}}, color = {0, 0, 255}));
  connect(toConnector.ouvreBranche1, True.yL) annotation(
    Line(points = {{32, 92}, {-178, 92}, {-178, 84}}, color = {0, 0, 255}));
  connect(HotPower_init.y, rampe.inputReal) annotation(
    Line(points = {{-178, 16}, {-165, 16}}, color = {0, 0, 255}));
  connect(rampe.outputReal, toConnector.load) annotation(
    Line(points = {{-144, 16}, {32, 16}, {32, -26}}, color = {0, 0, 255}));
  connect(Tsf_init.y, toConnector.Tsf) annotation(
    Line(points = {{-178, -10}, {32, -10}, {32, -42}}, color = {0, 0, 255}));
  connect(Psf_init.y, toConnector.Psf) annotation(
    Line(points = {{-178, -36}, {32, -36}, {32, -60}}, color = {0, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, 100}, {120, -100}})));
end Scenario0_2echangeurs_3_1_chaud;
