-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Link" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "description" TEXT,
    "url" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "size" REAL
);
INSERT INTO "new_Link" ("id", "createdAt", "description", "url", "name") SELECT "id", "createdAt", "description", "url", "name" FROM "Link";
DROP TABLE "Link";
ALTER TABLE "new_Link" RENAME TO "Link";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
