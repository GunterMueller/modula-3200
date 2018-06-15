DEFINITION MODULE MCP4ConstArithmetic; (* AFB 9/83 *)

   FROM MCP4AttributSys IMPORT
      ArithmeticType, Attribut;
   FROM MCP4Register IMPORT
      Reg;

   (*
   EXPORT QUALIFIED
      ConstMul, ConstDiv, ConstMod, ConstMulReg, ConstDivReg, ConstModReg;
   *)
   
   PROCEDURE ConstMul(aT: ArithmeticType; VAR fat: Attribut; value: CARDINAL);

   PROCEDURE ConstDiv(aT: ArithmeticType; VAR fat: Attribut; value: CARDINAL);

   PROCEDURE ConstMod(aT: ArithmeticType; VAR fat: Attribut; value: CARDINAL);

   PROCEDURE ConstMulReg(aT: ArithmeticType; rg: Reg; value: CARDINAL);

   PROCEDURE ConstDivReg(aT: ArithmeticType; rg: Reg; value: CARDINAL);

   PROCEDURE ConstModReg(aT: ArithmeticType; rg: Reg; value: CARDINAL);

END MCP4ConstArithmetic.
