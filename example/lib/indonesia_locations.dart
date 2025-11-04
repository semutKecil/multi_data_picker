// Generated list of Indonesian provinces with their cities and regencies (kabupaten).
// This file keeps a const base list (no IDs) and generates a final list with
// sequential integer IDs at runtime. This avoids manual ID maintenance while
// providing stable numeric identifiers for each entry (1-based index).

const List<Map<String, String>> _baseLocations = [
  // Aceh
  {'province': 'Aceh', 'name': 'Aceh Barat', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Aceh Barat Daya', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Aceh Besar', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Aceh Jaya', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Aceh Selatan', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Aceh Singkil', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Aceh Tamiang', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Aceh Tengah', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Aceh Tenggara', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Aceh Timur', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Aceh Utara', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Bener Meriah', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Bireuen', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Gayo Lues', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Nagan Raya', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Pidie', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Pidie Jaya', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Simeulue', 'type': 'Kabupaten'},
  {'province': 'Aceh', 'name': 'Banda Aceh', 'type': 'Kota'},
  {'province': 'Aceh', 'name': 'Langsa', 'type': 'Kota'},
  {'province': 'Aceh', 'name': 'Lhokseumawe', 'type': 'Kota'},
  {'province': 'Aceh', 'name': 'Sabang', 'type': 'Kota'},
  {'province': 'Aceh', 'name': 'Subulussalam', 'type': 'Kota'},

  // Bali
  {'province': 'Bali', 'name': 'Badung', 'type': 'Kabupaten'},
  {'province': 'Bali', 'name': 'Bangli', 'type': 'Kabupaten'},
  {'province': 'Bali', 'name': 'Buleleng', 'type': 'Kabupaten'},
  {'province': 'Bali', 'name': 'Gianyar', 'type': 'Kabupaten'},
  {'province': 'Bali', 'name': 'Jembrana', 'type': 'Kabupaten'},
  {'province': 'Bali', 'name': 'Karangasem', 'type': 'Kabupaten'},
  {'province': 'Bali', 'name': 'Klungkung', 'type': 'Kabupaten'},
  {'province': 'Bali', 'name': 'Tabanan', 'type': 'Kabupaten'},
  {'province': 'Bali', 'name': 'Denpasar', 'type': 'Kota'},

  // DI Yogyakarta
  {'province': 'DI Yogyakarta', 'name': 'Bantul', 'type': 'Kabupaten'},
  {'province': 'DI Yogyakarta', 'name': 'Gunungkidul', 'type': 'Kabupaten'},
  {'province': 'DI Yogyakarta', 'name': 'Kulon Progo', 'type': 'Kabupaten'},
  {'province': 'DI Yogyakarta', 'name': 'Sleman', 'type': 'Kabupaten'},
  {'province': 'DI Yogyakarta', 'name': 'Yogyakarta', 'type': 'Kota'},

  // DKI Jakarta
  {
    'province': 'DKI Jakarta',
    'name': 'Jakarta Pusat',
    'type': 'Kota Administrasi',
  },
  {
    'province': 'DKI Jakarta',
    'name': 'Jakarta Utara',
    'type': 'Kota Administrasi',
  },
  {
    'province': 'DKI Jakarta',
    'name': 'Jakarta Barat',
    'type': 'Kota Administrasi',
  },
  {
    'province': 'DKI Jakarta',
    'name': 'Jakarta Selatan',
    'type': 'Kota Administrasi',
  },
  {
    'province': 'DKI Jakarta',
    'name': 'Jakarta Timur',
    'type': 'Kota Administrasi',
  },
  {'province': 'DKI Jakarta', 'name': 'Kepulauan Seribu', 'type': 'Kabupaten'},

  // Jawa Barat
  {'province': 'Jawa Barat', 'name': 'Bandung', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Bandung Barat', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Bekasi', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Bogor', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Ciamis', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Cianjur', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Cirebon', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Garut', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Kuningan', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Majalengka', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Pangandaran', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Purwakarta', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Subang', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Sukabumi', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Sumedang', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Tasikmalaya', 'type': 'Kabupaten'},
  {'province': 'Jawa Barat', 'name': 'Bandung', 'type': 'Kota'},
  {'province': 'Jawa Barat', 'name': 'Banjar', 'type': 'Kota'},
  {'province': 'Jawa Barat', 'name': 'Bekasi', 'type': 'Kota'},
  {'province': 'Jawa Barat', 'name': 'Bogor', 'type': 'Kota'},
  {'province': 'Jawa Barat', 'name': 'Cimahi', 'type': 'Kota'},
  {'province': 'Jawa Barat', 'name': 'Cirebon', 'type': 'Kota'},
  {'province': 'Jawa Barat', 'name': 'Depok', 'type': 'Kota'},
  {'province': 'Jawa Barat', 'name': 'Sukabumi', 'type': 'Kota'},
  {'province': 'Jawa Barat', 'name': 'Tasikmalaya', 'type': 'Kota'},

  // Jawa Tengah
  {'province': 'Jawa Tengah', 'name': 'Banjarnegara', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Banyumas', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Batang', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Blora', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Boyolali', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Brebes', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Cilacap', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Demak', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Grobogan', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Jepara', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Karanganyar', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Kebumen', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Kendal', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Klaten', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Kudus', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Magelang', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Pati', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Pekalongan', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Pemalang', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Purbalingga', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Purworejo', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Rembang', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Semarang', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Sragen', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Sukoharjo', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Tegal', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Temanggung', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Wonogiri', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Wonosobo', 'type': 'Kabupaten'},
  {'province': 'Jawa Tengah', 'name': 'Magelang', 'type': 'Kota'},
  {'province': 'Jawa Tengah', 'name': 'Pekalongan', 'type': 'Kota'},
  {'province': 'Jawa Tengah', 'name': 'Salatiga', 'type': 'Kota'},
  {'province': 'Jawa Tengah', 'name': 'Semarang', 'type': 'Kota'},
  {'province': 'Jawa Tengah', 'name': 'Surakarta', 'type': 'Kota'},
  {'province': 'Jawa Tengah', 'name': 'Tegal', 'type': 'Kota'},

  // Jawa Timur
  {'province': 'Jawa Timur', 'name': 'Banyuwangi', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Bangkalan', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Blitar', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Bojonegoro', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Bondowoso', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Gresik', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Jember', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Jombang', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Kediri', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Lamongan', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Lumajang', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Madiun', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Magetan', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Malang', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Mojokerto', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Nganjuk', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Ngawi', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Pacitan', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Pamekasan', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Pasuruan', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Ponorogo', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Probolinggo', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Sampang', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Sidoarjo', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Situbondo', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Sumenep', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Trenggalek', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Tuban', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Tulungagung', 'type': 'Kabupaten'},
  {'province': 'Jawa Timur', 'name': 'Batu', 'type': 'Kota'},
  {'province': 'Jawa Timur', 'name': 'Blitar', 'type': 'Kota'},
  {'province': 'Jawa Timur', 'name': 'Kediri', 'type': 'Kota'},
  {'province': 'Jawa Timur', 'name': 'Madiun', 'type': 'Kota'},
  {'province': 'Jawa Timur', 'name': 'Malang', 'type': 'Kota'},
  {'province': 'Jawa Timur', 'name': 'Mojokerto', 'type': 'Kota'},
  {'province': 'Jawa Timur', 'name': 'Pasuruan', 'type': 'Kota'},
  {'province': 'Jawa Timur', 'name': 'Probolinggo', 'type': 'Kota'},
  {'province': 'Jawa Timur', 'name': 'Surabaya', 'type': 'Kota'},

  // Kalimantan Barat
  {'province': 'Kalimantan Barat', 'name': 'Bengkayang', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Barat', 'name': 'Kapuas Hulu', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Barat', 'name': 'Kayong Utara', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Barat', 'name': 'Ketapang', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Barat', 'name': 'Kubu Raya', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Barat', 'name': 'Landak', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Barat', 'name': 'Melawi', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Barat', 'name': 'Pontianak', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Barat', 'name': 'Sambas', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Barat', 'name': 'Sanggau', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Barat', 'name': 'Sekadau', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Barat', 'name': 'Sintang', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Barat', 'name': 'Pontianak', 'type': 'Kota'},
  {'province': 'Kalimantan Barat', 'name': 'Singkawang', 'type': 'Kota'},

  // Kalimantan Selatan
  {'province': 'Kalimantan Selatan', 'name': 'Balangan', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Selatan', 'name': 'Banjar', 'type': 'Kabupaten'},
  {
    'province': 'Kalimantan Selatan',
    'name': 'Barito Kuala',
    'type': 'Kabupaten',
  },
  {
    'province': 'Kalimantan Selatan',
    'name': 'Hulu Sungai Selatan',
    'type': 'Kabupaten',
  },
  {
    'province': 'Kalimantan Selatan',
    'name': 'Hulu Sungai Tengah',
    'type': 'Kabupaten',
  },
  {
    'province': 'Kalimantan Selatan',
    'name': 'Hulu Sungai Utara',
    'type': 'Kabupaten',
  },
  {'province': 'Kalimantan Selatan', 'name': 'Tabalong', 'type': 'Kabupaten'},
  {
    'province': 'Kalimantan Selatan',
    'name': 'Tanah Bumbu',
    'type': 'Kabupaten',
  },
  {'province': 'Kalimantan Selatan', 'name': 'Tanah Laut', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Selatan', 'name': 'Tapin', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Selatan', 'name': 'Banjarbaru', 'type': 'Kota'},
  {'province': 'Kalimantan Selatan', 'name': 'Banjarmasin', 'type': 'Kota'},

  // Kalimantan Tengah
  {
    'province': 'Kalimantan Tengah',
    'name': 'Barito Selatan',
    'type': 'Kabupaten',
  },
  {
    'province': 'Kalimantan Tengah',
    'name': 'Barito Timur',
    'type': 'Kabupaten',
  },
  {
    'province': 'Kalimantan Tengah',
    'name': 'Barito Utara',
    'type': 'Kabupaten',
  },
  {'province': 'Kalimantan Tengah', 'name': 'Gunung Mas', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Tengah', 'name': 'Kapuas', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Tengah', 'name': 'Katingan', 'type': 'Kabupaten'},
  {
    'province': 'Kalimantan Tengah',
    'name': 'Kotawaringin Barat',
    'type': 'Kabupaten',
  },
  {
    'province': 'Kalimantan Tengah',
    'name': 'Kotawaringin Timur',
    'type': 'Kabupaten',
  },
  {'province': 'Kalimantan Tengah', 'name': 'Lamandau', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Tengah', 'name': 'Murung Raya', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Tengah', 'name': 'Sukamara', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Tengah', 'name': 'Palangka Raya', 'type': 'Kota'},

  // Kalimantan Timur
  {'province': 'Kalimantan Timur', 'name': 'Berau', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Timur', 'name': 'Kutai Barat', 'type': 'Kabupaten'},
  {
    'province': 'Kalimantan Timur',
    'name': 'Kutai Kartanegara',
    'type': 'Kabupaten',
  },
  {'province': 'Kalimantan Timur', 'name': 'Kutai Timur', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Timur', 'name': 'Mahakam Ulu', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Timur', 'name': 'Paser', 'type': 'Kabupaten'},
  {
    'province': 'Kalimantan Timur',
    'name': 'Penajam Paser Utara',
    'type': 'Kabupaten',
  },
  {'province': 'Kalimantan Timur', 'name': 'Balikpapan', 'type': 'Kota'},
  {'province': 'Kalimantan Timur', 'name': 'Bontang', 'type': 'Kota'},
  {'province': 'Kalimantan Timur', 'name': 'Samarinda', 'type': 'Kota'},

  // Kalimantan Utara
  {'province': 'Kalimantan Utara', 'name': 'Bulungan', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Utara', 'name': 'Malinau', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Utara', 'name': 'Nunukan', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Utara', 'name': 'Tana Tidung', 'type': 'Kabupaten'},
  {'province': 'Kalimantan Utara', 'name': 'Tarakan', 'type': 'Kota'},

  // Kepulauan Bangka Belitung
  {
    'province': 'Kepulauan Bangka Belitung',
    'name': 'Bangka',
    'type': 'Kabupaten',
  },
  {
    'province': 'Kepulauan Bangka Belitung',
    'name': 'Bangka Barat',
    'type': 'Kabupaten',
  },
  {
    'province': 'Kepulauan Bangka Belitung',
    'name': 'Bangka Selatan',
    'type': 'Kabupaten',
  },
  {
    'province': 'Kepulauan Bangka Belitung',
    'name': 'Bangka Tengah',
    'type': 'Kabupaten',
  },
  {
    'province': 'Kepulauan Bangka Belitung',
    'name': 'Belitung',
    'type': 'Kabupaten',
  },
  {
    'province': 'Kepulauan Bangka Belitung',
    'name': 'Belitung Timur',
    'type': 'Kabupaten',
  },
  {
    'province': 'Kepulauan Bangka Belitung',
    'name': 'Pangkal Pinang',
    'type': 'Kota',
  },

  // Kepulauan Riau
  {'province': 'Kepulauan Riau', 'name': 'Bintan', 'type': 'Kabupaten'},
  {'province': 'Kepulauan Riau', 'name': 'Karimun', 'type': 'Kabupaten'},
  {
    'province': 'Kepulauan Riau',
    'name': 'Kepulauan Anambas',
    'type': 'Kabupaten',
  },
  {'province': 'Kepulauan Riau', 'name': 'Lingga', 'type': 'Kabupaten'},
  {'province': 'Kepulauan Riau', 'name': 'Natuna', 'type': 'Kabupaten'},
  {'province': 'Kepulauan Riau', 'name': 'Batam', 'type': 'Kota'},
  {'province': 'Kepulauan Riau', 'name': 'Tanjung Pinang', 'type': 'Kota'},

  // Lampung
  {'province': 'Lampung', 'name': 'Lampung Barat', 'type': 'Kabupaten'},
  {'province': 'Lampung', 'name': 'Lampung Selatan', 'type': 'Kabupaten'},
  {'province': 'Lampung', 'name': 'Lampung Tengah', 'type': 'Kabupaten'},
  {'province': 'Lampung', 'name': 'Lampung Timur', 'type': 'Kabupaten'},
  {'province': 'Lampung', 'name': 'Lampung Utara', 'type': 'Kabupaten'},
  {'province': 'Lampung', 'name': 'Mesuji', 'type': 'Kabupaten'},
  {'province': 'Lampung', 'name': 'Pesawaran', 'type': 'Kabupaten'},
  {'province': 'Lampung', 'name': 'Pesisir Barat', 'type': 'Kabupaten'},
  {'province': 'Lampung', 'name': 'Pringsewu', 'type': 'Kabupaten'},
  {'province': 'Lampung', 'name': 'Tulang Bawang', 'type': 'Kabupaten'},
  {'province': 'Lampung', 'name': 'Tulang Bawang Barat', 'type': 'Kabupaten'},
  {'province': 'Lampung', 'name': 'Tanggamus', 'type': 'Kabupaten'},
  {'province': 'Lampung', 'name': 'Way Kanan', 'type': 'Kabupaten'},
  {'province': 'Lampung', 'name': 'Bandar Lampung', 'type': 'Kota'},
  {'province': 'Lampung', 'name': 'Metro', 'type': 'Kota'},

  // Maluku
  {'province': 'Maluku', 'name': 'Buru', 'type': 'Kabupaten'},
  {'province': 'Maluku', 'name': 'Buru Selatan', 'type': 'Kabupaten'},
  {'province': 'Maluku', 'name': 'Kepulauan Aru', 'type': 'Kabupaten'},
  {'province': 'Maluku', 'name': 'Maluku Tengah', 'type': 'Kabupaten'},
  {'province': 'Maluku', 'name': 'Maluku Tenggara', 'type': 'Kabupaten'},
  {'province': 'Maluku', 'name': 'Maluku Tenggara Barat', 'type': 'Kabupaten'},
  {'province': 'Maluku', 'name': 'Seram Bagian Barat', 'type': 'Kabupaten'},
  {'province': 'Maluku', 'name': 'Seram Bagian Timur', 'type': 'Kabupaten'},
  {'province': 'Maluku', 'name': 'Ambon', 'type': 'Kota'},
  {'province': 'Maluku', 'name': 'Tual', 'type': 'Kota'},

  // Maluku Utara
  {'province': 'Maluku Utara', 'name': 'Halmahera Barat', 'type': 'Kabupaten'},
  {'province': 'Maluku Utara', 'name': 'Halmahera Tengah', 'type': 'Kabupaten'},
  {'province': 'Maluku Utara', 'name': 'Halmahera Utara', 'type': 'Kabupaten'},
  {
    'province': 'Maluku Utara',
    'name': 'Halmahera Selatan',
    'type': 'Kabupaten',
  },
  {'province': 'Maluku Utara', 'name': 'Halmahera Timur', 'type': 'Kabupaten'},
  {'province': 'Maluku Utara', 'name': 'Pulau Morotai', 'type': 'Kabupaten'},
  {'province': 'Maluku Utara', 'name': 'Pulau Taliabu', 'type': 'Kabupaten'},
  {'province': 'Maluku Utara', 'name': 'Ternate', 'type': 'Kota'},
  {'province': 'Maluku Utara', 'name': 'Tidore Kepulauan', 'type': 'Kota'},

  // Nusa Tenggara Barat
  {'province': 'Nusa Tenggara Barat', 'name': 'Bima', 'type': 'Kabupaten'},
  {'province': 'Nusa Tenggara Barat', 'name': 'Dompu', 'type': 'Kabupaten'},
  {
    'province': 'Nusa Tenggara Barat',
    'name': 'Lombok Barat',
    'type': 'Kabupaten',
  },
  {
    'province': 'Nusa Tenggara Barat',
    'name': 'Lombok Tengah',
    'type': 'Kabupaten',
  },
  {
    'province': 'Nusa Tenggara Barat',
    'name': 'Lombok Timur',
    'type': 'Kabupaten',
  },
  {
    'province': 'Nusa Tenggara Barat',
    'name': 'Lombok Utara',
    'type': 'Kabupaten',
  },
  {'province': 'Nusa Tenggara Barat', 'name': 'Sumbawa', 'type': 'Kabupaten'},
  {
    'province': 'Nusa Tenggara Barat',
    'name': 'Sumbawa Barat',
    'type': 'Kabupaten',
  },
  {'province': 'Nusa Tenggara Barat', 'name': 'Bima', 'type': 'Kota'},
  {'province': 'Nusa Tenggara Barat', 'name': 'Mataram', 'type': 'Kota'},

  // Nusa Tenggara Timur
  {'province': 'Nusa Tenggara Timur', 'name': 'Alor', 'type': 'Kabupaten'},
  {'province': 'Nusa Tenggara Timur', 'name': 'Belu', 'type': 'Kabupaten'},
  {'province': 'Nusa Tenggara Timur', 'name': 'Ende', 'type': 'Kabupaten'},
  {
    'province': 'Nusa Tenggara Timur',
    'name': 'Flores Timur',
    'type': 'Kabupaten',
  },
  {'province': 'Nusa Tenggara Timur', 'name': 'Kupang', 'type': 'Kabupaten'},
  {'province': 'Nusa Tenggara Timur', 'name': 'Lembata', 'type': 'Kabupaten'},
  {'province': 'Nusa Tenggara Timur', 'name': 'Manggarai', 'type': 'Kabupaten'},
  {
    'province': 'Nusa Tenggara Timur',
    'name': 'Manggarai Barat',
    'type': 'Kabupaten',
  },
  {
    'province': 'Nusa Tenggara Timur',
    'name': 'Manggarai Timur',
    'type': 'Kabupaten',
  },
  {'province': 'Nusa Tenggara Timur', 'name': 'Nagekeo', 'type': 'Kabupaten'},
  {'province': 'Nusa Tenggara Timur', 'name': 'Ngada', 'type': 'Kabupaten'},
  {'province': 'Nusa Tenggara Timur', 'name': 'Rote Ndao', 'type': 'Kabupaten'},
  {
    'province': 'Nusa Tenggara Timur',
    'name': 'Sabu Raijua',
    'type': 'Kabupaten',
  },
  {'province': 'Nusa Tenggara Timur', 'name': 'Sikka', 'type': 'Kabupaten'},
  {
    'province': 'Nusa Tenggara Timur',
    'name': 'Sumba Barat',
    'type': 'Kabupaten',
  },
  {
    'province': 'Nusa Tenggara Timur',
    'name': 'Sumba Barat Daya',
    'type': 'Kabupaten',
  },
  {
    'province': 'Nusa Tenggara Timur',
    'name': 'Sumba Tengah',
    'type': 'Kabupaten',
  },
  {
    'province': 'Nusa Tenggara Timur',
    'name': 'Sumba Timur',
    'type': 'Kabupaten',
  },
  {
    'province': 'Nusa Tenggara Timur',
    'name': 'Timor Tengah Selatan',
    'type': 'Kabupaten',
  },
  {
    'province': 'Nusa Tenggara Timur',
    'name': 'Timor Tengah Utara',
    'type': 'Kabupaten',
  },
  {'province': 'Nusa Tenggara Timur', 'name': 'Kupang', 'type': 'Kota'},

  // Papua
  {'province': 'Papua', 'name': 'Asmat', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Biak Numfor', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Boven Digoel', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Deiyai', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Dogiyai', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Intan Jaya', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Jayapura', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Keerom', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Kepulauan Yapen', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Lanny Jaya', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Mamberamo Raya', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Mamberamo Tengah', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Merauke', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Mimika', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Nabire', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Nduga', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Paniai', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Pegunungan Bintang', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Puncak', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Puncak Jaya', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Sarmi', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Supiori', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Tolikara', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Waropen', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Yalimo', 'type': 'Kabupaten'},
  {'province': 'Papua', 'name': 'Jayapura', 'type': 'Kota'},

  // Papua Barat
  {'province': 'Papua Barat', 'name': 'Fakfak', 'type': 'Kabupaten'},
  {'province': 'Papua Barat', 'name': 'Kaimana', 'type': 'Kabupaten'},
  {'province': 'Papua Barat', 'name': 'Manokwari', 'type': 'Kabupaten'},
  {'province': 'Papua Barat', 'name': 'Manokwari Selatan', 'type': 'Kabupaten'},
  {'province': 'Papua Barat', 'name': 'Maybrat', 'type': 'Kabupaten'},
  {'province': 'Papua Barat', 'name': 'Pegunungan Arfak', 'type': 'Kabupaten'},
  {'province': 'Papua Barat', 'name': 'Raja Ampat', 'type': 'Kabupaten'},
  {'province': 'Papua Barat', 'name': 'Sorong', 'type': 'Kabupaten'},
  {'province': 'Papua Barat', 'name': 'Sorong Selatan', 'type': 'Kabupaten'},
  {'province': 'Papua Barat', 'name': 'Tambrauw', 'type': 'Kabupaten'},
  {'province': 'Papua Barat', 'name': 'Teluk Bintuni', 'type': 'Kabupaten'},
  {'province': 'Papua Barat', 'name': 'Teluk Wondama', 'type': 'Kabupaten'},
  {'province': 'Papua Barat', 'name': 'Sorong', 'type': 'Kota'},

  // Riau
  {'province': 'Riau', 'name': 'Bengkalis', 'type': 'Kabupaten'},
  {'province': 'Riau', 'name': 'Indragiri Hilir', 'type': 'Kabupaten'},
  {'province': 'Riau', 'name': 'Indragiri Hulu', 'type': 'Kabupaten'},
  {'province': 'Riau', 'name': 'Kampar', 'type': 'Kabupaten'},
  {'province': 'Riau', 'name': 'Kuantan Singingi', 'type': 'Kabupaten'},
  {'province': 'Riau', 'name': 'Pelalawan', 'type': 'Kabupaten'},
  {'province': 'Riau', 'name': 'Rokan Hilir', 'type': 'Kabupaten'},
  {'province': 'Riau', 'name': 'Rokan Hulu', 'type': 'Kabupaten'},
  {'province': 'Riau', 'name': 'Siak', 'type': 'Kabupaten'},
  {'province': 'Riau', 'name': 'Pekanbaru', 'type': 'Kota'},
  {'province': 'Riau', 'name': 'Dumai', 'type': 'Kota'},

  // Sulawesi Barat
  {'province': 'Sulawesi Barat', 'name': 'Majene', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Barat', 'name': 'Mamasa', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Barat', 'name': 'Mamuju', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Barat', 'name': 'Mamuju Tengah', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Barat', 'name': 'Mamuju Utara', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Barat', 'name': 'Mamuju', 'type': 'Kota'},

  // Sulawesi Selatan
  {'province': 'Sulawesi Selatan', 'name': 'Bantaeng', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Barru', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Bone', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Bulukumba', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Enrekang', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Gowa', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Jeneponto', 'type': 'Kabupaten'},
  {
    'province': 'Sulawesi Selatan',
    'name': 'Kepulauan Selayar',
    'type': 'Kabupaten',
  },
  {'province': 'Sulawesi Selatan', 'name': 'Luwu', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Luwu Timur', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Luwu Utara', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Maros', 'type': 'Kabupaten'},
  {
    'province': 'Sulawesi Selatan',
    'name': 'Pangkajene dan Kepulauan',
    'type': 'Kabupaten',
  },
  {'province': 'Sulawesi Selatan', 'name': 'Pinrang', 'type': 'Kabupaten'},
  {
    'province': 'Sulawesi Selatan',
    'name': 'Sidenreng Rappang',
    'type': 'Kabupaten',
  },
  {'province': 'Sulawesi Selatan', 'name': 'Sinjai', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Soppeng', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Takalar', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Tana Toraja', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Toraja Utara', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Wajo', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Selatan', 'name': 'Makassar', 'type': 'Kota'},
  {'province': 'Sulawesi Selatan', 'name': 'Palopo', 'type': 'Kota'},
  {'province': 'Sulawesi Selatan', 'name': 'Parepare', 'type': 'Kota'},

  // Sulawesi Tengah
  {'province': 'Sulawesi Tengah', 'name': 'Banggai', 'type': 'Kabupaten'},
  {
    'province': 'Sulawesi Tengah',
    'name': 'Banggai Kepulauan',
    'type': 'Kabupaten',
  },
  {'province': 'Sulawesi Tengah', 'name': 'Banggai Laut', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Tengah', 'name': 'Buol', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Tengah', 'name': 'Donggala', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Tengah', 'name': 'Morowali', 'type': 'Kabupaten'},
  {
    'province': 'Sulawesi Tengah',
    'name': 'Morowali Utara',
    'type': 'Kabupaten',
  },
  {
    'province': 'Sulawesi Tengah',
    'name': 'Parigi Moutong',
    'type': 'Kabupaten',
  },
  {'province': 'Sulawesi Tengah', 'name': 'Poso', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Tengah', 'name': 'Sigi', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Tengah', 'name': 'Tojo Una-Una', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Tengah', 'name': 'Palu', 'type': 'Kota'},

  // Sulawesi Tenggara
  {'province': 'Sulawesi Tenggara', 'name': 'Bombana', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Tenggara', 'name': 'Buton', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Tenggara', 'name': 'Buton Utara', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Tenggara', 'name': 'Kolaka', 'type': 'Kabupaten'},
  {
    'province': 'Sulawesi Tenggara',
    'name': 'Kolaka Utara',
    'type': 'Kabupaten',
  },
  {'province': 'Sulawesi Tenggara', 'name': 'Konawe', 'type': 'Kabupaten'},
  {
    'province': 'Sulawesi Tenggara',
    'name': 'Konawe Kepulauan',
    'type': 'Kabupaten',
  },
  {
    'province': 'Sulawesi Tenggara',
    'name': 'Konawe Selatan',
    'type': 'Kabupaten',
  },
  {'province': 'Sulawesi Tenggara', 'name': 'Muna', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Tenggara', 'name': 'Wakatobi', 'type': 'Kabupaten'},
  {'province': 'Sulawesi Tenggara', 'name': 'Bau-Bau', 'type': 'Kota'},
  {'province': 'Sulawesi Tenggara', 'name': 'Kendari', 'type': 'Kota'},

  // Sumatera Barat
  {'province': 'Sumatera Barat', 'name': 'Agam', 'type': 'Kabupaten'},
  {'province': 'Sumatera Barat', 'name': 'Dharmasraya', 'type': 'Kabupaten'},
  {
    'province': 'Sumatera Barat',
    'name': 'Kepulauan Mentawai',
    'type': 'Kabupaten',
  },
  {
    'province': 'Sumatera Barat',
    'name': 'Lima Puluh Kota',
    'type': 'Kabupaten',
  },
  {
    'province': 'Sumatera Barat',
    'name': 'Padang Pariaman',
    'type': 'Kabupaten',
  },
  {'province': 'Sumatera Barat', 'name': 'Pasaman', 'type': 'Kabupaten'},
  {'province': 'Sumatera Barat', 'name': 'Pasaman Barat', 'type': 'Kabupaten'},
  {
    'province': 'Sumatera Barat',
    'name': 'Pesisir Selatan',
    'type': 'Kabupaten',
  },
  {'province': 'Sumatera Barat', 'name': 'Sijunjung', 'type': 'Kabupaten'},
  {'province': 'Sumatera Barat', 'name': 'Solok', 'type': 'Kabupaten'},
  {'province': 'Sumatera Barat', 'name': 'Solok Selatan', 'type': 'Kabupaten'},
  {'province': 'Sumatera Barat', 'name': 'Bukittinggi', 'type': 'Kota'},
  {'province': 'Sumatera Barat', 'name': 'Padang', 'type': 'Kota'},
  {'province': 'Sumatera Barat', 'name': 'Padang Panjang', 'type': 'Kota'},
  {'province': 'Sumatera Barat', 'name': 'Pariaman', 'type': 'Kota'},
  {'province': 'Sumatera Barat', 'name': 'Payakumbuh', 'type': 'Kota'},
  {'province': 'Sumatera Barat', 'name': 'Sawahlunto', 'type': 'Kota'},

  // Sumatera Selatan
  {'province': 'Sumatera Selatan', 'name': 'Banyuasin', 'type': 'Kabupaten'},
  {'province': 'Sumatera Selatan', 'name': 'Empat Lawang', 'type': 'Kabupaten'},
  {'province': 'Sumatera Selatan', 'name': 'Lahat', 'type': 'Kabupaten'},
  {
    'province': 'Sumatera Selatan',
    'name': 'Musi Banyuasin',
    'type': 'Kabupaten',
  },
  {'province': 'Sumatera Selatan', 'name': 'Musi Rawas', 'type': 'Kabupaten'},
  {
    'province': 'Sumatera Selatan',
    'name': 'Musi Rawas Utara',
    'type': 'Kabupaten',
  },
  {'province': 'Sumatera Selatan', 'name': 'Ogan Ilir', 'type': 'Kabupaten'},
  {
    'province': 'Sumatera Selatan',
    'name': 'Ogan Komering Ilir',
    'type': 'Kabupaten',
  },
  {
    'province': 'Sumatera Selatan',
    'name': 'Ogan Komering Ulu',
    'type': 'Kabupaten',
  },
  {
    'province': 'Sumatera Selatan',
    'name': 'Ogan Komering Ulu Selatan',
    'type': 'Kabupaten',
  },
  {
    'province': 'Sumatera Selatan',
    'name': 'Ogan Komering Ulu Timur',
    'type': 'Kabupaten',
  },
  {'province': 'Sumatera Selatan', 'name': 'Lubuklinggau', 'type': 'Kota'},
  {'province': 'Sumatera Selatan', 'name': 'Pagar Alam', 'type': 'Kota'},
  {'province': 'Sumatera Selatan', 'name': 'Palembang', 'type': 'Kota'},
  {'province': 'Sumatera Selatan', 'name': 'Prabumulih', 'type': 'Kota'},

  // Sumatera Utara
  {'province': 'Sumatera Utara', 'name': 'Asahan', 'type': 'Kabupaten'},
  {'province': 'Sumatera Utara', 'name': 'Batu Bara', 'type': 'Kabupaten'},
  {'province': 'Sumatera Utara', 'name': 'Dairi', 'type': 'Kabupaten'},
  {'province': 'Sumatera Utara', 'name': 'Deli Serdang', 'type': 'Kabupaten'},
  {
    'province': 'Sumatera Utara',
    'name': 'Humbang Hasundutan',
    'type': 'Kabupaten',
  },
  {'province': 'Sumatera Utara', 'name': 'Karo', 'type': 'Kabupaten'},
  {'province': 'Sumatera Utara', 'name': 'Labuhanbatu', 'type': 'Kabupaten'},
  {
    'province': 'Sumatera Utara',
    'name': 'Labuhanbatu Selatan',
    'type': 'Kabupaten',
  },
  {
    'province': 'Sumatera Utara',
    'name': 'Labuhanbatu Utara',
    'type': 'Kabupaten',
  },
  {'province': 'Sumatera Utara', 'name': 'Langkat', 'type': 'Kabupaten'},
  {
    'province': 'Sumatera Utara',
    'name': 'Mandailing Natal',
    'type': 'Kabupaten',
  },
  {'province': 'Sumatera Utara', 'name': 'Nias', 'type': 'Kabupaten'},
  {'province': 'Sumatera Utara', 'name': 'Nias Barat', 'type': 'Kabupaten'},
  {'province': 'Sumatera Utara', 'name': 'Nias Selatan', 'type': 'Kabupaten'},
  {'province': 'Sumatera Utara', 'name': 'Nias Utara', 'type': 'Kabupaten'},
  {'province': 'Sumatera Utara', 'name': 'Padang Lawas', 'type': 'Kabupaten'},
  {
    'province': 'Sumatera Utara',
    'name': 'Padang Lawas Utara',
    'type': 'Kabupaten',
  },
  {'province': 'Sumatera Utara', 'name': 'Pakpak Bharat', 'type': 'Kabupaten'},
  {'province': 'Sumatera Utara', 'name': 'Samosir', 'type': 'Kabupaten'},
  {
    'province': 'Sumatera Utara',
    'name': 'Serdang Bedagai',
    'type': 'Kabupaten',
  },
  {'province': 'Sumatera Utara', 'name': 'Simalungun', 'type': 'Kabupaten'},
  {
    'province': 'Sumatera Utara',
    'name': 'Tapanuli Selatan',
    'type': 'Kabupaten',
  },
  {
    'province': 'Sumatera Utara',
    'name': 'Tapanuli Tengah',
    'type': 'Kabupaten',
  },
  {'province': 'Sumatera Utara', 'name': 'Tapanuli Utara', 'type': 'Kabupaten'},
  {'province': 'Sumatera Utara', 'name': 'Toba Samosir', 'type': 'Kabupaten'},
  {'province': 'Sumatera Utara', 'name': 'Binjai', 'type': 'Kota'},
  {'province': 'Sumatera Utara', 'name': 'Gunungsitoli', 'type': 'Kota'},
  {'province': 'Sumatera Utara', 'name': 'Medan', 'type': 'Kota'},
  {'province': 'Sumatera Utara', 'name': 'Padangsidempuan', 'type': 'Kota'},
  {'province': 'Sumatera Utara', 'name': 'Pematangsiantar', 'type': 'Kota'},
  {'province': 'Sumatera Utara', 'name': 'Sibolga', 'type': 'Kota'},
  {'province': 'Sumatera Utara', 'name': 'Tanjungbalai', 'type': 'Kota'},
  {'province': 'Sumatera Utara', 'name': 'Tebing Tinggi', 'type': 'Kota'},
];

// Generate the final list with sequential integer IDs (1-based index)
final List<Map<String, dynamic>> indonesiaLocations = List.unmodifiable(
  List.generate(_baseLocations.length, (i) {
    final base = _baseLocations[i];
    return {
      'id': i + 1,
      'province': base['province']!,
      'name': base['name']!,
      'type': base['type']!,
    };
  }),
);

// Helper to fetch locations by province name (case-sensitive)
List<Map<String, dynamic>> getLocationsByProvince(String province) {
  return indonesiaLocations
      .where((location) => location['province'] == province)
      .toList();
}

// Helper to get unique province names
List<String> getAllProvinces() {
  return indonesiaLocations.map((e) => e['province'] as String).toSet().toList()
    ..sort();
}

// Helper to get locations by type (Kabupaten/Kota/Kota Administrasi)
List<Map<String, dynamic>> getLocationsByType(String type) {
  return indonesiaLocations
      .where((location) => location['type'] == type)
      .toList();
}

// Helper to find a location by ID
Map<String, dynamic>? getLocationById(int id) {
  try {
    return indonesiaLocations.firstWhere((location) => location['id'] == id);
  } catch (e) {
    return null;
  }
}

// Example usage (in comments):
// import 'package:data_picker/indonesia_locations.dart';
//
// final provinces = getAllProvinces();
// final jabarLocations = getLocationsByProvince('Jawa Barat');
// final allKabupatens = getLocationsByType('Kabupaten');
// 
// // Get location by ID
// final location = getLocationById(1);
// if (location != null) {
//   print('Location #${location['id']}: ${location['name']}, ${location['province']} (${location['type']})');
// }
// 
// // List all locations in a province with their IDs
// for (final loc in jabarLocations) {
//   print('#${loc['id']} - ${loc['name']} (${loc['type']})');
// }