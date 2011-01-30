CREATE TABLE "dialects" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "handshapes" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "finger" varchar(255), "url" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "movements" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "url" varchar(255), "position_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "orientations" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "url" varchar(255), "created_at" datetime, "updated_at" datetime);
CREATE TABLE "positions" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "hand" varchar(255), "url" varchar(255), "sign_id" integer, "created_at" datetime, "updated_at" datetime);
CREATE TABLE "schema_migrations" ("version" varchar(255) NOT NULL);
CREATE TABLE "signs" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "order" integer, "created_at" datetime, "updated_at" datetime, "word_id" integer, "left_handshape_id" integer, "right_handshape_id" integer, "left_orientation_id" integer, "right_orientation_id" integer, "position_id" integer, "movement_id" integer);
CREATE TABLE "words" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "text" varchar(255), "memo" text, "created_at" datetime, "updated_at" datetime, "dialect_id" integer);
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
INSERT INTO schema_migrations (version) VALUES ('20110127214354');

INSERT INTO schema_migrations (version) VALUES ('20110127214428');

INSERT INTO schema_migrations (version) VALUES ('20110127214440');

INSERT INTO schema_migrations (version) VALUES ('20110127214452');

INSERT INTO schema_migrations (version) VALUES ('20110127214505');

INSERT INTO schema_migrations (version) VALUES ('20110127214512');

INSERT INTO schema_migrations (version) VALUES ('20110127214525');

INSERT INTO schema_migrations (version) VALUES ('20110130062157');

INSERT INTO schema_migrations (version) VALUES ('20110130064041');

INSERT INTO schema_migrations (version) VALUES ('20110130064050');

INSERT INTO schema_migrations (version) VALUES ('20110130070837');

INSERT INTO schema_migrations (version) VALUES ('20110130070849');

INSERT INTO schema_migrations (version) VALUES ('20110130070856');

INSERT INTO schema_migrations (version) VALUES ('20110130070910');