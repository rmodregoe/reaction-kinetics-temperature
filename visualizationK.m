% REPRESENTACIÓN K1,K2,K3

T = 1000:100:3000;
k1=@(T)1.8E4*exp(-38368./T);
k2=@(T)6.4E9*exp(-39139./T);
k3=@(T)3E13 + 0*T;

K1=k1(T);
K2=k2(T);
K3=k3(T);
semilogy(T,K1,'r')
hold on
semilogy(T,K2,'b')
semilogy(T,K3,'g')
hold off
legend('K1','K2','K3')
