# README
Ini adalah repositori untuk tugas programming Flutter mata kuliah PBP 2024/2025 milik Daffa Desra Hastiar (2306165490) dari kelas PBP C.

# TUGAS 7
## 1. Jelaskan apa yang dimaksud dengan  _stateless widget dan stateful widget_, dan jelaskan perbedaan dari keduanya.
**Stateless Widget** adalah widget yang tidak memiliki _state_, sehingga tidak dapat berubah setelah dibuat. Ini berarti bahwa semua data atau tampilan yang ditampilkan oleh widget ini tetap sama, kecuali dipengaruhi oleh perubahan dari _parent widget_. Contoh penggunaan stateless widget adalah untuk tampilan yang statis seperti teks atau gambar yang tidak berubah-ubah​

**Stateful Widget**, di sisi lain, adalah widget yang memiliki _state_ atau keadaan yang dapat berubah selama masa hidup widget tersebut. _State_ ini memungkinkan widget untuk memperbarui dirinya dan menampilkan perubahan sesuai dengan data terbaru. _Stateful widget_ biasanya digunakan untuk elemen yang memiliki interaksi dengan pengguna, seperti tombol atau input teks yang dinamis
## 2. Sebutkan  _widget_  apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Pada proyek ini, beberapa widget yang saya gunakan adalah:
- MaterialApp: Widget utama yang mengatur tampilan dan navigasi aplikasi.
- Scaffold: Widget yang mengatur struktur dasar dari halaman aplikasi, termasuk AppBar dan Body.
- AppBar: Widget yang mengatur tampilan dan perilaku dari AppBar.
- Text: Widget untuk menampilkan teks pada layar.
- Column: Mengatur tata letak widget dalam bentuk kolom.
- Row: Mengatur tata letak widget dalam bentuk baris.
- Container: Widget serbaguna yang dapat digunakan untuk layout, memungkinkan pengaturan margin, padding, warna, dll.
- InkWell: Widget yang membuat area yang dapat diklik pada layar.
- Padding: Widget yang memberikan padding atau ruang kosong di sekitar widget lainnya.
- GridView.count: Widget yang menampilkan item dalam bentuk grid dengan jumlah kolom yang ditentukan.
- Center: Widget yang memusatkan widget lainnya di tengah layar.
- EdgeInsets: Widget yang memberikan padding atau ruang kosong di sekitar widget lainnya.
- ColorScheme: Widget yang mengatur skema warna tema aplikasi.
- ThemeData: Widget yang mengatur tema aplikasi, termasuk warna dan font.
- Colors: Widget yang menyediakan berbagai warna yang dapat digunakan dalam aplikasi.
- Theme.of: Widget yang mengambil tema aplikasi saat ini.
- CrossAxisAlignment: Widget yang mengatur penyelarasan widget dalam arah horizontal.
- MainAxisAlignment: Widget yang mengatur penyelarasan widget dalam arah vertikal.
- SizedBox: Widget yang memberikan ukuran tertentu pada widget lainnya.

