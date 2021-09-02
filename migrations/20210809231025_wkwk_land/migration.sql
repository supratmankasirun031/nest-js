-- CreateTable
CREATE TABLE "Sampel" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "nomor_sampel" TEXT NOT NULL,
    "nama_sampel" TEXT NOT NULL,
    "jenis_sampel" TEXT NOT NULL,
    "lokasi_sampel" TEXT NOT NULL,
    "tanggal_pengambilan" DATETIME NOT NULL,
    "nama_alat" TEXT NOT NULL,
    "type" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "SampelDetail" (
    "sampel_id" TEXT NOT NULL,
    "parameter_uji" TEXT NOT NULL,
    "satuan" TEXT NOT NULL,
    "hasil_uji" TEXT NOT NULL,
    "standard" TEXT NOT NULL,
    "keterangan" TEXT NOT NULL,

    PRIMARY KEY ("sampel_id", "parameter_uji"),
    FOREIGN KEY ("sampel_id") REFERENCES "Sampel" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);
