# 1. Wybierz oficjalny obraz Pythona jako bazę
FROM python:3.9-slim

# 2. Ustaw katalog roboczy w kontenerze
WORKDIR /app

# 3. Skopiuj plik requirements.txt i zainstaluj zależności
COPY requirements.txt /app
RUN pip install --no-cache-dir -r requirements.txt

# 4. Skopiuj resztę plików do /app
COPY . /app

# 5. Otwórz port 5000
EXPOSE 5000

# 6. Uruchom główny plik aplikacji
CMD ["python", "app/main.py"]
