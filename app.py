from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello MOrdecai yyeey first CID pipeline"

@app.route("/health")
def health():
    return {"status": "healthy"}

if __name__ == "__main__":
    # Bind to 0.0.0.0 so Docker exposes the port
    app.run(host="0.0.0.0", port=5000)
