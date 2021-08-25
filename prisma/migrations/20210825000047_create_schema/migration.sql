-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "name" TEXT NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LotteryDraw" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "drawNumber" INTEGER NOT NULL,
    "sortedNumbers" INTEGER[],
    "date" TIMESTAMP(3) NOT NULL,

    PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LotteryTicket" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "ticketNumber" INTEGER NOT NULL,
    "ownerId" INTEGER NOT NULL,
    "drawNumber" INTEGER NOT NULL,
    "numbers" INTEGER[],

    PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User.email_unique" ON "User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "LotteryDraw.drawNumber_unique" ON "LotteryDraw"("drawNumber");

-- AddForeignKey
ALTER TABLE "LotteryTicket" ADD FOREIGN KEY ("ownerId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LotteryTicket" ADD FOREIGN KEY ("drawNumber") REFERENCES "LotteryDraw"("id") ON DELETE CASCADE ON UPDATE CASCADE;
