BEGIN;
CREATE TABLE "news_news" (
    "id" integer NOT NULL PRIMARY KEY,
    "title" varchar(250) NOT NULL,
    "display_title" bool NOT NULL,
    "body" text NOT NULL,
    "post_date" datetime,
    "unpost_date" datetime,
    "order" integer NOT NULL UNIQUE,
    "create_date" datetime NOT NULL,
    "modified_date" datetime NOT NULL
)
;
COMMIT;
