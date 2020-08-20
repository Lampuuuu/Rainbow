function  Out = verschiebe(x)

for cc = 1:(size(x,2))
    
    Out(:,cc) = x(:,cc) +cc;
end