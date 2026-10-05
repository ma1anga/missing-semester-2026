from flask import Flask
from redis import Redis


app = Flask(__name__)
cache = Redis(host="redis", port=6379)


@app.get("/")
def home():
    visits = cache.incr("visits")
    return f"Visits: {visits}\n"


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
