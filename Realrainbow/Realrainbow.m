%Real Rainbow

%zum Start eine Matrix mit 100 Spalten, die jeweils die Zahlen von -8 bis 8
%in 0.1 Abstandsschritten enthalten
start = ones(1,100) .* (-9:0.1:9).';

%das ganze Quadriert
sq = - (start.^2);

%mit selbstgeschriebener function so verschoben, dass jede Spalte = Spalte
%davor + 1 ist 
RB = verschiebe(sq);

%mit rainbow geplottet
rainbow(RB)
 
ax = axis;

axis([ax(1)-10 size(RB,1)+0.05*size(RB,1)  ax(3) ax(4)])