format shortG
UPraw1=UP(2:20,:);
UPraw2=UP(22:43,:);
UPraw3=UP(45:74,:);
UPdata{1}=UPraw1;
UPdata{2}=UPraw2;
UPdata{3}=UPraw3;
load data.mat zlayc
% test=interp1(UPraw1(:,2),UPraw1(:,4),zlayc)
for i=1:3
    UPintWS{i}=interp1(UPdata{i}(:,2),UPdata{i}(:,4),zlayc);
    UPintD{i}=interp1(UPdata{i}(:,2),UPdata{i}(:,5),zlayc);
end
[UPintWS{1}' UPintD{1}' UPintWS{2}' UPintD{2}' UPintWS{3}' UPintD{3}']
save UP.mat