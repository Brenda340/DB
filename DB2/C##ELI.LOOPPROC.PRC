CREATE OR REPLACE PROCEDURE C##ELI.Loopproc (INVAL NUMBER, N NUMBER)
IS
    TMPVAR    NUMBER;
    TMPVAR2   NUMBER;
    TOTAL     NUMBER;
BEGIN

    TMPVAR := 1;

    TMPVAR2 := 0;

    TOTAL := 0;


    FOR LCV IN 1 .. INVAL
    LOOP
        TOTAL := 2 * TOTAL + 1 - TMPVAR2;

        TMPVAR2 := TMPVAR;

        TMPVAR := TOTAL;

    END LOOP;



    DBMS_OUTPUT.PUT_LINE ('TOTAL IS' || TO_CHAR (TOTAL));

END Loopproc;
--this is a comment and
--this is ither comment
/
