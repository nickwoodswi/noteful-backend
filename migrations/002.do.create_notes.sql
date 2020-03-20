DROP TABLE IF EXISTS notes_noteful;

CREATE TABLE notes_noteful (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    note_name VARCHAR NOT NULL,
    content VARCHAR NOT NULL,
    date_added TIMESTAMPTZ NOT NULL DEFAULT now(),
    folder INTEGER REFERENCES folders_noteful(id) NOT NULL
)