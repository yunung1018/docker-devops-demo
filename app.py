from flask import Flask
import os

app = Flask(__name__)

GREETING = os.environ.get("GREETING", "Hello")

@app.route("/")
def hello_world():
    return {"message": f"{GREETING}, Docker!"}

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)