function grafice()
  R3 = [0:0.1:10];
  Ee = 19.5;
  Re = 37 / 14;
  
  I = [];
  U = [];
  P = [];
  
  I = Ee ./ (Re .+ R3);
  U = R3 .* I;
  P = U .* I;
  
  figure(1)
  plot(R3, I);
  xlabel("Rezistenta");
  ylabel("Intensitate");
  title("Intensitate functie de rezistenta");
  
  figure(2)
  plot(R3, U);
  xlabel("Rezistenta");
  ylabel("Tensiune");
  title("Tensiune functie de rezistenta");
  
  figure(3)
  plot(R3, P);
  xlabel("Rezistenta");
  ylabel("Putere");
  title("Putere functie de rezistenta");
endfunction