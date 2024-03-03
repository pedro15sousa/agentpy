CREATE TABLE IF NOT EXISTS jobs (
    param_index INTEGER,
    iteration INTEGER,
    status TEXT NOT NULL,
    PRIMARY KEY (param_index, iteration)
);

CREATE TABLE IF NOT EXISTS results (
    param_index INTEGER,
    iteration INTEGER,
    result_data TEXT,
    FOREIGN KEY (param_index, iteration) REFERENCES jobs(param_index, iteration)
);
