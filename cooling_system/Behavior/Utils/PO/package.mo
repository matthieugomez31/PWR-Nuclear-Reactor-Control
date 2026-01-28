within EI_CS_Modelica.cooling_system.Behavior.Utils;
package PO "Bibliothèque des parties opératives"

annotation (
  Window(
    x=0.05,
    y=0.26,
    width=0.25,
    height=0.25,
    library=1,
    autolayout=1),
  Icon(coordinateSystem(
        preserveAspectRatio=false,
        preserveOrientation=false,
        extent={{0,0},{312,210}},
        grid={2,2},
        initialScale=0), graphics={
        Rectangle(
          extent={{-100,-100},{80,50}},
          lineColor={28,108,200},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-100,50},{-80,70},{100,70},{80,50},{-100,50}},
          lineColor={28,108,200},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{100,70},{100,-80},{80,-100},{80,50},{100,70}},
          lineColor={28,108,200},
          fillColor={235,235,235},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-120,135},{120,70}},
          lineColor={255,0,0},
          textString=
             "%name"),
        Text(
          extent={{-90,40},{70,10}},
          lineColor={160,160,164},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid,
          textString=
             "Library"),
        Rectangle(extent={{-32,-6},{16,-35}}, lineColor={0,0,0}),
        Rectangle(extent={{-32,-56},{16,-85}}, lineColor={0,0,0}),
        Line(points={{16,-20},{49,-20},{49,-71},{16,-71}}, color={0,0,0}),
        Line(points={{-32,-72},{-64,-72},{-64,-21},{-32,-21}}, color={0,0,0}),
        Polygon(
          points={{16,-71},{29,-67},{29,-74},{16,-71}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-32,-21},{-46,-17},{-46,-25},{-32,-21}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid)}),
  Documentation(info="<html>
<p><b>Copyright &copy; EDF 2002 - 2003</b></p>
</HTML>
<html>
<p><b>Version 1.0</b></p>
</HTML>
"));
end PO;
