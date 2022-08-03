function functionare_initiala()
  R3 = [0:0.1:10];
  Ee = 19.5;
  Re = 37 / 14;
  
  I = [];
  U = [];
  P = [];
  
  I = Ee ./ (Re .+ R3);
  U = R3 .* I;
  P = U .* I;
  
  R3i =  1/7;
  i = Ee / (R3i + Re);
  Pi = i^2 * R3i;
  Pmax = (Ee^2) / (4 * Re);
  
  figure(1)
  plot(R3, I, R3, U, R3, P);
  hold on
  plot(R3i, Pi, "b*");
  plot(Re, Pmax, "r*");
  xlabel("Rezistenta");
  ylabel("Functionare initiala a rezistorului");
  legend("Intensitate", "Tensiune", "Putere", "Functionare initiala", "Putere Maxima");
 
endfunction