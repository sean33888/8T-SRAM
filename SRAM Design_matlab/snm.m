%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function y=snm(x1,y1,x2,y2)

u1=(x1-y1)/sqrt(2);
v1=(x1+y1)/sqrt(2);
u2=(y2-x2)/sqrt(2);
v2=(x2+y2)/sqrt(2);

v22=interp1(u2,v2,u1,'spline');

v3=v22-v1;
v4=ones(0);
index=1;
flag=0;

for index=1:length(v3);

if (v3(index)<0)&(flag==0);
	v4=v4;
	flag=0;
elseif (v3(index)>0)&((flag==0)||(flag==1));
	v4=v4;
	flag=1;
elseif (v3(index)<0)&((flag==1)||(flag==2));
	v4=[v4, v3(index)];
	flag=2;
elseif (v3(index)>0)&((flag==2)||(flag==3));
	v4=[v4, v3(index)];
	flag=3;
elseif (v3(index)<0)&((flag==3)||(flag==4));
	v4=v4;
	flag=4;
else
	v4=v4;
	flag=flag;
end;

end;

%y=v4;
y=min(abs(max(v4)) , abs(min(v4)))/sqrt(2);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%