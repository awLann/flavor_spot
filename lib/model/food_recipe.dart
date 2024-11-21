class FoodRecipe {
  String imageAsset;
  String name;
  String description;
  String rating;
  String cookingTime;
  String difficulty;
  List<String> ingredients;
  List<String> steps;

  FoodRecipe({
    required this.imageAsset,
    required this.name,
    required this.description,
    required this.rating,
    required this.cookingTime,
    required this.difficulty,
    required this.ingredients,
    required this.steps,
  });
}

var foodRecipeList = [
  FoodRecipe(
    imageAsset: 'assets/images/nasi_goreng.jpeg',
    name: 'Nasi Goreng',
    description: 'Nasi goreng tradisional yang enak dengan bumbu khas.',
    rating: '4.5',
    cookingTime: '30 menit',
    difficulty: 'Mudah',
    ingredients: [
      '2 porsi nasi putih',
      '2 butir telur',
      '2 siung bawang putih, cincang',
      '1/2 buah bawang merah, cincang',
      '3 sendok makan kecap manis',
      '1/4 sendok teh merica',
      'Sayuran campur (wortel, kacang polong)',
      'Minyak untuk menggoreng',
      'Daun bawang untuk hiasan'
    ],
    steps: [
      'Panaskan minyak dalam wajan.',
      'Tumis bawang putih dan bawang merah sampai harum.',
      'Masukkan telur, aduk hingga matang.',
      'Tambahkan nasi putih dan sayuran campur, aduk rata.',
      'Tuangkan kecap manis dan merica, aduk hingga semua tercampur.',
      'Sajikan dengan taburan daun bawang.'
    ],
  ),
  FoodRecipe(
    imageAsset: 'assets/images/sate_ayam.jpeg',
    name: 'Sate Ayam',
    description: 'Sate ayam dengan bumbu kacang yang lezat.',
    rating: '4.8',
    cookingTime: '60 menit',
    difficulty: 'Sedang',
    ingredients: [
      '500g daging ayam, potong dadu',
      '2 sendok makan kecap manis',
      '1 sendok makan minyak goreng',
      'Tusuk sate',
      'Bumbu kacang: 100g kacang tanah, 3 siung bawang putih, 2 cabai merah, garam, gula merah'
    ],
    steps: [
      'Campurkan ayam dengan kecap manis dan minyak, diamkan selama 30 menit.',
      'Tusukkan ayam ke tusuk sate.',
      'Panggang sate di atas bara api hingga matang.',
      'Haluskan bumbu kacang dan sajikan bersama sate.'
    ],
  ),
  FoodRecipe(
    imageAsset: 'assets/images/rendang.jpeg',
    name: 'Rendang',
    description: 'Daging sapi yang dimasak dengan bumbu rempah yang kaya.',
    rating: '4.9',
    cookingTime: '180 menit',
    difficulty: 'Sulit',
    ingredients: [
      '1kg daging sapi, potong dadu',
      '1 liter santan',
      '2 batang serai, memarkan',
      '5 lembar daun jeruk',
      '3 sendok makan bumbu rendang',
      'Garam secukupnya'
    ],
    steps: [
      'Rebus daging sapi dengan santan sampai empuk.',
      'Masukkan serai dan daun jeruk ke dalam rebusan.',
      'Tambahkan bumbu rendang, masak dengan api kecil hingga kuah mengental.',
      'Masak hingga daging matang dan bumbu meresap, sajikan hangat.'
    ],
  ),
  FoodRecipe(
    imageAsset: 'assets/images/gado_gado.jpeg',
    name: 'Gado-Gado',
    description: 'Salad sayuran khas Indonesia dengan saus kacang.',
    rating: '4.6',
    cookingTime: '20 menit',
    difficulty: 'Mudah',
    ingredients: [
      '1 porsi sayuran (kubis, tauge, wortel)',
      '2 butir telur rebus',
      '100g tahu, goreng',
      'Bumbu kacang: 100g kacang tanah, 2 siung bawang putih, 1 sendok makan kecap manis, air panas'
    ],
    steps: [
      'Rebus sayuran hingga empuk, angkat dan tiriskan.',
      'Haluskan bumbu kacang dengan sedikit air panas.',
      'Sajikan sayuran dengan telur rebus dan tahu, tuangkan saus kacang di atasnya.'
    ],
  ),
  FoodRecipe(
    imageAsset: 'assets/images/ayam_penyet.jpeg',
    name: 'Ayam Penyet',
    description: 'Ayam goreng yang dipenyet dengan sambal dan disajikan dengan nasi.',
    rating: '4.7',
    cookingTime: '45 menit',
    difficulty: 'Sedang',
    ingredients: [
      '1 ekor ayam, potong',
      'Minyak untuk menggoreng',
      'Sambal: 5 cabai merah, 3 siung bawang putih, garam secukupnya',
      'Nasi putih untuk disajikan'
    ],
    steps: [
      'Goreng ayam hingga kecoklatan dan matang.',
      'Haluskan semua bahan sambal hingga lembut.',
      'Penyet ayam di atas sambal di piring dan sajikan dengan nasi putih.'
    ],
  ),
  FoodRecipe(
    imageAsset: 'assets/images/bubur_ayam.jpeg',
    name: 'Bubur Ayam',
    description: 'Bubur nasi yang disajikan dengan ayam dan berbagai pelengkap.',
    rating: '4.4',
    cookingTime: '45 menit',
    difficulty: 'Mudah',
    ingredients: [
      '1 panci beras untuk dibubur',
      '1 ekor ayam, dimasak dan dis shredded',
      'Daun bawang, bawang goreng, dan kerupuk untuk topping',
      'Kecap manis dan sambal untuk penyajian'
    ],
    steps: [
      'Masak beras dengan air hingga menjadi bubur.',
      'Sajikan bubur dalam mangkuk, tambahkan ayam shredded di atasnya.',
      'Taburi dengan daun bawang, bawang goreng, dan kerupuk.'
    ],
  ),
  FoodRecipe(
    imageAsset: 'assets/images/sop_buntut.jpeg',
    name: 'Sop Buntut',
    description: 'Sop segar dengan buntut sapi yang empuk dan sayuran.',
    rating: '4.5',
    cookingTime: '90 menit',
    difficulty: 'Sedang',
    ingredients: [
      '500g buntut sapi, potong',
      '1 liter air',
      '2 wortel, potong',
      '2 kentang, potong',
      '1 batang seledri, memarkan',
      'Garam dan merica secukupnya'
    ],
    steps: [
      'Rebus buntut sapi dengan air hingga empuk.',
      'Tambahkan wortel dan kentang, masak hingga sayuran matang.',
      'Bumbui dengan garam, merica, dan seledri sebelum disajikan.'
    ],
  ),
  FoodRecipe(
    imageAsset: 'assets/images/klepon.jpeg',
    name: 'Klepon',
    description: 'Klepon adalah bola ketan yang diisi dengan gula merah dan ditaburi kelapa.',
    rating: '4.2',
    cookingTime: '30 menit',
    difficulty: 'Mudah',
    ingredients: [
      '200g tepung ketan',
      '100ml air pandan',
      '100g gula merah, serut',
      '100g kelapa parut',
      'Sedikit garam'
    ],
    steps: [
      'Campurkan tepung ketan dengan air pandan hingga dapat dipulung.',
      'Ambil sedikit adonan, beri gula merah, bulatkan.',
      'Rebus dalam air mendidih hingga klepon mengapung.',
      'Tiriskan dan gulingkan dalam kelapa parut yang sudah diasin.'
    ],
  ),
  FoodRecipe(
    imageAsset: 'assets/images/pempek.jpeg',
    name: 'Pempek',
    description: 'Pempek adalah hidangan ikan yang digoreng, biasanya disajikan dengan cuka pedas.',
    rating: '4.6',
    cookingTime: '60 menit',
    difficulty: 'Sedang',
    ingredients: [
      '500g ikan tenggiri, haluskan',
      '250g tepung sagu',
      '1 butir telur',
      '1 sendok teh garam',
      '2 sendok makan air es',
      'Cuka pempek untuk penyajian'
    ],
    steps: [
      'Campurkan ikan halus dengan tepung sagu, telur, dan garam.',
      'Bentuk adonan sesuai selera, lalu rebus hingga matang.',
      'Goreng pempek hingga kecoklatan.'
    ],
  ),
];
