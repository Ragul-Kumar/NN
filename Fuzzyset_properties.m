% Define fuzzy sets and universal elements
a = [1.0, 0.4, 0.2];
b = [0.2, 0.43, 0.44];
c = [0.2, 0.93, 0.24];
e = [1, 1, 1]; % Universal set (ones)
o = [0, 0, 0]; % Null set (zeros)

% Display sets
disp('A:');
disp(a);
disp('B:');
disp(b);
disp('C:');
disp(c);

% Union and Intersection
a_U_b = max(a, b);
a_N_b = min(a, b);

disp('A U B:');
disp(a_U_b);
disp('A N B:');
disp(a_N_b);

% Commutative Property
disp('Commutative Property:');
disp('A U B:'); disp(a_U_b);
disp('B U A:'); disp(max(b, a));
disp('A N B:'); disp(a_N_b);
disp('B N A:'); disp(min(b, a));

% Associative Property
disp('Associative Property:');
disp('(A U B) U C:'); disp(max(max(a, b), c));
disp('A U (B U C):'); disp(max(a, max(b, c)));
disp('(A N B) N C:'); disp(min(min(a, b), c));
disp('A N (B N C):'); disp(min(a, min(b, c)));

% Distributive Property
disp('Distributive Property:');
disp('A U (B N C):'); disp(max(a, min(b, c)));
disp('(A U B) N (A U C):'); disp(min(max(a, b), max(a, c)));
disp('A N (B U C):'); disp(min(a, max(b, c)));
disp('(A N B) U (A N C):'); disp(max(min(a, b), min(a, c)));

% Absorption Property
disp('Absorption Property:');
disp('A U (A N B):'); disp(max(a, min(a, b)));
disp('A N (A U B):'); disp(min(a, max(a, b)));

% Idempotent Property
disp('Idempotent Law:');
disp('A U A:'); disp(max(a, a));
disp('A N A:'); disp(min(a, a));

% Involution Property
disp('Involution:');
disp('(A_i)_i:'); disp(1 - (1 - a));

% De Morgan's Law
disp("De Morgan's Law:");
disp('(A U B)_i:'); disp(1 - a_U_b);
disp('A_i N B_i:'); disp(min(1 - a, 1 - b));
disp('(A N B)_i:'); disp(1 - a_N_b);
disp('A_i U B_i:'); disp(max(1 - a, 1 - b));

% Identity Property
disp('Identity Property:');
disp('A U o:'); disp(max(a, o));
disp('A N o:'); disp(min(a, o));

% Axiom of Excluded Middle
disp('Axiom of Excluded Middle:');
disp('A U A_i:'); disp(max(a, 1 - a));
disp('E:'); disp(e);

% Axiom of Contradiction
disp('Axiom of Contradiction:');
disp('A N A_i:'); disp(min(a, 1 - a));
disp('o:'); disp(o);
