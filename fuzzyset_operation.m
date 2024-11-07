% Input fuzzy sets
a = input('Enter the fuzzy set a: '); 
b = input('Enter the fuzzy set b: ');

% Ensure a and b are valid fuzzy sets
if length(a) ~= length(b)
    error('Fuzzy sets a and b must have the same length');
end

% Perform operations
c = a + b;               % Algebraic sum
d = a .* b;              % Algebraic product
as = c - d;              % Algebraic sum with product adjustment
e = 1 - b;               % Complement of set b
ad = min(a, e);          % Algebraic difference
f = a - b;               % Element-wise difference between a and b
bs = min(1, c);          % Bounded sum
bd = max(0, f);          % Bounded difference
g = c - 1;               % Intermediate step for bounded product
bp = max(0, g);          % Bounded product

% Display results
disp('The algebraic sum:'); disp(as); 
disp('The algebraic difference:'); disp(ad); 
disp('The algebraic product:'); disp(d); 
disp('The bounded sum:'); disp(bs); 
disp('The bounded difference:'); disp(bd); 
disp('The bounded product:'); disp(bp); 
