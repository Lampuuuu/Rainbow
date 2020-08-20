function rainbow(A)
%plottet eine Matrix. Hierbei wird jeweils jede Spalte mit einer Farbe 
%geplottet.


%erstellen einer Figure
close all
figure
hold on

%erstellen einer Variablen für die Breite der Eingangsmatrix
width = size(A,2); 


%erstellen einer Spektrumsvariablen, abhängig von der Breite der
%Eingangsmatrix mit >width< Werten von 0 bis 1 um später die Farbe
%bestimmen zu können


%Spektrum = (0:1/(width):1); %--> wie in der Aufgabe

Spektrum = (1:-1/(width):0); % --> Tatsächlicher Regenbogen


%for-Schleife zum erstellen der plots mit Durchläufen entsprechend der
%Breite der Eingangsmatrix
for cc= 1:width
    
    %Plotvariable um diese später bearbeiten zu können
    h_p(cc) = plot(A(:,cc));
    
    
    %bestimmung der Farbe des Momentanen Plots mit "hsv2rgb"
    color = hsv2rgb(Spektrum(cc),1,1);
    
    %festlegen von Farbe und Lininedicke
    set(h_p(cc), 'color', color, 'LineWidth',3)
    
end


%Achsenveränderung zur Verschönerung.
ax = axis;

axis([ax(1)  ax(2)+0.15*ax(2)  ax(3)-0.1*ax(4)  ax(4)+0.1*ax(4) ])
pbaspect([2 1 1])

