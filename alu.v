module alu

(
    input a,
    input b,
    output y_and,
    output y_or,
    output y_not,
    output y_xor
);

and_gate u0
(
    .a(a),
    .b(b),
    .y(y_and)
);

or_gate u1

(
    .a(a),
    .b(b),
    .y(y_or)
);

not_gate u2

(
    .a(a),
    .y(y_not)
);


xor_gate u3

(
    .a(a),
    .b(b),
    .y(y_xor)
);
endmodule