@echo off
if "%1"=="start" (
    echo Démarrage de Laravel et Nuxt...
    start "Laravel Server" cmd /k "cd backend && php artisan serve"
    timeout /t 2 /nobreak >nul
    start "Nuxt Server" cmd /k "cd frontend && npm run dev"
    echo.
    echo Laravel: http://localhost:8000
    echo Nuxt: http://localhost:3000
    echo.
    echo Les serveurs sont en cours de démarrage dans des fenêtres séparées.
) else (
    echo Usage: projet start
    echo.
    echo Cette commande démarre Laravel et Nuxt simultanément.
)

