function homebnjfdo(M)
x1(1)=M(5,1);
x2(1)=M(5,2);
x3(1)=M(5,3);
N=100;
n=1;
tol=0.0001;
while n<100
    x1(n+1)=(1/M(1,1))*(M(2,1)+M(3,1)*x2(n)+M(4,1)*x3(n));
    x2(n+1)=(1/M(1,2))*(M(2,2)+M(3,2)*x1(n+1)+M(4,2)*x3(n));
    x3(n+1)=(1/M(1,3))*(M(2,3)-M(3,3)*x1(n+1)+M(4,3)*x2(n+1));
    dx1=abs(x1(n+1)-x1(n));
    dx2=abs(x2(n+1)-x2(n));
    dx3=abs(x3(n+1)-x3(n));
    if ((dx1<tol)&&(dx2<tol)&&(dx3<tol))
        break;
    end
    n=n+1;
end
for i=1:n
   fprintf('%10.0f\t %10.3f\t %10.3f\t %10.3f\n',i-1,x1(i),x2(i),x3(i))
end
end
