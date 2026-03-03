import { PrismaClient } from "@prisma/client";
import bcrypt from "bcryptjs";

const prisma = new PrismaClient();

async function main() {
  const password = await bcrypt.hash("123456", 10);

  const user = await prisma.user.upsert({
    where: { email: "admin@escalei.com" },
    update: {},
    create: {
      email: "admin@escalei.com",
      name: "Admin Escalei",
      password,
      role: "ADMIN",
    },
  });

  console.log({ user });
}

main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
  });
