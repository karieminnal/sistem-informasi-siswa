import psycopg2

from app import app
from flask import Flask, render_template, request, flash, url_for, redirect

# konfigurasi database
conn = psycopg2.connect(host="localhost", database="sistem_informasi_siswa", user="postgres", password="123456")
cur = conn.cursor()
# Read
@app.route('/')
def index():
    # koneksi database
    cur.execute("SELECT * FROM tabel_siswa")
    data = cur.fetchall()
    # cur.close()
    # conn.close()

    return render_template('index.html', students = data)

# Create
@app.route('/insert', methods = ['POST'])
def insert():
    if request.method == "POST":
        flash("Data Inserted Sucessfully")
        nisn = request.form['nisn']
        niss = request.form['niss']
        nama = request.form['nama']
        tanggal_lahir = request.form['tanggal_lahir']
        tempat_lahir = request.form['tempat_lahir']
        alamat = request.form['alamat']
        jenis_kelamin = request.form['jenis_kelamin']
        nama_orangtua = request.form['nama_orangtua']
        asal_sekolah = request.form['asal_sekolah']
        tahun_ijazah = request.form['tahun_ijazah']
        cur.execute("INSERT INTO tabel_siswa (nisn, niss, nama, tanggal_lahir, tempat_lahir, alamat, jenis_kelamin, nama_orangtua, asal_sekolah, tahun_ijazah) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)", (nisn, niss, nama, tanggal_lahir, tempat_lahir, alamat, jenis_kelamin, nama_orangtua, asal_sekolah, tahun_ijazah))
        conn.commit()

        return redirect(url_for('index'))



# Update
# cur.execute("UPDATE users SET name=%s WHERE id=%s", (new_name, id))
# conn.commit()

# Delete
# cur.execute("DELETE FROM users WHERE id=%s", (id,))
# conn.commit()