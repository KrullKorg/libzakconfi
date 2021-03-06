CREATE TABLE configs (
    id integer NOT NULL,
    name varchar(100) DEFAULT '',
    description varchar(255) DEFAULT '',
    CONSTRAINT configs_pkey PRIMARY KEY (id),
    CONSTRAINT name_unique UNIQUE (name)
);

CREATE TABLE "values" (
    id_configs integer NOT NULL,
    id integer NOT NULL,
    id_parent integer DEFAULT 0,
    "key" varchar(50) DEFAULT '',
    value text DEFAULT '',
    description varchar(255) DEFAULT '',
    CONSTRAINT values_pkey PRIMARY KEY (id_configs, id),
    CONSTRAINT values_name_unique UNIQUE (id_configs, id_parent, "key")
);
