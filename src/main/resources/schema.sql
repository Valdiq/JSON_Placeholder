CREATE TABLE IF NOT EXISTS geo
(
    id  SERIAL PRIMARY KEY,
    lat VARCHAR(255),
    lng VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS address
(
    id      SERIAL PRIMARY KEY,
    street  VARCHAR(255),
    suite   VARCHAR(255),
    city    VARCHAR(100),
    zipcode VARCHAR(100),
    geo_id  INT REFERENCES geo (id)
);

CREATE TABLE IF NOT EXISTS company
(
    id           SERIAL PRIMARY KEY,
    bs           VARCHAR(255),
    catch_phrase VARCHAR(255),
    name         VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS user
(
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(100),
    username   VARCHAR(100),
    email      VARCHAR(100),
    phone      VARCHAR(50),
    website    VARCHAR(100),
    address_id INT REFERENCES address (id),
    company_id INT REFERENCES company (id)
);

CREATE TABLE IF NOT EXISTS post
(
    id      SERIAL PRIMARY KEY,
    title   VARCHAR(255),
    body    VARCHAR(255),
    user_id INT REFERENCES user (id)
);
