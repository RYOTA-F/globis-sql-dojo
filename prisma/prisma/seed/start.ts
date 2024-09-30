import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();
import { campuses } from "./campuses";

async function main() {
  await prisma.campus.deleteMany();
  await campuses();
}

main()
  .catch((e) => console.error(e))
  .finally(async () => {
    await prisma.$disconnect();
  });
