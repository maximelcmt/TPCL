@echo off
echo Démarrage de Laravel et Nuxt...
start "Laravel" cmd /k "cd backend && php artisan serve"
timeout /t 2 /nobreak >nul
start "Nuxt" cmd /k "cd frontend && npm run dev"
echo Laravel: http://localhost:8000
echo Nuxt: http://localhost:3000
pause

