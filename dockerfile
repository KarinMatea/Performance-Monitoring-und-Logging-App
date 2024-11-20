# Verwende ein offizielles Python-Runtime-Image als Basis
FROM python:3.8-slim

# Setze das Arbeitsverzeichnis im Container
WORKDIR /usr/src/app

# Kopiere die Datei requirements.txt und installiere die darin aufgeführten Python-Abhängigkeiten
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Kopiere den Rest des Anwendungscodes in das Arbeitsverzeichnis
COPY . .

# Mache Port 5000 verfügbar für die Welt außerhalb dieses Containers
EXPOSE 5000

# Definiere den Standardbefehl, der ausgeführt werden soll, wenn der Container startet
CMD ["python", "./app.py"]

