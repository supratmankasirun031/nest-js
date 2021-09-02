/*
  Warnings:

  - You are about to drop the column `standard` on the `SampelDetail` table. All the data in the column will be lost.
  - Added the required column `nilai_ambang_batas` to the `SampelDetail` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_SampelDetail" (
    "sampel_id" TEXT NOT NULL,
    "parameter_uji" TEXT NOT NULL,
    "satuan" TEXT NOT NULL,
    "hasil_uji" TEXT NOT NULL,
    "nilai_ambang_batas" TEXT NOT NULL,
    "keterangan" TEXT NOT NULL,

    PRIMARY KEY ("sampel_id", "parameter_uji"),
    FOREIGN KEY ("sampel_id") REFERENCES "Sampel" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "new_SampelDetail" ("hasil_uji", "keterangan", "parameter_uji", "sampel_id", "satuan") SELECT "hasil_uji", "keterangan", "parameter_uji", "sampel_id", "satuan" FROM "SampelDetail";
DROP TABLE "SampelDetail";
ALTER TABLE "new_SampelDetail" RENAME TO "SampelDetail";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
