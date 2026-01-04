# Script pour démarrer Laravel et Nuxt
Write-Host "Démarrage de Laravel et Nuxt..." -ForegroundColor Cyan

# Démarrer Laravel en arrière-plan
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd backend; php artisan serve" -WindowStyle Minimized

# Attendre un peu
Start-Sleep -Seconds 2

# Démarrer Nuxt en arrière-plan
Start-Process powershell -ArgumentList "-NoExit", "-Command", "cd frontend; npm run dev" -WindowStyle Minimized

Write-Host "Laravel: http://localhost:8000" -ForegroundColor Blue
Write-Host "Nuxt: http://localhost:3000" -ForegroundColor Green

