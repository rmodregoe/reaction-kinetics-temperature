%3)Representacion f(theta) para distintos beta


q=6;
beta=1;
theta=0:0.01:1;
f=@(x) (1-x)./(1+q*x).*exp(-beta*(1+q)./(1+q*x));
fi=f(theta);
figure
plot(theta,fi)
title('beta=1')
  

% 4) Resolución numérica de la ecuación

%Datos y condiciones de contorno
f=@(x) (1-x)./(1+q*x).*exp(-beta*(1+q)./(1+q*x));
dt=0.01;
T=-7:dt:7;
beta=40;
q=6;
theta1=0;
theta=1-1e-10;
Theta=zeros(length(T),1);
j=length(T);
c1=1.475;

for i=-7:dt:7
    theta_v=theta;
    theta=theta-dt*theta1;
    theta1=theta1-dt*(theta1-(1/c1^2)*beta*f(theta_v)*q*beta*exp(beta));
    Theta(j)=theta;
    j=j-1;
end
plot(T,Theta)
title('beta=40, c1=1.575')
xlim([-7,7])