## 3. Apa fungsi dari  `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi `setState()` digunakan dalam _stateful widget_ untuk memberi tahu Flutter bahwa ada perubahan _state_ pada widget tersebut, sehingga perlu dilakukan pembaruan tampilan. Setiap variabel atau data yang terikat pada _state_ dapat terdampak oleh fungsi ini, artinya ketika _state_ tersebut diperbarui melalui `setState()`, widget akan direbuild untuk mencerminkan data terbaru
## 4. Jelaskan perbedaan antara  `const`  dengan  `final`.
* `const` digunakan untuk mendeklarasikan variabel yang bersifat tetap dan diinisialisasi pada waktu kompilasi. Ini berarti bahwa nilai dari variabel `const` tidak dapat diubah setelah ditetapkan, dan harus diketahui pada saat kompilasi.
* `final` mirip dengan `const`, namun nilainya dapat ditentukan pada saat _runtime_. Dengan kata lain, `final` dapat digunakan untuk nilai yang hanya perlu ditetapkan sekali dan tidak akan berubah, namun nilainya bisa diinisialisasi saat aplikasi dijalankan​
## 5. Jelaskan bagaimana cara kamu mengimplementasikan  _checklist-checklist_  di atas.
### 1. Langkah Pertama: Menginisiasi proyek flutter baru dengan nama "findyourfits" menggunakan command berikut pada terminal:
```
flutter create find_your_fits_mobile
```
### 2. Langkah Kedua: Mengubah file main.dart menjadi seperti berikut:
```
import 'package:flutter/material.dart';
import 'package:find_your_fits_mobile/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  ...
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Find Your Fits',
        theme: ThemeData(
            ...
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue).copyWith(secondary: Colors.blue[400]),
            useMaterial3: true,
        ),
        home: MyHomePage(),
    );
  }
}
```
Penjelasan:
-   `MyApp` adalah widget utama yang mengatur tema dan tampilan aplikasi.
-   `MyHomePage` adalah widget yang akan ditampilkan saat aplikasi pertama kali dijalankan.
-   `MaterialApp` adalah widget yang mengatur tampilan dan navigasi aplikasi.
-   `ThemeData` adalah widget yang mengatur tema aplikasi, termasuk warna dan font.
-   `ColorScheme` adalah widget yang mengatur skema warna aplikasi. Pada aplikasi ini, warna utama adalah biru dengan sedikit perubahan warna.
-   `useMaterial3` adalah widget yang mengatur apakah aplikasi menggunakan material design versi 3.
### 3. Langkah Ketiga: Membuat file baru dengan nama "menu.dart" yang terdiri dari beberapa bagian, yaitu:
**a. import package yang diperlukan**
```
import 'package:flutter/material.dart';
```
**b. class MyHomePage**
Struktur umum dari class MyHomePage adalah sebagai berikut:
```
class MyHomePage extends StatelessWidget {
  final String npm = '2306165490';
  final String name = 'Daffa Desra Hastiar';
  final String className = 'PBP C';
  final List<ItemHomepage> items = [
    ItemHomepage("Lihat Daftar Produk", Icons.shopping_cart),
    ItemHomepage("Tambah Produk", Icons.add),
    ItemHomepage("Logout", Icons.logout),
  ];

  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(...),
        body: ...
    );
  }
}
```
Penjelasan:
-   `MyHomePage` adalah widget utama yang mengatur tampilan dan navigasi aplikasi.
-   `Scaffold` adalah widget yang mengatur struktur dasar dari halaman aplikasi, termasuk AppBar dan Body.
-   `AppBar` adalah widget yang biasanya digunakan untuk menampilkan judul aplikasi dan beberapa common action buttons (sekarang baru judul aplikasi saja). Berikut adalah kode dari AppBar:
```
AppBar(
title: Text(
    'FindYourFits',
    style: TextStyle(
        color: Colors.white,
            fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
    ),
    backgroundColor: Theme.of(context).colorScheme.primary,
    centerTitle: true,
)
```
Pada kode ini, teks "FindYourFits" ditampilkan dengan warna putih, font weight bold, dan berada di tengah. Background color dari AppBar diambil dari skema warna tema aplikasi yaitu biru. Selain itu, `centerTitle` di set menjadi true agar teks berada di tengah.
- `body` adalah widget yang mengatur tampilan dan isi dari halaman aplikasi.
Berikut adalah struktur utama dari `body`:
```
body: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Row(...), -> 1) untuk menampilkan 3 InfoCard secara horizontal
            const SizedBox(height: 16.0), -> 2) memberikan jarak vertikal 16 unit
            Center(
                child: Column(
                    children: [
                        Text(...), -> 3) untuk menampilkan teks sambutan dengan gaya tebal dan ukuran 18
                        GridView.count(...), -> 4) untuk menampilkan ItemCard dalam bentuk grid 3 kolom
                    ],
                ),
            ),
        ],
    ),
)
```

