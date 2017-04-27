
clear all, close all, clc

numSteps = 7;
%*** define exact solution u and RHS f
uExact = @(x,y)(sin(2*pi*x).*sin(2*pi*y))
%%% TODO

%% errors
err = zeros(1,numSteps);

for k=1:numSteps
n=2^k;

%*** Discretization parameter

% Gitterpunkte je Richtung:
n = 5;
% TODO
[x,y] = meshgrid(0:1/(n+1):1,0:1/(n+1):1);
sol = feval(uExact, x,y)

%*** Create coefficient matrix for 2nd order term

% TODO


%*** Matrix for transport term

% TODO

%*** Matrix for reaction term 

% TODO


%*** Compute right side and solve LSE

%% TODO


% Compute error 

%% TODO

end 

%*** Plot solution
surf(x,y,sol(x,y),'facecolor','interp')

loglog(2.^(1:numSteps),err,'-*')
hold on 
loglogTriangle(10,20,0.01,2,'l')