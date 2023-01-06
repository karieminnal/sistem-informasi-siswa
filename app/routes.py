import pymysql

from app import app
from flask import Flask, render_template, request, jsonify
from flaskext.mysql import MySQL

# konfigurasi database
app.config['MYSQL_HOST'] = '127.0.0.1'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'sistem_informasi_siswa'

mysql = MySQL(app)

# @app.route('/')
# def contoh():
#     return render_template('index.html')

# Read
@app.route('/')
def index():
    # koneksi database
    conn = mysql.connect()
    cur = conn.cursor()
    cur.execute("SELECT * FROM tabel_siswa")
    data = cur.fetchall()
    cur.close()
    conn.close()

    return render_template('index.html', students = data)

# Create
# cur.execute("INSERT INTO users (name, email) VALUES (%s, %s)", (name, email))
# conn.commit()

# Update
# cur.execute("UPDATE users SET name=%s WHERE id=%s", (new_name, id))
# conn.commit()

# Delete
# cur.execute("DELETE FROM users WHERE id=%s", (id,))
# conn.commit()
