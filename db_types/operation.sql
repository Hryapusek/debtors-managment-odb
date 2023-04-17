/* This file was generated by ODB, object-relational mapping (ORM)
 * compiler for C++.
 */

DROP TABLE IF EXISTS "Operations" CASCADE;

CREATE TABLE "Operations" (
  "id" BIGSERIAL NOT NULL PRIMARY KEY,
  "DebtorID" BIGINT NOT NULL,
  "ValueChange" INTEGER NOT NULL,
  "Time" TIMESTAMP NOT NULL DEFAULT 'now()',
  "Description" TEXT NOT NULL);

ALTER TABLE "Operations"
  ADD CONSTRAINT "DebtorID_fk"
    FOREIGN KEY ("DebtorID")
    REFERENCES "Debtors" ("id")
    INITIALLY DEFERRED;