Berikut adalah kode dari 1):
```
Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
        InfoCard(title: 'NPM', content: npm),
        InfoCard(title: 'Name', content: name),
        InfoCard(title: 'Class', content: className),
    ],
)
```
Kode di atas membuat sebuah kolom yang berisi tiga `InfoCard` yang masing-masing berisi informasi NPM, nama, dan kelas. `InfoCard` adalah widget yang mengatur tampilan dan isi dari card yang berisi informasi.
Lanjutan kode `body` yaitu 2) :
```
const SizedBox(height: 16.0),
```
Kode di atas memberikan jarak vertikal 16 unit. Berikut adalah kode dari 3):
```
Text(
    'Welcome to FindYourFits',
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25.0
    ),
)
```
Kode di atas menampilkan teks "Welcome to FindYourFits" dengan gaya tebal dan ukuran 25.0.
Lanjutan kode `body` yaitu 4):
```
GridView.count(
    primary: true,
    padding: const EdgeInsets.all(20),
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    crossAxisCount: 3,
    shrinkWrap: true,
    children: items.map((ItemHomepage item) {
        return ItemCard(item);
    }).toList(),
)
```
Kode di atas membuat sebuah grid yang berisi beberapa `ItemCard` yang masing-masing berisi informasi dari `ItemHomepage`.
**d. class InfoCard**
Struktur dari class `InfoCard` adalah sebagai berikut:
```
class InfoCard extends StatelessWidget {
    final String title;
    final String content;
    const InfoCard({super.key, required this.title, required this.content});
    ...
    @override
    Widget build(BuildContext context) {
        return Card(...);
    }
}
```
Pada kode di atas, terdapat variabel `title` dan `content` yang masing-masing berisi string. Selain itu, terdapat constructor yang berisi `super.key`, `title`, dan `content`. Kelas ini mereturn sebuah widget Card yang berisi berikut:.
```
Card(
    elevation: 2.0,
    child: Container(
        width: MediaQuery.of(context).size.width / 3.5,
        padding: const EdgeInsets.all(16.0),
        child: Column(
            children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(content, textAlign: TextAlign.center),
            ],
        ),
    ),
)
Kode di atas membuat sebuah card yang berisi dua widget Text, dimana masing-masing Text berisi `title` dan `content`. Text `title` memiliki styling tebal, sedangkan Text `content` memiliki alignment center.
```
**e. class ItemHomepage**
Isi dari class `ItemHomepage` adalah sebagai berikut:
```
class ItemHomepage {
    final String name;
    final IconData icon;
    ItemHomepage(this.name, this.icon);
}
```
Kelas ini memiliki dua variabel, yaitu `name` dan `icon`. Kelas ini berfungsi untuk menampilkan item untuk diletakkan pada halaman homepage.
**f. class ItemCard**
Struktur dari class `ItemCard` adalah sebagai berikut:
```
class ItemCard extends StatelessWidget {
    final ItemHomepage item;
    const ItemCard(this.item, {super.key});
    ...
    @override
    Widget build(BuildContext context) {
        return Material(...);
    }
}
```
Kelas `ItemCard` memiliki variabel berupa `item` yang berisi `ItemHomepage`. Kelas ini mereturn sebuah widget Material yang berisi berikut:
```
Material(
    color: Theme.of(context).colorScheme.secondary,
    borderRadius: BorderRadius.circular(12),
    child: InkWell(),
)
```
Kode di atas membuat sebuah card yang berisi sebuah widget InkWell. InkWell adalah widget yang membuat area yang dapat diklik pada layar. Isi dari InkWell adalah sebagai berikut:
```
InkWell(
    onTap: () {
        ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
            SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
    },
    child: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Icon(item.icon, color: Colors.white, size: 30.0),
                const Padding(padding: EdgeInsets.all(3)),
                Text(item.name, textAlign: TextAlign.center),
            ],
        ),
    ),
)
```
Isi dari InkWell adalah sebagai berikut:
- `onTap`: Fungsi yang akan dijalankan ketika InkWell ditekan. Ketika ditekan, akan menampilkan pesan SnackBar yang berisi nama dari `item`.
- `child`: Widget yang berisi sebuah Container yang berisi sebuah Column yang berisi sebuah Icon dan sebuah Text.

# TUGAS 8

## 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

`const` di Flutter digunakan untuk mendeklarasikan variabel yang nilainya bersifat konstan dan diketahui pada saat kompilasi (compile-time constant).

Keuntungan menggunakan `const`:
- Meningkatkan performa aplikasi karena nilai sudah diketahui saat kompilasi
- Mengoptimalkan memory usage karena widget const hanya dibuat sekali dan digunakan kembali
- Membantu mencegah perubahan yang tidak diinginkan pada nilai variabel
- Flutter dapat melakukan optimasi pada widget tree

Kapan menggunakan `const`:
- Untuk nilai yang tidak akan berubah dan diketahui saat kompilasi
- Pada widget yang tidak memiliki state dan propertinya tidak berubah
- Pada nilai literal seperti string, number, atau list yang tetap
- Pada constructor widget yang semua propertinya bersifat final

Kapan tidak menggunakan `const`:
- Pada nilai yang ditentukan saat runtime
- Pada widget yang memiliki state atau properti yang berubah
- Pada objek yang bergantung pada waktu atau input pengguna
- Ketika menggunakan data yang diambil dari API atau database

## 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

