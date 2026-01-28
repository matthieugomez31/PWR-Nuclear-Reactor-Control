within EI_CS_Modelica.cooling_system.Verification.Scenarios;
model Scenario0_2echangeurs_3_1
  extends Init.Scenario_init;
  Events.RemoveClient deconnectClient annotation (Placement(transformation(
          origin={-146,16}, extent={{-10,-10},{10,10}})));
  Events.ArretPompe arretPompe(at = 400)  annotation(
    Placement(transformation(origin = {-26, 44}, extent = {{-10, -10}, {10, 10}})));
  Events.DemarragePompe demarragePompe(at = 413)  annotation(
    Placement(transformation(origin = {2, 30}, extent = {{-10, -10}, {10, 10}})));
  Events.IsoleBranche isoleBranche(at = 500)  annotation(
    Placement(transformation(origin = {-38, 92}, extent = {{-10, -10}, {10, 10}})));
  Events.AddClient addClient(power = 10E6, at = 700)  annotation(
    Placement(transformation(origin = {-118, 16}, extent = {{-10, -10}, {10, 10}})));
  EI_CS_Modelica.cooling_system.Verification.Scenarios.Events.AddClient addClient1(at = 750, power = 5E6) annotation(
    Placement(transformation(origin = {-90, 16}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(HotPower_init.y, deconnectClient.inputReal) annotation(
    Line(points = {{-179, 16}, {-168, 16}, {-168, 15.8}, {-156.8, 15.8}}, color = {0, 0, 255}));
  connect(Tsf_init.y, toConnector.Tsf) annotation(
    Line(points = {{-179, -10}, {-54, -10}, {-54, -42.8}, {32, -42.8}}, color = {0, 0, 255}));
  connect(Psf_init.y, toConnector.Psf) annotation(
    Line(points = {{-179, -36}, {-56, -36}, {-56, -59.2}, {32, -59.2}}, color = {0, 0, 255}));
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
  connect(arretPompe.inputLogical, True.yL) annotation(
    Line(points = {{-36, 44}, {-53, 44}, {-53, 72}, {-178, 72}, {-178, 84}}, color = {0, 0, 255}));
  connect(arretPompe.outputLogical, toConnector.encP2) annotation(
    Line(points = {{-14, 44}, {32, 44}}, color = {0, 0, 255}));
  connect(demarragePompe.inputLogical, False.yL) annotation(
    Line(points = {{-8, 30}, {-93, 30}, {-93, 56}, {-178, 56}}, color = {0, 0, 255}));
  connect(demarragePompe.outputLogical, toConnector.encP3) annotation(
    Line(points = {{14, 30}, {32, 30}, {32, 28}}, color = {0, 0, 255}));
  connect(isoleBranche.outputLogical, toConnector.ouvreBranche1) annotation(
    Line(points = {{-26, 92}, {32, 92}}, color = {0, 0, 255}));
  connect(isoleBranche.inputLogical, True.yL) annotation(
    Line(points = {{-48, 92}, {-178, 92}, {-178, 84}}, color = {0, 0, 255}));
  connect(deconnectClient.outputReal, addClient.inputReal) annotation(
    Line(points = {{-136, 16}, {-128, 16}}, color = {0, 0, 255}));
  connect(addClient.outputReal, addClient1.inputReal) annotation(
    Line(points = {{-108, 16}, {-100, 16}}, color = {0, 0, 255}));
  connect(addClient1.outputReal, toConnector.load) annotation(
    Line(points = {{-80, 16}, {-24, 16}, {-24, -26}, {32, -26}, {32, -26}}, color = {0, 0, 255}));
  annotation(
    Diagram(coordinateSystem(extent = {{-200, 100}, {120, -100}})));
end Scenario0_2echangeurs_3_1;
