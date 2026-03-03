# 1. Criar .gitignore (Garante que node_modules e .env não subam)
Write-Host "Criando .gitignore..."
$gitignore = @"
# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# next.js
/.next/
/out/

# production
/build

# misc
.DS_Store
*.pem

# debug
npm-debug.log*
yarn-debug.log*
ts-debug.log*

# local env files
.env*.local
.env

# vercel
.vercel

# typescript
*.tsbuildinfo
next-env.d.ts
"@
Set-Content -Path ".gitignore" -Value $gitignore

# 2. Inicializar Git
Write-Host "Inicializando repositório Git..."
git init

# 3. Adicionar arquivos
Write-Host "Adicionando arquivos..."
git add .

# 4. Primeiro Commit
Write-Host "Realizando primeiro commit..."
git commit -m "Initial commit: Escalei Project Setup (Next.js + Prisma + Tailwind)"

# 5. Adicionar Remote (Atenção: Substitua SEU_USUARIO abaixo!)
Write-Host "Adicionando remote origin..."
# IMPORTANTE: Se o repositório já tiver arquivos (como README), o push pode falhar.
# Nesse caso, use 'git pull origin main --allow-unrelated-histories' antes.

Write-Host "PRONTO! Agora execute manualmente:"
Write-Host "git remote add origin https://github.com/humbertohabib/escalei.git"
Write-Host "git branch -M main"
Write-Host "git push -u origin main"