**Column** dan **Row** adalah widget layout dasar di Flutter untuk mengatur widget child secara vertikal dan horizontal.

**Column**:
- Mengatur widget secara vertikal (dari atas ke bawah)
- Menggunakan MainAxisAlignment untuk alignment vertikal
- Menggunakan CrossAxisAlignment untuk alignment horizontal

Contoh Column:
```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
)
```

**Row**:
- Mengatur widget secara horizontal (dari kiri ke kanan)
- Menggunakan MainAxisAlignment untuk alignment horizontal
- Menggunakan CrossAxisAlignment untuk alignment vertikal

Contoh Row:
```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Icon(Icons.star),
    Text('Rating'),
    Text('4.5'),
  ],
)
```

## 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Elemen input yang digunakan:
1. **TextFormField** untuk input teks (nama produk, harga, stok)
2. **DropdownButtonFormField** untuk memilih kondisi produk dengan opsi yang sudah saya tentukan

Elemen input Flutter lain yang tidak digunakan:
1. **Checkbox** - untuk input boolean
2. **Radio** - untuk memilih satu opsi dari beberapa pilihan
3. **Slider** - untuk memilih nilai dalam rentang tertentu
4. **Switch** - untuk toggle on/off
5. **DateTimePicker** - untuk memilih tanggal dan waktu
6. **ColorPicker** - untuk memilih warna
7. **ImagePicker** - untuk memilih gambar dari galeri/kamera

## 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Cara mengatur tema dalam aplikasi Flutter:
1. Mendefinisikan ThemeData dalam MaterialApp
2. Menggunakan ColorScheme untuk mengatur skema warna
3. Menggunakan Theme.of(context) untuk mengakses tema

Implementasi pada aplikasi:
```dart
MaterialApp(
  title: 'Find Your Fits',
  theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.blue,
    ).copyWith(secondary: Colors.blue[400]),
    useMaterial3: true,
  ),
  home: MyHomePage(),
)
```

## 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Dalam aplikasi ini, navigasi ditangani dengan beberapa cara:

1. Menggunakan **Navigator.pushReplacement()** untuk berpindah halaman:
```dart
Navigator.pushReplacement(
  context,
  MaterialPageRoute(
    builder: (context) => ProductEntryFormPage()
  )
);
```

2. Menggunakan **Drawer** untuk navigasi menu samping:
```dart
Drawer(
  child: ListView(
    children: [
      ListTile(
        title: Text('Halaman Utama'),
        onTap: () {
          Navigator.pushReplacement(...);
        },
      ),
      // ... menu lainnya
    ],
  ),
)
```

3. Menggunakan **InkWell** pada card untuk navigasi:
```dart
InkWell(
  onTap: () {
    if (item.name == "Tambah Produk") {
      Navigator.pushReplacement(...);
    }
  },
  // ... widget lainnya
)
```

Cara lain yang bisa digunakan tapi belum saya implementasikan:
1. **Named Routes**
   - Navigasi berbasis nama rute
   - Didefinisikan di MaterialApp
   - Cocok untuk aplikasi dengan banyak halaman
   ```dart
   // Definisi
   routes: {'/home': (context) => HomePage()}
   // Penggunaan
   Navigator.pushNamed(context, '/home');
   ```

2. **Navigation Rail**
   - Menu navigasi vertikal di sisi layar
   - Cocok untuk tablet/desktop
   - Hemat ruang dan responsif
   ```dart
   NavigationRail(
     destinations: [
       NavigationRailDestination(
         icon: Icon(Icons.home),
         label: Text('Home'),
       ),
       // ... destinations lain
     ],
   )
   ```

3. **Bottom Navigation Bar**
   - Bar navigasi di bagian bawah
   - Ideal untuk aplikasi mobile
   - Mudah dijangkau dengan ibu jari
   ```dart
   BottomNavigationBar(
     items: [
       BottomNavigationBarItem(
         icon: Icon(Icons.home),
         label: 'Home',
       ),
       // ... items lain
     ],
   )
   ```

4. **Tab Navigation**
   - Navigasi berbasis tab di bagian atas
   - Cocok untuk konten yang berhubungan
   - Mendukung gesture swipe
   ```dart
   TabBar(
     tabs: [
       Tab(text: 'Tab 1'),
       Tab(text: 'Tab 2'),
       // ... tabs lain
     ],
   )
   ```
# TUGAS 9
 ## 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
 ## 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
 ## 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
 ## 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
 ## 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
 ## 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).