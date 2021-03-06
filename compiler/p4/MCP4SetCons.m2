IMPLEMENTATION MODULE MCP4SetConst;

   FROM MCBase IMPORT bigsetroot, SetValuePtr, oneword, maxcard;
   FROM MCP4CodeSys IMPORT EmitDCFValue, EmitLabel, EmitPure, EmitAlign;
   FROM Storage IMPORT DEALLOCATE;
   FROM MCP4Labels IMPORT LabelPtr;

   TYPE BigSetPtr =
           POINTER TO ARRAY[0..(maxcard-oneword) DIV oneword] OF BITSET;

   PROCEDURE EmitSetConst;
      VAR sp: SetValuePtr; index: CARDINAL; lab: LabelPtr; setptr: BigSetPtr;
   BEGIN
      sp := bigsetroot;
      EmitPure;
      EmitAlign;
      WHILE sp <> NIL DO
         WITH sp^ DO
            lab := label;
            IF lab <> NIL THEN
               EmitLabel(lab);
               setptr := valentry;
               FOR index := 0 TO size-1 DO
                  EmitDCFValue(INTEGER(setptr^[index]));
               END;
               DEALLOCATE(valentry, size * oneword);
               DISPOSE(lab);
               lab := NIL;
            END;
            sp := slink;
         END;
      END;
   END EmitSetConst;

END MCP4SetConst.
