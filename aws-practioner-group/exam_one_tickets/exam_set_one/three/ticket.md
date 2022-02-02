```txt
3. Which of the following service can be used to host a
MariaDB database on the AWS Cloud?
    - AWS DynamoDB
    - AWS S3
    + AWS RDS
    - AWS Aurora
```

To answer for this question we should answer what is `MariaDB`? 

MariaDB is fork of MySQL from 5.2 version with her custom database engines which extends and overload MyISAM to Aria and InnoDB to XtraDB. 

Aria improved relability and consistency of data, also operation long supports ability to restore database from any point in bulk operactions - (includes CREATE / DROP / RENAME / TRUNCATE).

XtraDB was merged with newest version of InnoDB. 

Sphinx - storage for search queries. Mounted Sphinx-client allow MariadDB to exchange data with searchd, execute search queries and accept results.
```

Conclusion - due our previous question we know that: Aurora - supports only original MySQL and PosgreSQL, S3 - is a file storage, DynamoDB - key-value memory storage and RDS is a wrapper around SQL based databases. 
