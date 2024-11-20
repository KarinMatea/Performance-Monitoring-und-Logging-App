
# Flask Monitoring mit Prometheus und Grafana

## Über das Projekt
Dieses Repository enthält eine Flask-Anwendung, die mit einem Monitoring- und Logging-System ausgestattet ist, das Prometheus zur Metrikensammlung und Grafana zur Metrikenvisualisierung verwendet.

## Schnellstart
Folgen Sie diesen Schritten, um die Anwendung und das Monitoring-System aufzusetzen:

### Voraussetzungen
- Docker
- Docker Compose

### Anwendung starten
Um die Anwendung zu starten, führen Sie den folgenden Befehl aus:
```sh
docker-compose up -d
```

Dieser Befehl startet alle Dienste, die in der `docker-compose.yml` definiert sind, einschließlich der Flask-Anwendung, Prometheus und Grafana.

### Prometheus
Prometheus wird automatisch konfiguriert, um Metriken von der Flask-Anwendung zu sammeln. Sie können auf das Prometheus-Dashboard zugreifen unter:
```
http://localhost:9090
```

### Grafana
Grafana wird verwendet, um die gesammelten Metriken zu visualisieren. Zugriff auf Grafana erhalten Sie unter:
```
http://localhost:3000
```
Standardmäßige Anmeldeinformationen sind `admin` für den Benutzernamen und das Passwort (sofern nicht anders konfiguriert).

## Konfiguration
- `Dockerfile`: Enthält die Anweisungen zum Erstellen des Docker-Images für die Flask-Anwendung.
- `docker-compose.yml`: Definiert die Dienste für die Anwendung und das Monitoring-System.
- `app.py`: Die Flask-Anwendung.
- `requirements.txt`: Die Python-Abhängigkeiten.

## Probleme
Wenn Sie auf Probleme stoßen, überprüfen Sie bitte das `ISSUES.md`-Dokument, das eine Liste bekannter Probleme und deren Lösungen enthält.

## Lizenz
Dieses Projekt ist lizenziert unter der MIT Lizenz - siehe die `LICENSE` Datei für Details.
