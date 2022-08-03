function pol_inv()
  Ee = -19.5;
  Re = 37 / 14;
  Isc = Ee / Re;
  
  I_s = 5.*(10^(-12));
  V_T = 0.020;
  
  U = [-30:0.01:-Ee];
  
  Ugol = Ee;
  I = (Ee - U) ./ Re;
  I2 = I_s * (e .^ (U/V_T) - 1);
  
  figure(1)
  plot(U, I, U, I2);
  hold on
  axis([-30 5 Isc 2]);
  xlabel("Tensiune");
  ylabel("Intensitate");
  title("Caracteristica generatorului echivalent si a diodei semiconductoare polarizata invers");
  legend("Caracteristica generatorului", "Caracteristica diodei");
  
endfunction