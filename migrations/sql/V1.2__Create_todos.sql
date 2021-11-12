-- CreateTable
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE "todos" (
    "id" TEXT NOT NULL DEFAULT uuid_generate_v4(),
    "title" TEXT NOT NULL,
    "userId" TEXT NOT NULL,

    CONSTRAINT "todos_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "todos" ADD CONSTRAINT "todos_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
