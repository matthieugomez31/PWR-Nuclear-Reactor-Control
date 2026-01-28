within EI_CS_Modelica.cooling_system.Verification;

model Verif
  Modelica.Blocks.Sources.RealExpression Q_echangeur_1(y = SRI.EchangeurAPlaques1D1.Ec.Q) annotation(
    Placement(transformation(origin = {27, 64}, extent = {{-17, -14}, {17, 14}})));
  Observers.FlowToSpeed flowToSpeed annotation(
    Placement(transformation(origin = {78, 64}, extent = {{-10, -10}, {10, 10}})));
  Requirements.Req_speed req_speed annotation(
    Placement(transformation(origin = {160, 54}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression Q_echangeur_2(y = SRI.EchangeurAPlaques1D2.Ec.Q) annotation(
    Placement(transformation(origin = {29, 38}, extent = {{-17, -14}, {17, 14}})));
  Observers.FlowToSpeed flowToSpeed1 annotation(
    Placement(transformation(origin = {80, 36}, extent = {{-10, -10}, {10, 10}})));
  Scenarios.Scenario0_2echangeurs scenario0_2echangeurs annotation(
    Placement(transformation(origin = {-156, 54}, extent = {{-18, -12}, {18, 12}})));
  Scenarios.Scenario0_1echangeur scenario0_1echangeur annotation(
    Placement(transformation(origin = {-98, 32}, extent = {{-18, -12}, {17.9999, 12}})));
  Behavior.SRI SRI annotation(
    Placement(transformation(extent = {{-54, -10}, {0, 32}})));
  Requirements.Req_temperature req_temperature annotation(
    Placement(transformation(origin = {158, 16}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression Temperature_T1(y = SRI.CapteurT1.T) annotation(
    Placement(transformation(origin = {29, 14}, extent = {{-17, -14}, {17, 14}})));
  Modelica.Blocks.Sources.RealExpression temperature_SRI_OUT(y = SRI.EchangeurAPlaques1D1.Tsf) annotation(
    Placement(transformation(origin = {31, -28}, extent = {{-17, -14}, {17, 14}})));
  Modelica.Blocks.Sources.RealExpression temperature_SEN_IN(y = SRI.EchangeurAPlaques1D1.Tef) annotation(
    Placement(transformation(origin = {29, -10}, extent = {{-17, -14}, {17, 14}})));
  Requirements.Req_diff_temp req_diff_temp annotation(
    Placement(transformation(origin = {158, -12}, extent = {{-10, -10}, {10, 10}})));
  Requirements.Req_diff_temp req_diff_temp2 annotation(
    Placement(transformation(origin = {158, -44}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.RealExpression temperature_SEN_IN2(y = SRI.EchangeurAPlaques1D2.Tef) annotation(
    Placement(transformation(origin = {31, -48}, extent = {{-17, -14}, {17, 14}})));
  Modelica.Blocks.Sources.RealExpression temperature_SRI_OUT2(y = SRI.EchangeurAPlaques1D2.Tsf) annotation(
    Placement(transformation(origin = {31, -66}, extent = {{-17, -14}, {17, 14}})));
  Modelica.Blocks.Sources.RealExpression Debit_pompe1(y = SRI.PompeCentrifugeDyn1.Qv) annotation(
    Placement(transformation(origin = {31, -86}, extent = {{-17, -14}, {17, 14}})));
  Modelica.Blocks.Sources.RealExpression debit_pompe2(y = SRI.PompeCentrifugeDyn2.Qv) annotation(
    Placement(transformation(origin = {31, -106}, extent = {{-17, -14}, {17, 14}})));
  Modelica.Blocks.Sources.RealExpression debit_pompe3(y = SRI.PompeCentrifugeDyn3.Qv) annotation(
    Placement(transformation(origin = {31, -124}, extent = {{-17, -14}, {17, 14}})));
  Requirements.Req_debit_pompes req_debit_pompes annotation(
    Placement(transformation(origin = {158, -126}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.BooleanExpression bool_Moteur1(y = SRI.Moteur1.marche.signal) annotation(
    Placement(transformation(origin = {31, -142}, extent = {{-17, -12}, {17, 12}})));
  Modelica.Blocks.Sources.BooleanExpression bool_Moteur2(y = SRI.Moteur2.marche.signal) annotation(
    Placement(transformation(origin = {31, -158}, extent = {{-17, -12}, {17, 12}})));
  Modelica.Blocks.Sources.BooleanExpression bool_Moteur3(y = SRI.Moteur3.marche.signal) annotation(
    Placement(transformation(origin = {31, -174}, extent = {{-17, -12}, {17, 12}})));
  Scenarios.Scenario0_2echangeurs_3_1 scenario0_2echangeurs_3_1 annotation(
    Placement(transformation(origin = {-170, -24}, extent = {{-15, -10}, {15, 10}})));
  Scenarios.Scenario0_2echangeurs_3_1_chaud scenario0_2echangeurs_3_1_chaud annotation(
    Placement(transformation(origin = {-150, -50}, extent = {{-15, -10}, {15, 10}})));
  Scenarios.Scenario0_2echangeurs_3_1_chaud scenario0_2echangeurs_3_1_chaud1 annotation(
    Placement(transformation(origin = {-96, -46}, extent = {{-15, -10}, {15, 10}})));
equation
  connect(Q_echangeur_1.y, flowToSpeed.u) annotation(
    Line(points = {{45.7, 64}, {57.4, 64}, {57.4, 65.2}, {66, 65.2}}, color = {0, 0, 127}));
  connect(Q_echangeur_2.y, flowToSpeed1.u) annotation(
    Line(points = {{48, 38}, {58, 38}, {58, 37.2}, {68, 37.2}}, color = {0, 0, 127}));
  connect(flowToSpeed.y, req_speed.u1) annotation(
    Line(points = {{89.8, 65.2}, {119.8, 65.2}, {119.8, 57.8}, {148, 57.8}}, color = {0, 0, 127}));
  connect(flowToSpeed1.y, req_speed.u) annotation(
    Line(points = {{91.8, 37.2}, {119.8, 37.2}, {119.8, 48.4}, {148, 48.4}}, color = {0, 0, 127}));
  connect(Temperature_T1.y, req_temperature.T) annotation(
    Line(points = {{48, 14}, {48, 12}, {146, 12}, {146, 20}}, color = {0, 0, 127}));
  connect(temperature_SEN_IN.y, req_diff_temp.SEN_T_IN) annotation(
    Line(points = {{48, -10}, {146, -10}}, color = {0, 0, 127}));
  connect(temperature_SRI_OUT.y, req_diff_temp.SRI_T_OUT) annotation(
    Line(points = {{50, -28}, {146, -28}, {146, -16}}, color = {0, 0, 127}));
  connect(temperature_SEN_IN2.y, req_diff_temp2.SEN_T_IN) annotation(
    Line(points = {{50, -48}, {102, -48}, {102, -42}, {146, -42}}, color = {0, 0, 127}));
  connect(temperature_SRI_OUT2.y, req_diff_temp2.SRI_T_OUT) annotation(
    Line(points = {{50, -66}, {146, -66}, {146, -48}}, color = {0, 0, 127}));
  connect(debit_pompe3.y, req_debit_pompes.debit_pompe3) annotation(
    Line(points = {{50, -124}, {146, -124}}, color = {0, 0, 127}));
  connect(debit_pompe2.y, req_debit_pompes.debit_pompe2) annotation(
    Line(points = {{50, -106}, {92, -106}, {92, -120}, {146, -120}}, color = {0, 0, 127}));
  connect(Debit_pompe1.y, req_debit_pompes.debit_pompe1) annotation(
    Line(points = {{50, -86}, {146, -86}, {146, -116}}, color = {0, 0, 127}));
  connect(bool_Moteur1.y, req_debit_pompes.bool_moteur1) annotation(
    Line(points = {{50, -142}, {146, -142}, {146, -128}}, color = {255, 0, 255}));
  connect(bool_Moteur2.y, req_debit_pompes.bool_moteur2) annotation(
    Line(points = {{50, -158}, {146, -158}, {146, -132}}, color = {255, 0, 255}));
  connect(bool_Moteur3.y, req_debit_pompes.bool_moteur3) annotation(
    Line(points = {{50, -174}, {146, -174}, {146, -136}}, color = {255, 0, 255}));
  connect(SRI.scenario, scenario0_2echangeurs_3_1.scenarioConnector) annotation(
    Line(points = {{-54, 10}, {-154, 10}, {-154, -24}}));
  annotation(
    Diagram(graphics = {Rectangle(origin = {60, -45}, fillColor = {143, 240, 164}, fillPattern = FillPattern.Solid, extent = {{-52, 143}, {52, -143}}), Text(origin = {53, 87}, extent = {{-27, 9}, {27, -9}}, textString = "Observers"), Rectangle(origin = {158, -34}, fillColor = {249, 240, 107}, fillPattern = FillPattern.Solid, extent = {{-32, 132}, {32, -132}}), Text(origin = {159, 87}, extent = {{-27, 7}, {27, -7}}, textString = "Exigences"), Rectangle(origin = {-127, 0}, fillColor = {255, 190, 111}, fillPattern = FillPattern.Solid, extent = {{-67, 96}, {67, -96}}), Text(origin = {-131, 87}, extent = {{-35, 7}, {35, -7}}, textString = "Scenarios")}, coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    Icon(coordinateSystem(extent = {{-200, -100}, {200, 100}})),
    experiment(StartTime = 0, StopTime = 1000, Tolerance = 1e-06, Interval = 2));
end Verif;
