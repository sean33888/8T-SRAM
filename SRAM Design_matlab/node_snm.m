%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
node1=importdata('D:\snm\q.csv',',');
node2=importdata('D:\snm\qb.csv',',');
x1=ones(0);
x2=ones(0);
y1=ones(0);
y2=ones(0);
for pos = 1:1:1201;
x1=[x1, node1.data(pos,1)];
y1=[y1, node1.data(pos,2)];
x2=[x2, node2.data(pos,1)];
y2=[y2, node2.data(pos,2)];
end;

y=snm(x1,y1,x2,y2)