# README
Ini adalah repositori untuk tugas programming Flutter mata kuliah PBP 2024/2025 milik Daffa Desra Hastiar (2306165490) dari kelas PBP C.

# TUGAS 7
## 1. Jelaskan apa yang dimaksud dengan  _stateless widget dan stateful widget_, dan jelaskan perbedaan dari keduanya.
**Stateless Widget** adalah widget yang tidak memiliki _state_, sehingga tidak dapat berubah setelah dibuat. Ini berarti bahwa semua data atau tampilan yang ditampilkan oleh widget ini tetap sama, kecuali dipengaruhi oleh perubahan dari _parent widget_. Contoh penggunaan stateless widget adalah untuk tampilan yang statis seperti teks atau gambar yang tidak berubah-ubah​

**Stateful Widget**, di sisi lain, adalah widget yang memiliki _state_ atau keadaan yang dapat berubah selama masa hidup widget tersebut. _State_ ini memungkinkan widget untuk memperbarui dirinya dan menampilkan perubahan sesuai dengan data terbaru. _Stateful widget_ biasanya digunakan untuk elemen yang memiliki interaksi dengan pengguna, seperti tombol atau input teks yang dinamis
## 2. Sebutkan  _widget_  apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Pada proyek ini, kemungkinan digunakan beberapa widget dasar Flutter seperti:

-   `Text`: Menampilkan teks pada layar.
-   `Button`: Sebagai elemen interaktif yang merespon ketika diklik oleh pengguna.
-   `Image`: Untuk menampilkan gambar.
-   `Container`: Widget serbaguna yang dapat digunakan untuk layout, memungkinkan pengaturan margin, padding, warna, dll.
-   `Column` dan `Row`: Mengatur tata letak widget dalam bentuk kolom atau baris. Setiap widget ini memiliki fungsinya masing-masing sesuai dengan peran dalam mengatur tampilan dan interaksi pada aplikasi Flutter​
## 3. Apa fungsi dari  `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` digunakan dalam _stateful widget_ untuk memberi tahu Flutter bahwa ada perubahan _state_ pada widget tersebut, sehingga perlu dilakukan pembaruan tampilan. Setiap variabel atau data yang terikat pada _state_ dapat terdampak oleh fungsi ini, artinya ketika _state_ tersebut diperbarui melalui `setState()`, widget akan direbuild untuk mencerminkan data terbaru
## 4. Jelaskan perbedaan antara  `const`  dengan  `final`.
* `const` digunakan untuk mendeklarasikan variabel yang bersifat tetap dan diinisialisasi pada waktu kompilasi. Ini berarti bahwa nilai dari variabel `const` tidak dapat diubah setelah ditetapkan, dan harus diketahui pada saat kompilasi.
* `final` mirip dengan `const`, namun nilainya dapat ditentukan pada saat _runtime_. Dengan kata lain, `final` dapat digunakan untuk nilai yang hanya perlu ditetapkan sekali dan tidak akan berubah, namun nilainya bisa diinisialisasi saat aplikasi dijalankan​
## 5. Jelaskan bagaimana cara kamu mengimplementasikan  _checklist-checklist_  di atas.