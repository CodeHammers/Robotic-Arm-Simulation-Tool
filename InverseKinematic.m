function [retval] = InverseKinematic (l1,l2,l3, a,b,theta)
a=a-l3*cosd(theta);
b=b-l3*sind(theta);
r=sqrt(a*a+b*b);
alpha=(l1*l1+r*r-l2*l2)/(2*l1*r);
q1=0;
 q2=0;
 q3=0;
 q11=0;q22=0;q33=0;
if(alpha>=-1&&alpha<=1)
  alpha=-acos(alpha);
  if(alpha==-0)
  alpha=0
  end
  if(a~=0)
  q1=atan(b/a)-alpha;
  else
  q1=pi/2;
  end
  q2=atan((r*sin(alpha))/(r*cos(alpha)-l1));
  q3=theta*pi/180-q1-q2;
  q1=(q1*180) / pi;
  q2 = (q2*180)/ pi;
  q3 = (q3*180)/pi;
  alpha=-alpha;
  if(a~=0)
  q11=atan(b/a)-alpha;
  else
  q11=pi/2-alpha;
  end
  q22=atan((r*sin(alpha))/(r*cos(alpha)-l1));
  q33=theta-q11-q22;
  q11=(q11*180) / pi;
  q22 = (q22*180)/ pi;
  q33 = (q33*180)/pi;
  if(q1<0)
  q1=q1+360;
  end
  while(q2<0)
  q2=q2+360;
  end
  while(q3<0)
  q3=q3+360;
  end
  while(q11<0)
  q11=q11+360;
  end
  while(q22<0)
  q22=q22+360;
  end
  while(q33<0)
  q33=q33+360;
  end
  else
    disp('Cannot reach ,irony :V \n');
    return;
 end
 if(q1~=q11&&q2~=q22&&q3~=q33)
 disp([q1 q2 q3 q11 q22 q33]);
 retval= [q1 q2 q3 q11 q22 q33];
 else
 disp([q1 q2 q3]);
 retval= [q1 q2 q3];
 end
end
