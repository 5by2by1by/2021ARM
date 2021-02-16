function [ output_args ] = mycrosscor( input_args1,  input_args2)
%  calculate cross-correlation

[c1, t] = xcov(input_args1, input_args2);
c2 = max(abs(xcov(input_args1)));
c3 = max(abs(xcov(input_args2)));

output_args = c1 / (c2*c3)^0.5;

n = length(output_args);
m = floor(n/2);
x = (1-m):(n-m);
plot(t, output_args)

end
