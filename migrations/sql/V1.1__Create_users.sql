-- CreateTable
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE "users" (
    "id" TEXT NOT NULL DEFAULT uuid_generate_v4(),
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);
