IMPLEMENTATION MODULE SysKill;

   FROM SystemTypes IMPORT Sig, ProcessId;
   FROM Errno IMPORT errno;
   FROM Sys IMPORT kill;
   FROM SYSTEM IMPORT UNIXCALL;

   PROCEDURE Kill(pid: ProcessId; sig: Sig) : BOOLEAN;
      VAR r0, r1: ProcessId;
   BEGIN
      IF UNIXCALL(kill, r0, r1, pid, sig) THEN
         RETURN TRUE
      ELSE
         errno := CARDINAL(r0);
         RETURN FALSE
      END;
   END Kill;

END SysKill.
