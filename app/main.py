from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return """
    <h1>test flask siema</h1>
    <p>test stronki oby bylo git</p>
    """

@app.route("/hello")
def hello():
    return "Hello from Flask!"

if __name__ == "__main__":
    # Uruchomienie aplikacji na porcie 5000
    app.run(host="0.0.0.0", port=5000)
