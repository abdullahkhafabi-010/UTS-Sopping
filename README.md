<style>
    body {text-align: justify}
</style>

# <b>Laporan Pertemuan 8 - UTS</b>
<b> Nama: Abdullah Khafabi

Kelas: TI 3A

NIM: 2041720050 </b>

## <b>Praktikum 4: Implementasi image section</b>

Selesaikan langkah-langkah praktikum berikut ini dengan melanjutkan dari praktikum sebelumnya.

### <b>Langkah 1: Siapkan aset gambar</b>

Anda dapat mencari gambar di internet yang ingin ditampilkan. Buatlah folder images di root project layout_flutter. Masukkan file gambar tersebut ke folder images, lalu set nama file tersebut ke file pubspec.yaml 
Contoh nama file gambar adalah lake.jpg

<b>Jawab:</b>

![Alt text](/image/1.png)

### <b>Langkah 2: Tambahkan gambar ke body</b>

Tambahkan aset gambar ke dalam body:

BoxFit.cover memberi tahu kerangka kerja bahwa gambar harus sekecil mungkin tetapi menutupi seluruh kotak rendernya.

<b>Jawab:</b>

![Alt text](/image/2.png)

### <b>Langkah 3: Terakhir, ubah menjadi ListView</b>

Pada langkah terakhir ini, atur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.

<b>Jawab:</b>

![Alt text](/image/3.png)

<b>Hasil Running:</b>

![Alt text](/image/4.png)

## <b>Tugas Praktikum 1</b>

1. Selesaikan Praktikum 1 sampai 4, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md!

Untuk laporan praktikum 4, ada pada bagian atas laporan ini.

2. Silakan implementasikan di project baru "basic_layout_flutter" dengan mengakses sumber ini: https://docs.flutter.dev/codelabs/layout-basics

3. Kumpulkan link commit repository GitHub Anda ke spreadsheet yang telah disediakan!

## <b>Praktikum 5: Membangun Navigasi di Flutter</b>

Selesaikan langkah-langkah praktikum berikut ini menggunakan editor Visual Studio Code (VS Code) atau Android Studio atau code editor lain kesukaan Anda. Materi ini dapat dimasukkan ke Laporan Praktikum folder Week atau Pertemuan 08.


Pada praktikum 5 ini anda akan belajar mengenai pembangunan aplikasi bergerak multi halaman. Aplikasi yang dikembangkan berupa kasus daftar barang /belanja/assets/images. Pada aplikasi ini anda akan belajar untuk berpindah halaman dan mengirimkan data ke halaman lainnya. Gambaran mockup hasil akhir aplikasi dapat anda lihat pada gambar di atas (mockup dibuat sederhana, sehingga Anda mempunyai banyak ruang untuk berkreasi). Desain aplikasi menampilkan sebuah ListView widget yang datanya bersumber dari List. Ketika item ditekan, data akan dikirimkan ke halaman berikutnya.

### <b>Langkah 1: Siapkan project baru</b>

Sebelum melanjutkan praktikum, buatlah sebuah project baru Flutter dengan nama /belanja/assets/images dan susunan folder seperti pada gambar berikut. Penyusunan ini dimaksudkan untuk mengorganisasi kode dan widget yang lebih mudah.

<b>Jawab:</b>

![Alt text](/image/5.png)

### <b>Langkah 2: Mendefinisikan Route</b>

Buatlah dua buah file dart dengan nama home_page.dart dan item_page.dart pada folder pages. Untuk masing-masing file, deklarasikan class HomePage pada file home_page.dart dan ItemPage pada item_page.dart. Turunkan class dari StatelessWidget.

<b>Jawab:</b>

![Alt text](/image/6.png)

### <b>Langkah 3: Lengkapi Kode di main.dart</b>

Setelah kedua halaman telah dibuat dan didefinisikan, bukalah file main.dart. Pada langkah ini anda akan mendefinisikan Route untuk kedua halaman tersebut. Definisi penamaan route harus bersifat unique. Halaman HomePage didefinisikan sebagai /. Dan halaman ItemPage didefinisikan sebagai /item. Untuk mendefinisikan halaman awal, anda dapat menggunakan named argument initialRoute.

<b>Jawab:</b>

![Alt text](/image/7.png)

### <b>Langkah 4: Membuat data model</b>

Sebelum melakukan perpindahan halaman dari HomePage ke ItemPage, dibutuhkan proses pemodelan data. Pada desain mockup, dibutuhkan dua informasi yaitu nama dan harga. Untuk menangani hal ini, buatlah sebuah file dengan nama item.dart dan letakkan pada folder models. Pada file ini didefinisikan pemodelan data yang dibutuhkan.

<b>Jawab:</b>

![Alt text](/image/8.png)

### <b>Langkah 5: Lengkapi kode di class HomePage</b>

Pada halaman HomePage terdapat ListView widget. Sumber data ListView diambil dari model List dari object Item. 

<b>Jawab:</b>

![Alt text](/image/9.png)

### <b>Langkah 6: Membuat ListView dan itemBuilder</b>

Untuk menampilkan ListView pada praktikum ini digunakan itemBuilder. Data diambil dari definisi model yang telah dibuat sebelumnya. Untuk menunjukkan batas data satu dan berikutnya digunakan widget Card. Kode yang telah umum pada bagian ini tidak ditampilkan. 

<b>Jawab:</b>

![Alt text](/image/10.png)

### <b>Langkah 7: Menambahkan aksi pada ListView</b>

Item pada ListView saat ini ketika ditekan masih belum memberikan aksi tertentu. Untuk menambahkan aksi pada ListView dapat digunakan widget InkWell atau GestureDetector. Perbedaan utamanya InkWell merupakan material widget yang memberikan efek ketika ditekan. Sedangkan GestureDetector bersifat umum dan bisa juga digunakan untuk gesture lain selain sentuhan. Pada praktikum ini akan digunakan widget InkWell.

Untuk menambahkan sentuhan, letakkan cursor pada widget pembuka Card. Kemudian gunakan shortcut quick fix dari VSCode (Ctrl + . pada Windows atau Cmd + . pada MacOS). Sorot menu wrap with widget... Ubah nilai widget menjadi InkWell serta tambahkan named argument onTap yang berisi fungsi untuk berpindah ke halaman ItemPage.

<b>Jawab:</b>

![Alt text](/image/11.png)

## <b>Tugas Praktikum 2</b>

1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.

        Navigator.pushNamed(context, '/item', arguments: item);

<b>Jawab:</b>

![Alt text](/image/12.png)

2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)

        final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

<b>Jawab:</b>

![Alt text](/image/13.png)

3. Pada hasil akhir dari aplikasi /belanja/assets/images yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.

<b>Jawab:</b>

![Alt text](/image/14.png)

![Alt text](/image/15.png)

![Alt text](/image/16.png)

![Alt text](/image/17.png)

4. Silakan implementasikan Hero widget pada aplikasi /belanja/assets/images Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations

<b>Jawab:</b>

![Alt text](/image/15.png)

5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi /belanja/assets/images Anda.

<b>Jawab:</b>

![Alt text](/image/18.png)

![Alt text](/image/19.png)

![Alt text](/image/20.png)

![Alt text](/image/21.png)

![Alt text](/image/22.png)

![Alt text](/image/23.png)

![Alt text](/image/24.png)

6. Selesaikan Praktikum Navigasi dan Rute tersebut, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda ke spreadsheet yang telah disediakan!

<b>Jawab:</b>

Hasil screenshots ada laporan praktikum diatas.