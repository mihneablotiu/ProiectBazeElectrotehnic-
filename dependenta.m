function dependenta()
  R3 = 1/7;
  Ee = 19.5;
  Re = 37 / 14;
  Isc = Ee / Re;
  
  I = [0:0.1:Isc];
  
  a = Ee / (2 * Re)
  b = Re .* a
  
  Ugol = Ee;
  U1 = -Re .* I + Ee;
  U2 = Re .* I;
  
  figure(1)
  plot(I, U1, I, U2);
  hold on
  plot(0, Ugol, "b*");
  plot(Isc, 0, "r*");
  plot(a, b, "g*");
  xlabel("Intensitate");
  ylabel("Tensiune");
  legend("Caracteristica generatorului", "Caracteristica rezistorului liniar",
  "Tensiunea in gol", "Curentul de scurtcircuit", "Punctul static de functionare");
endfunction