DROP TABLE IF EXISTS folders_noteful;

CREATE TABLE folders_noteful (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    folder_name VARCHAR NOT NULL
);