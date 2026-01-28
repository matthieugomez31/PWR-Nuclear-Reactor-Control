within EI_CS_Modelica.cooling_system.Verification.Scenarios;
model Scenario0_1_puis_2echangeurs
  extends Init.Scenario_init;
  Events.IsoleBranche isoleBranche(at= 200)
    annotation (Placement(transformation(extent={{-50,56},{-30,76}})));
  Events.DemarragePompe demarragePompe(at = 600)  annotation(
    Placement(transformation(origin = {-2, 66}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(True.yL, toConnector.ouvreBranche1) annotation(
    Line(points = {{-179, 84}, {18, 84}, {18, 91.6}, {31.6, 91.6}}, color = {0, 0, 255}));
  connect(False.yL, toConnector.encP3) annotation(
    Line(points = {{-179, 56}, {-92, 56}, {-92, 27.6}, {31.6, 27.6}}, color = {0, 0, 255}));
  connect(False.yL, toConnector.comVanneBache) annotation(
    Line(points = {{-179, 56}, {-92, 56}, {-92, 28}, {20, 28}, {20, 11.2}, {31.6, 11.2}}, color = {0, 0, 255}));
  connect(True.yL, toConnector.encP2) annotation(
    Line(points = {{-179, 84}, {18, 84}, {18, 43.6}, {31.6, 43.6}}, color = {0, 0, 255}));
  connect(True.yL, toConnector.encP1) annotation(
    Line(points = {{-179, 84}, {18, 84}, {18, 59.6}, {31.6, 59.6}}, color = {0, 0, 255}));
  connect(Tsf_init.y, toConnector.Tsf) annotation(
    Line(points = {{-179, -10}, {-124, -10}, {-124, -42.8}, {32, -42.8}}, color = {0, 0, 255}));
  connect(Psf_init.y, toConnector.Psf) annotation(
    Line(points = {{-179, -36}, {-126, -36}, {-126, -59.2}, {32, -59.2}}, color = {0, 0, 255}));
  connect(Util_init.y, toConnector.comUtil) annotation(
    Line(points = {{-179, -64}, {18, -64}, {18, -75.6}, {32, -75.6}}, color = {0, 0, 255}));
  connect(Fuite_init1.y, toConnector.leak) annotation(
    Line(points = {{-179, -90}, {20, -90}, {20, -91}, {32, -91}}, color = {0, 0, 255}));
  connect(True.yL, isoleBranche.inputLogical) annotation(
    Line(points = {{-179, 84}, {-56, 84}, {-56, 66}, {-51, 66}}, color = {0, 0, 255}));
  connect(HotPower_init.y, toConnector.load) annotation(
    Line(points = {{-178, 16}, {32, 16}, {32, -26}}, color = {0, 0, 255}));
  connect(isoleBranche.outputLogical, demarragePompe.inputLogical) annotation(
    Line(points = {{-28, 66}, {-12, 66}}, color = {0, 0, 255}));
  connect(demarragePompe.outputLogical, toConnector.ouvreBranche2) annotation(
    Line(points = {{10, 66}, {32, 66}, {32, 76}}, color = {0, 0, 255}));
end Scenario0_1_puis_2echangeurs;
