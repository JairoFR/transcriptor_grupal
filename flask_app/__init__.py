import os
from flask import Flask
app = Flask(__name__)
app.secret_key =app.secret_key = os.environ.get("APP_SECRET_KEY")

