function bilant_puteri()
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
  
  Pc = R3 * (I1 + 5 - I3)^2 + I3^2 * X_C + I1^2 * (X_L + 2.5) + (I1 + 5)^2 * R3
  Pg = (I1 + I2 + 5) * (1.6 * Uj) - E1 * (I1 + 5) + I2^2 * (2) + Uj * 5
endfunction