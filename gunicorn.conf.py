import os
import sys

sys.path.append(os.path.dirname(os.path.abspath(__file__)))

bind = '0.0.0.0:8080'
timeout = 120
graceful_timeout = 60
worker_class = 'gevent'
worker_connections = 10

