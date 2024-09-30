import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

export const campuses = async () => {
  await prisma.campus.createMany({
    data: Array(10)
      .fill(0)
      .map((_, i) => ({
        name: "test_" + i.toString(),
        address: "test_" + i.toString(),
      })),
  });
};
