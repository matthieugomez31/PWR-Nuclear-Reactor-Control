within EI_CS_Modelica.cooling_system.Verification.Scenarios;
model Scenario0_2echangeurs_3_2_temperature_haute
  extends Init.Scenario_init;
  Events.AddClient addClient(power = 190E6, at = 200) annotation(
    Placement(transformation(origin = {-162, 16}, extent = {{-10, -10}, {10, 10}})));
  cooling_system.Verification.Scenarios.Events.AddClient addClient1(at = 400, power = 1E6) annotation(
    Placement(transformation(origin = {-132, 16}, extent = {{-10, -10}, {10, 10}})));
  cooling_system.Verification.Scenarios.Events.AddClient addClient2(at = 800, power = 1E6) annotation(
    Placement(transformation(origin = {-72, 16}, extent = {{-10, -10}, {10, 10}})));
  cooling_system.Verification.Scenarios.Events.AddClient addClient3(at = 600, power = 1E6) annotation(
    Placement(transformation(origin = {-102, 16}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(Tsf_init.y, toConnector.Tsf) annotation(
    Line(points = {{-179, -10}, {-54, -10}, {-54, -42.8}, {32, -42.8}}, color = {0, 0, 255}));
  connect(Psf_init.y, toConnector.Psf) annotation(
    Line(points = {{-179, -36}, {-56, -36}, {-56, -59.2}, {32, -59.2}}, color = {0, 0, 255}));
  connect(Util_init.y, toConnector.comUtil) annotation(
    Line(points = {{-179, -64}, {18, -64}, {18, -75.6}, {32, -75.6}}, color = {0, 0, 255}));
  connect(Fuite_init1.y, toConnector.leak) annotation(
    Line(points = {{-179, -90}, {20, -90}, {20, -91}, {32, -91}}, color = {0, 0, 255}));
  connect(True.yL, toConnector.ouvreBranche1) annotation(
    Line(points = {{-179, 84}, {18, 84}, {18, 91.6}, {31.6, 91.6}}, color = {0, 0, 255}));
  connect(True.yL, toConnector.ouvreBranche2) annotation(
    Line(points = {{-179, 84}, {18, 84}, {18, 75.6}, {31.6, 75.6}}, color = {0, 0, 255}));
  connect(True.yL, toConnector.encP1) annotation(
    Line(points = {{-179, 84}, {18, 84}, {18, 59.6}, {31.6, 59.6}}, color = {0, 0, 255}));
  connect(True.yL, toConnector.encP2) annotation(
    Line(points = {{-179, 84}, {18, 84}, {18, 43.6}, {31.6, 43.6}}, color = {0, 0, 255}));
  connect(False.yL, toConnector.encP3) annotation(
    Line(points = {{-179, 56}, {14, 56}, {14, 27.6}, {31.6, 27.6}}, color = {0, 0, 255}));
  connect(False.yL, toConnector.comVanneBache) annotation(
    Line(points = {{-179, 56}, {14, 56}, {14, 28}, {20, 28}, {20, 11.2}, {31.6, 11.2}}, color = {0, 0, 255}));
  connect(HotPower_init.y, addClient.inputReal) annotation(
    Line(points = {{-178, 16}, {-172, 16}}, color = {0, 0, 255}));
  connect(addClient.outputReal, addClient1.inputReal) annotation(
    Line(points = {{-152, 16}, {-142, 16}}, color = {0, 0, 255}));
  connect(addClient1.outputReal, addClient3.inputReal) annotation(
    Line(points = {{-122, 16}, {-112, 16}}, color = {0, 0, 255}));
  connect(addClient3.outputReal, addClient2.inputReal) annotation(
    Line(points = {{-92, 16}, {-82, 16}}, color = {0, 0, 255}));
  connect(addClient2.outputReal, toConnector.load) annotation(
    Line(points = {{-62, 16}, {32, 16}, {32, -26}}, color = {0, 0, 255}));
end Scenario0_2echangeurs_3_2_temperature_haute;
