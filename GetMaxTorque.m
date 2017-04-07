function [retval] = GetMaxTorque (l1,l2,l3, MinQ1,MaxQ1,MinQ2,MaxQ2,MinQ3,MaxQ3,load)

  while(MinQ1<0) MinQ1+=360;
  end
  while(MinQ2<0) MinQ2+=360;
  end
  while(MinQ3<0) MinQ3+=360;
  end
  while(MaxQ1<0) MaxQ1+=360;
  end
  while(MaxQ2<0) MaxQ2+=360;
  end
  while(MaxQ3<0) MaxQ3+=360;
  end
  if(MinQ1>MaxQ1)
    MaxQ1+=360;
    end
  if(MinQ2>MaxQ2)
    MaxQ2+=360;
    end
  if(MinQ3>MaxQ3)
    MaxQ3+=360;
    end
r=eye(3,3);
r(3,1)=1;r(3,2)=1;r(3,3)=1;
m=0;
m2=0;
m3=0;
for i=MinQ1:10:MaxQ1
  for j=MinQ2:10:MaxQ2
    for k=MinQ3:10:MaxQ3
      r(1,1)=-l1*sind(i)-l2*sind(i+j)-l3*sind(i+j+k);
      r(1,2)=-l2*sind(i+j)-l3*sind(i+j+k);
      r(1,3)=-l3*sind(i+j+k);
      r(2,1)=l1*cosd(i)+l2*cosd(i+j)+l3*cosd(i+j+k);
      r(2,2)=l2*cosd(i+j)+l3*cosd(i+j+k);
      r(2,3)=l3*cosd(i+j+k);
      aa=-r'*load;
      if(abs(aa(1))>abs(m))
        m = aa(1);
      end
      if(abs(aa(2))>abs(m2))
        m2 = aa(2);
      end
      if(abs(aa(3))>abs(m3))
        m3 = aa(3);
      end
     end
   end
end
retval = [m m2 m3];
end
