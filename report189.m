g=9.8;
H=550000;
R=6371000;
c=3e8;
t = -150:150;

figure;
hold;

x = (sqrt(g./R)./((1+H./R).^1.5)).*t;
dF = 1./(1+(1./c).*sqrt((g.*R)./(1+H./R)).*sin(x)./sqrt((1+H./R).^2-2.*(1+H./R)*cos(x)+1))-1;
plot(t, dF, 'DisplayName','LEO');

HM = 8062000;
x = (sqrt(g./R)./((1+HM./R).^1.5)).*t;
dFM = 1./(1+(1./c).*sqrt((g.*R)./(1+HM./R)).*sin(x)./sqrt((1+HM./R).^2-2.*(1+HM./R)*cos(x)+1))-1; L2 = '8062km (MEO)';
plot(t, dFM, 'DisplayName','MEO');

title(["Doppler Shift of satellite", " sweeping over ground station"], 'FontSize', 18);
xlabel("Time (s)", 'FontSize', 18);
ylabel("Doppler Shift (ppm)", 'FontSize', 18);

legend;
drawnow;
hold off;