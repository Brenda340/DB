CREATE OR REPLACE FUNCTION C##ELI.custom_hash (p_username   IN VARCHAR2,
                                        p_password   IN VARCHAR2)
   RETURN VARCHAR2
IS
   l_password   VARCHAR2 (4000):=p_password;
   l_salt       VARCHAR2 (4000) := p_username;
BEGIN
   l_password :=
      UTL_RAW.cast_to_raw (
         DBMS_OBFUSCATION_TOOLKIT.md5 (
            input_string   =>    p_password
                              || SUBSTR (l_salt, 10, 13)
                              || p_username
                              || SUBSTR (l_salt, 4, 10)));
   RETURN l_password;
END;
/
