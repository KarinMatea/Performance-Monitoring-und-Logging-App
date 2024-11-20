from flask import Flask
from prometheus_flask_exporter import PrometheusMetrics

app = Flask(__name__)
metrics = PrometheusMetrics(app)

# Statische Informationen als Metrik
metrics.info('app_info', 'Anwendungsinfo', version='1.0.0')

@app.route('/')
def main():
    return 'Karin ist hier!'

if __name__ == '__main__':
    app.run(host='0.0.0.0')
