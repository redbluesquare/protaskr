#@Author: DU71DE
#@Created: 23/10/2019
from flask import Flask, render_template
from flask_cors import CORS
import auth

app = Flask(__name__)
CORS(app)
app.register_blueprint(auth.bp)

@app.route('/', methods=['GET', 'POST'])
def hello_world():
    return render_template('index.html')

def hello_world():
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug = True, port = 5000)