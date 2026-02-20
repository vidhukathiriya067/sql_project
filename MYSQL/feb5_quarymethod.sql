create user "febb_5"@"localhost" Identified by "FB@1234";

GRANT SELECT ON vie.* TO "febb_5"@"localhost";

GRANT SELECT, UPDATE ON vie.* TO "febb_5"@"localhost";

REVOKE UPDATE ON  vie.* FROM  "febb_5"@"localhost";

