function [X mu sigma] = featureNormalize(X)

m = length(X);
n = size(X,2);
mu = zeros(1,2);
sigma = zeros(1,2);

for a = 1:n
	s = 0;
	for i=1:m
		s += X(i,a);
	end
	mu(1,a) = s/m;
	sigma(1,a) = std(X(:,a));
end

mu;
sigma;

for a = 1:n
	for i = 1:m
		X(i,a) = (X(i,a)-mu(1,a))/sigma(1,a);
	end
end

X;
