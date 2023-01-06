import pymysql

from app import app
from flask import render_template
from flaskext.mysql import MySQL

@app.route('/')
@app.route('/index')
def index():
    user = {'username': 'Alifia'}
    return render_template('index.html', title='Home', user=user)

# database
mysql = MySQL(app)
# konfigurasi database
app.config['MYSQL_DATABASE_USER'] = 'root'
app.config['MYSQL_DATABASE_PASSWORD'] = '123456'
app.config['MYSQL_DATABASE'] = 'sistem_informasi_siswa'

