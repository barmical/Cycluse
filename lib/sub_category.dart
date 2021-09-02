class RecyclingMaterial {
  String name;
  String description;
  String types;
  String imageAsset;
  String imageClip;
  List<String> imageUrls;

  RecyclingMaterial({
    required this.name,
    required this.description,
    required this.types,
    required this.imageAsset,
    required this.imageClip,
    required this.imageUrls,
  });
}

var recyclingMaterialList = [
  RecyclingMaterial(
    name: 'E-Waste',
    types: 'Handphone, Laptop,',
    description:
    'Limbah elektronik (e-Waste) adalah sampah atau limbah yang berasal dari peralatan elektronik. Contohnya adalah telepon genggam, komputer, televisi, mesin cuci, dan sebagainya. Tahukah kamu? Limbah elektronik mengandung bahan yang berbahaya dan beracun, seperti logam berat, PVC, PcB, dan lain-lain yang dapat merusak kesehatan dan lingkungan. Oleh karena itu, sampah elektronik harus dikelola agar terpisah dari jenis sampah lain dan mencemari lingkungan sekitar.',
    imageClip: 'images/e-waste_clip.jpg',
    imageAsset: 'images/trash_e-waste.png',
    imageUrls: [
      'images/e-waste/bag.jpg',
      'images/e-waste/cpu.jpg',
      'images/e-waste/dispenser.png',
      'images/e-waste/lamp.jpg',
      'images/e-waste/pin.jpg'
    ],
  ),
  RecyclingMaterial(
    name: 'Paper',
    types: 'Newspaper, HVS,     ',
    description:
    'Daur ulang kertas merupakan pengolahan kembali kertas yang sudah dipakai dan tidak digunakan menjadi kertas baru yang bisa dipakai kembali. Pemanfaatan limbah kertas ini pertama kali dilakukan di jepang pada tahun 1030 disebabkan karena ketidakstabilan dalam pengelolaan pemerintahan pada saat itu. Proses pengembangan daur ulang kertas terus berlanjut di tangan seorang penemu bernama Mathias Koops dengan metodenya daur ulang kertas dengan cara penghapusan tulisan yang ada di kertas lama dan menghasilkan kertas baru yang bisa digunakan kembali. Hingga pada hari ini proses daur ulang kertas terus berkembang dan semakin baik. Dimana, secara umum proses daur ulang kertas terbagi atas tiga tahapan. Yaitu tahapan pengumpulan kertas, tahapan penghancuran (Pulping) dan tahapan pembentukan kertas baru dan beberapa hasil daur ulang lainnya seperti bahan bakar ataupun bahan kerajinan.',
    imageClip: 'images/paper_clip.jpg',
    imageAsset: 'images/trash_paper.png',
    imageUrls: [
      'images/paper/bags.jpg',
      'images/paper/basket_paper.jpg',
      'images/paper/calendar.jpg',
      'images/paper/frame_paper.jpg',
      'images/paper/pencil_paper.jpg'
    ],
  ),
  RecyclingMaterial(
    name: 'Glass',
    types: 'Mug, Bowl, Plate,     ',
    description:
    'Sampah atau limbah kaca tergolong sampah yang berbahaya bila dibuang di sembarang tempat, karena dikhawatirkan terinjak atau melukai anggota tubuh lainnya. Sampah kaca juga sangat sulit terurai di dalam tanah, dan diperlukan waktu ratusan tahun untuk dapat terurai. Untuk itu perlu adanya pemanfaatan dari limbah kaca agar dapat mengurangi sampah kaca di lingkungan masyarakat. Limbah kaca memiliki keunikan dan keindahan tersendiri bila didaur ulang menjadi sebuah kerajinan yang memiliki daya jual. Kerajinan dari limbah kaca ini dapat dijadikan untuk memperindah ruangan rumah, kantor, café, atau tempat lainnya.',
    imageClip: 'images/glass_clip.jpg',
    imageAsset: 'images/trash_glass.png',
    imageUrls: [
      'images/glass/clock.jpg',
      'images/glass/lamp.jpg',
      'images/glass/mug.jpg',
      'images/glass/salt.jpg',
      'images/glass/wall.png'
    ],
  ),
  RecyclingMaterial(
    name: 'Metal',
    types: 'Can, Scissor, Bolt,    ',
    description:
    'Limbah besi adalah jenis limbah yang berasal dari logam besi. Sampah besi dan logam biasanya ditemukan dari berbagai sumber. Tidak hanya dari pembuangan skala rumah tangga saja, sampah besi juga sering ditemukan sebagai bagian dari limbah pabrik. Limbah pabrik yang berupa besi biasanya dihasilkan oleh industri yang menggunakan besi sebagai bagian dari barang produksinya. Mayoritas pabrik seringkali tidak menyadari bila limbah yang dihasilkannya merupakan kategori limbah berbahaya. Jika Anda belum mengetahui besi termasuk limbah apa, maka besi ini dapat digolongkan sebagai jenis limbah B3.',
    imageClip: 'images/metal_clip.jpg',
    imageAsset: 'images/trash_metal.png',
    imageUrls: [
      'images/metal/glass.jpg',
      'images/metal/key.jpg',
      'images/metal/lamp_metal.png',
      'images/metal/plant.jpg',
      'images/metal/shelves.jpg'
    ],
  ),
  RecyclingMaterial(
    name: 'Organic',
    types: 'Fruit, Meat, Bone,     ',
    description:
    'Sampah organik dan non-organik merupakan dua jenis sampah yang berasal dari sumber berbeda sehingga keduanya memiliki cara pengolahan yang juga berbeda. Sampah organik adalah jenis sampah yang mudah terurai, sedangkan sampah non-organik atau anorganik sangat sulit terurai, bahkan ada beberapa jenis yang membutuhkan waktu hingga 500 tahun untuk terurai sepenuhnya. Memisahkan dan mengelola sampah organik dan non-organik perlu dilakukan. Hal ini juga dapat berpengaruh dalam upaya menjaga kelestarian lingkungan hidup.',
    imageClip: 'images/organic_clip.jpg',
    imageAsset: 'images/trash_organic.png',
    imageUrls: [
      'images/organic/biomass.jpg',
      'images/organic/food.jpg',
      'images/organic/kompos.jpg',
    ],
  ),
  RecyclingMaterial(
    name: 'Plastic',
    types: 'Straw, Plastic Bottle,',
    description:
    "Sampah plastik selalu menjadi masalah utama dalam pencemaran lingkungan baik pencemaran tanah maupun laut. Sifat sampah plastik tidak mudah terurai, proses pengolahannya menimbulkan toksit dan bersifat karsinogenik, butuh waktu sampai ratusan tahun bila terurai secara alami. Untuk pencemaran di laut, Indonesia merupakan penghasil sampah plastik laut terbesar kedua di dunia. Penelitian dari UC Davis dan Universitas Hasanuddin yang dilakukan di pasar Paotere Makassar menunjukkan 23% sampel ikan yang diambil memiliki kandungan plastik di perutnya. Jika diolah dengan baik, sampah plastik daur ulang dapat menghasilkan keuntungan sebesar Rp 16.379.472 per bulan dari produksi 48 ton sampah plastik.",
    imageClip: 'images/plastic_clip.jpg',
    imageAsset: 'images/trash_plastic.png',
    imageUrls: [
      'images/plastic/basket_plastic.jpg',
      'images/plastic/chair_plastic.png',
      'images/plastic/lamp_plastic.jpg',
      'images/plastic/shoe_parley.jpg',
      'images/plastic/watch_plastic.jpg'
    ],
  ),
];