function curent_alternativ()
  f = 50;
  pulsatie = 2 * pi * f;
  R3 = 1/7;
  X_C = 1/(j * pulsatie * 4.54728 * 10^(-6));
  X_L = j * pulsatie * 79.57747154 * 10^(-3);
  J1 = 5 * e ^ (j * 0);
  E1 = e ^ (j * pi/2);
  Uj = 5.7334/sqrt(2) * e ^ (j * pi);
  I1 = Uj / (2.5 + X_L)
  I2 = (1.6 * Uj) / (-2)
  I3 = ((I1 * R3) + 5*R3) / (R3 + X_C)
  rho = abs(I1);
  theta = angle(I1);
  Ampl1 = rho * sqrt(2)
  theta = rad2deg(theta);
  rho1 = abs(I2);
  theta1 = angle(I2);
  Ampl2 = rho1 * sqrt(2)
  theta1 = rad2deg(theta1);
  rho2 = abs(I3);
  theta2 = angle(I3);
  Ampl3 = rho2 * sqrt(3)
  
endfunction