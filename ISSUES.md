# Bekannte Probleme und Lösungen

## Problem 1: Python-Installation
**Beschreibung:** Die virtuelle Umgebung konnte nicht erstellt werden, weil Python nicht installiert war oder nicht gefunden wurde.
**Lösung:** Stellen Sie sicher, dass Python korrekt installiert ist und der Pfad zur Python-Executable in der Umgebungsvariable `PATH` enthalten ist.

## Problem 2: Ausführung von PowerShell-Skripten
**Beschreibung:** PowerShell-Skripte können aufgrund von Ausführungsrichtlinien nicht gestartet werden.
**Lösung:** Ändern Sie die Ausführungsrichtlinie in PowerShell mit `Set-ExecutionPolicy`, zum Beispiel: `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`.

## Problem 3: Flask-Modul im Docker-Container nicht gefunden
**Beschreibung:** Beim Starten des Docker-Containers wurde ein Fehler ausgelöst, da das Flask-Modul nicht gefunden wurde.
**Lösung:** Überprüfen Sie, ob die `requirements.txt`-Datei das Flask-Paket enthält und ob das `Dockerfile` die Datei korrekt kopiert und die Pakete installiert.

## Problem 4: Verständnis der Metriken
**Beschreibung:** Unklarheit über die zu visualisierenden Metriken und deren Interpretation.
**Lösung:** Verwenden Sie `prometheus_flask_exporter` zur automatischen Erfassung von Metriken. Für spezifische Metrik-Anforderungen, definieren Sie benutzerdefinierte Metriken in Ihrer Flask-Anwendung.

## Problem 5: Prometheus kann Flask-Service nicht erreichen
**Beschreibung:** Prometheus meldete den Flask-Service als "DOWN", obwohl der Service lief.
**Lösung:** Überprüfung und Anpassung der IP-Adresse des Flask-Services in der `prometheus.yml`-Datei. Die Verwendung der internen Docker-Netzwerk-IP-Adresse des Flask-Containers (z. B. `172.24.0.2:5000`) anstelle des Service-Namens löste das Problem.

## Allgemeine Tipps
- Überprüfen Sie immer die Logs Ihrer Dienste, wenn etwas nicht wie erwartet funktioniert.
- Stellen Sie sicher, dass alle Dienste die korrekte Konfiguration verwenden und Netzwerkeinstellungen korrekt sind.
- Bei Problemen mit Docker oder Docker Compose, nutzen Sie `docker logs` um Fehler zu identifizieren.
