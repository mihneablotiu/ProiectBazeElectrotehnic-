function pol_dir()
  Ee = 19.5;
  Re = 37 / 14;
  Isc = Ee / Re;
  
  I_s = 5.*(10^(-12));
  V_T = 0.020;
  
  U = [0:0.01:Ee];
  
  Ugol = Ee;
  I = (Ee - U) ./ Re;
  I2 = I_s * (e .^ (U/V_T) - 1);
  
  figure(1)
  plot(U, I, U, I2);
  hold on
  plot(Ugol, 0, "b*");
  plot(0, Isc, "r*");
  axis([0 30 0 10]);
  xlabel("Tensiune");
  ylabel("Intensitate");
  title("Caracteristica generatorului echivalent si a diodei semiconductoare");
  legend("Caracteristica generatorului", "Caracteristica diodei", "Tensiunea in gol",
  "Curentul de scurtcircuit");
endfunction