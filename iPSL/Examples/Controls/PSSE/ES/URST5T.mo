within iPSL.Examples.Controls.PSSE.ES;
model URST5T "SMIB model example of GENROU with Excitation System URST5T"
  extends iPSL.Examples.SMIBpartial;
  iPSL.Electrical.Machines.PSSE.GENROU.GENROU generator(
    Xppd=0.2,
    Xppq=0.2,
    Xpp=0.2,
    Xl=0.12,
    V_0=1,
    P_0=100*0.399999529123306,
    angle_0=4.04626655578613,
    Q_0=100*0.0541657134890556,
    M_b=100,
    Tpd0=5,
    Tppd0=0.50000E-01,
    Tppq0=0.1,
    H=4.0000,
    D=0,
    Xd=1.41,
    Xq=1.3500,
    Xpd=0.3,
    S10=0.1,
    S12=0.5,
    Xpq=0.6,
    Tpq0=0.7) annotation (Placement(transformation(extent={{-104,-16},{-76,18}})));
  Modelica.Blocks.Sources.Constant const2(k=0) annotation (Placement(transformation(extent={{-110,166},{-94,182}})));
  Modelica.Blocks.Sources.Constant VOEL(k=1000) annotation (Placement(transformation(
        extent={{-5,-5},{5,5}},
        rotation=0,
        origin={-87,-67})));
  iPSL.Electrical.Controls.PSSE.ES.URST5T.URST5T uRST5T annotation (Placement(transformation(extent={{-56,-40},{-12,-14}})));
  Modelica.Blocks.Sources.Constant VUEL(k=-1000) annotation (Placement(transformation(
        extent={{-5,-5},{5,5}},
        rotation=0,
        origin={-73,-81})));
  Modelica.Blocks.Sources.Constant VOTHSG(k=0) annotation (Placement(transformation(
        extent={{-5,-5},{5,5}},
        rotation=0,
        origin={-73,-55})));
  Modelica.Blocks.Sources.Constant VREF(k=0) annotation (Placement(transformation(
        extent={{-5,-5},{5,5}},
        rotation=0,
        origin={-83,-33})));
  inner Electrical.SystemBase SysData annotation (Placement(transformation(extent={{-100,80},{-40,100}})));
equation
  connect(VUEL.y, uRST5T.VUEL) annotation (Line(
      points={{-67.5,-81},{-58.25,-81},{-58.25,-22.0437},{-55.2667,-22.0437}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(VOEL.y, uRST5T.VOEL) annotation (Line(
      points={{-81.5,-67},{-60,-67},{-60,-25.4563},{-55.2667,-25.4563}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(VOTHSG.y, uRST5T.VOTHSG) annotation (Line(
      points={{-67.5,-55},{-62,-55},{-62,-29.5188},{-55.9185,-29.5188}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(generator.XADIFD, uRST5T.XADIFD) annotation (Line(
      points={{-74.88,-14.3},{-74.88,-34.0688},{-55.2667,-34.0688}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(generator.EFD0, uRST5T.EFD0) annotation (Line(
      points={{-74.88,-10.9},{-64,-10.9},{-64,-38.2938},{-55.2667,-38.2938}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(generator.PMECH0, generator.PMECH) annotation (Line(
      points={{-74.88,-4.1},{-70,-4.1},{-70,22},{-104,22},{-104,9.5},{-103.72,9.5}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(generator.PELEC, uRST5T.ECOMP) annotation (Line(
      points={{-74.88,-7.5},{-66,-7.5},{-66,-15.7062},{-55.2667,-15.7062}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(uRST5T.EFD, generator.EFD) annotation (Line(
      points={{-12,-26.1875},{-14,-26.1875},{-14,-44},{-104,-44},{-104,-7.5},{-103.72,-7.5}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(VREF.y, uRST5T.V_REF) annotation (Line(
      points={{-77.5,-33},{-66,-33},{-66,-18.9563},{-55.2667,-18.9563}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(generator.p, GEN1.p) annotation (Line(points={{-74.6,1},{-57.3,1},{-57.3,0},{-40,0}}, color={0,0,255}));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false,extent={{-100,-100},{100,100}})), Documentation(revisions="<html>
<!--DISCLAIMER-->
<p>Copyright 2015-2016 RTE (France), SmarTS Lab (Sweden), AIA (Spain) and DTU (Denmark)</p>
<ul>
<li>RTE: <a href=\"http://www.rte-france.com\">http://www.rte-france.com</a></li>
<li>SmarTS Lab, research group at KTH: <a href=\"https://www.kth.se/en\">https://www.kth.se/en</a></li>
<li>AIA: <a href=\"http://www.aia.es/en/energy\"> http://www.aia.es/en/energy</a></li>
<li>DTU: <a href=\"http://www.dtu.dk/english\"> http://www.dtu.dk/english</a></li>
</ul>
<p>The authors can be contacted by email: <a href=\"mailto:info@itesla-ipsl.org\">info@itesla-ipsl.org</a></p>

<p>This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. </p>
<p>If a copy of the MPL was not distributed with this file, You can obtain one at <a href=\"http://mozilla.org/MPL/2.0/\"> http://mozilla.org/MPL/2.0</a>.</p>
</html>"));
end URST5T;
