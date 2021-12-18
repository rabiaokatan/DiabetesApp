class Recipe {
  int id;
  String name;
  String image;
  int kcal;
  List<String> ingredients;
  List<String> recipe;

  Recipe(
      {required this.id,
      required this.name,
      required this.image,
      required this.kcal,
      required this.ingredients,
      required this.recipe});
}

List<Recipe> recipes = [
  Recipe(
    id: 0,
    name: 'Çavdar Ekmek Üzerine Yumurta',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/cavdar-ekmek-uzerine-yumurta-fd159c28-ef3e-420e-8912-9432b0787b80.jpg',
    kcal: 174,
    ingredients: [
      '2 yumurta',
      '1,5 yemek kaşığı yarım yağlı süt',
      'Tuz',
      'Tane çekim karabiber',
      '1 dilim kızarmış çavdar ekmeği',
    ],
    recipe: [
      'Bir kase de yumurta ve sütü çırpın, içine birer tutam tuz ve karabiber ekleyin.',
      'Yapışmaz bir tavada en fazla 2-3 dk kadar tavanın kenarlarından ortasına doğru karıştırarak sulu ve yumuşak kıvamlı bir yumurta elde edin.',
      'Pişince kızarmış çavdar ekmeği üstüne alın, damak tadınıza göre üstüne birer tutam daha tuz ve karabiber eklenebilir.',
    ],
  ),
  Recipe(
    id: 1,
    name: 'Tarçınlı Yulaf Ezmesi',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/tarcinli-yulaf-ezmesi-306ebad9-1b19-4442-b41a-ba8bbc1280d6.jpg',
    kcal: 370,
    ingredients: [
      '2 silme yemek kaşığı yulaf ezmesi',
      '2 yemek kaşığı su',
      '2 yemek kaşığı yarım yağlı süt',
      '1 çay kaşığı toz tarçın',
    ],
    recipe: [
      'Yapışmaz bir tavaya yulaf, su ve sütü ekleyip 1-2 sefer karıştırarak kaynamaya getirin.',
      'Piştikten sonra 5 dakika demlendirip, tarçını ilave edin.',
    ],
  ),
  Recipe(
    id: 2,
    name: 'Kurutulmuş Domatesli Sebzeli Omlet',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/kurutulmus-domatesli-sebzeli-omlet-b6b2624f-7aef-44be-9292-59d7f919213a.jpg',
    kcal: 276,
    ingredients: [
      "1 pırasa ince dilimlenmiş",
      "1 yemek kaşığı zeytinyağı",
      "6 adet dilimlenmiş kuru domates",
      "30 gr ıspanak (taze veya donmuş)",
      "Tuz",
      "Tane çekim karabiber",
      "4 yumurta ",
    ],
    recipe: [
      "Yapışmaz bir tavada zeytinyağı ile pırasayı yumuşayıncaya kadar pişirin.",
      "Daha sonra domatesleri, ıspanağı, tuz ve karabiberi ekleyin.",
      "4 yumurtayı iyice çırpıp, ilave edin. Üst-alt pişirin. (2 porsiyon çıkar.) ",
    ],
  ),
  Recipe(
    id: 3,
    name: 'Yoğurtlu Granola',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/yogurtlu-granola-63fe6de3-4fc1-44d3-8ea9-c5a0d378e132.jpg',
    kcal: 277,
    ingredients: [
      "6-10 adet ahududu (taze veya donmuş)",
      "2 yemek kaşığı dolusu yaban mersini (taze veya donmuş)",
      "3 yemek kaşığı yoğurt",
      "2 yemek kaşığı yulaf",
      "1 yemek kaşığı karışık keten tohumu",
      "Ay çekirdeği",
      "Kabak çekirdeği ve susam",
    ],
    recipe: [
      "Yulaf ve meyveleri kaseye koyup, üstüne yoğurdu ekleyin.",
      "Karışık tohumları en üste serpin. Meyveleri hafifçe ezerek, karıştırarak yiyin.",
    ],
  ),
  Recipe(
    id: 4,
    name: 'Domatesli Nohutlu Bulgur Pilavı',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/domatesli-nohutlu-bulgur-pilavi-1d7bb62d-fb08-4378-918f-31606f8be699.jpg',
    kcal: 346,
    ingredients: [
      "1 su bardağı pişmiş nohut",
      "200 gr çeri domates",
      "Taze fesleğen",
      "1 çay bardağı bulgur",
      "2 yemek kaşığı zeytinyağı",
      "Tuz",
      "Tane çekim karabiber ",
    ],
    recipe: [
      "Bulguru bir kaseye alın, üstünü örtecek kadar sıcak su ekleyip, 30 dakika bekletin.",
      "Çeri domatesleri 4’e bölüp, pişmiş nohutla karıştırın.",
      "Fesleğeni de ince ince doğrayıp karışıma ekleyin. 1 yemek kaşığı zeytinyağı, tuz ve karabiber ilavesi yapın, harmanlayın.",
      "Bulguru karıştırarak kabartın ve ilave edin.",
      "Son olarak kalan 1 yemek kaşığı zeytinyağını ve damak tadınıza göre ekstra ilave edeceğiniz tuz ve karabiberi ekleyin. (2 porsiyon çıkar.)",
    ],
  ),
  Recipe(
    id: 5,
    name: 'Tavuklu Naneli Kuskus',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/tavuklu-naneli-kuskus-19572661-4050-43ff-a1c8-b4f0abccfdc0.jpg',
    kcal: 270,
    ingredients: [
      "2 küçük tavuk göğsü",
      "1 diş ezilmiş sarımsak",
      "1 adet ufak kırmızı acı biber incecik doğranmış",
      "2 cm boyutunda taze zencefil soyulmuş",
      "1 çay kaşığı kimyon",
      "½ çay kaşığı zerdeçal",
      "2 yemek kaşığı sızma zeytinyağı",
      "Bir tutam tuz",
      "Tane çekilmiş karabiber",
      "1,5 çay bardağı kadar kuskus",
      "Taze nane incecik doğranmış",
      "½ limon kabuğu rendesi ve suyu",
    ],
    recipe: [
      "Tavuğu dilimler halinde kesin. Bir kase de sarımsak, kırmızı biber, zencefil ve diğer baharatlarla karıştırın.",
      "Üstüne limon kabuğu rendesi ve suyunu ekleyin.",
      "Son olarak da 1 yemek kaşığı zeytinyağı ekleyip tüm tavuk parçalarının karışıma bulandığından emin olun.",
      "Streç film ile örtüp buzdolabında 30 dakika bekletin, ideali 3-4 saat bekletmek olacaktır.",
      "1,5 çay bardağı kuskusu kaynar su kaplayıp, çekmeye bırakın.",
      "Yapışmaz tavada orta ateşte tavukları pişirin. Kuskusu kabartın, ince kıyılmış nane yapraklarını ekleyin, zeytinyağı ve ekstra limon suyu gezdirin.",
      "Kuskusu servis edip, üzerine de pişirdiğiniz tavukları yerleştirin, bir nane yaprağıyla süsleyin. ",
    ],
  ),
  Recipe(
    id: 6,
    name: 'Domatesli Mercimek Çorbası',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/domatesli-mercimek-corbasi-4193b719-eb6c-4d84-ac5a-0950329023d6.jpg',
    kcal: 193,
    ingredients: [
      "1 adet doğranmış soğan",
      "1 büyük rendelenmiş havuç",
      "1 yemek kaşığı zeytinyağı",
      "Bir tutam pul biber",
      "1 çay kaşığı kimyon",
      "3 yemek kaşığı kırmızı mercimek",
      "400 gr organik domates rendesi",
      "1.5 su bardağı sebze suyu",
      "1 limonun suyu ve kabuğunun rendesi",
    ],
    recipe: [
      "Soğanı ve havucu biraz yağda yumuşayıncaya kadar pişirip, pul biber ve kimyonu ekleyin.",
      "1 dakika çevirip mercimek, domates rendesi ve sebze suyunu katın.",
      "Mercimek yumuşayıncaya kadar 15-20 dakika pişirin.",
      "Blendirize edip, limon kabuğu rendesi ve limon suyuyla tatlandırın.",
    ],
  ),
  Recipe(
    id: 7,
    name: 'Omega 3\'lü Akdeniz Salatası',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/omega-3lu-akdeniz-salatasi-344dbc48-82eb-4070-8c48-408b9619570b.jpg',
    kcal: 168,
    ingredients: [
      "1 paket roka/bebek ıspanak içeren karışık salata veya Akdeniz yeşilliği",
      "1 küçük bağ su teresi veya maydanoz",
      "1 yemek kaşığı karışık keten tohumu",
      "1 tatlı kaşığı ay çekirdeği ve kabak çekirdeği ",
      "1 çay kaşığı susam",
      "1 yemek kaşığı sızma zeytinyağı",
      "Limon suyu",
      "Tuz",
    ],
    recipe: [
      "Karışık salata yapraklarını iyice yıkayıp, kurulayın.",
      "Geniş bir kasede Omega 3 tohumları, zeytinyağı limon suyu ve tuzla harmanlayın.",
    ],
  ),
  Recipe(
    id: 8,
    name: 'Hellimli Kinoa Salatası',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/hellimli-kinoa-salatasi-9b945334-f4a8-4341-8aa0-8f8df1833e82.jpg',
    kcal: 454,
    ingredients: [
      "6 adet kuru domates",
      "3 yemek kaşığı zeytinyağı",
      "1 küçük boy incecik doğranmış kırmızı soğan",
      "2 yemek kaşığı limon suyu",
      "1 tatlı kaşığı kimyon",
      "200 g ızgara hellim",
      "85 g kinoa",
    ],
    recipe: [
      "Kinoayı paketin üstündeki talimatlar doğrultusunda pişirip, süzün.",
      "Kase de diğer tüm malzemelerle karıştırın, son olarak ızgara hellimleri ekleyip servis yapın.",
    ],
  ),
  Recipe(
    id: 9,
    name: 'Tavuklu Karnabahar Salatası',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/tavuklu-karnabahar-salatasi-b9018661-f249-4b25-8e5f-f08fe663d9ff.jpg',
    kcal: 83,
    ingredients: [
      "Bir parça göğüs tavuk (zeytinyağı ve tuzla tavada pişmiş)",
      "1 ufak boy karnabahar (yıkanmış, rondodan çekilmiş)",
      "1 salatalık küp doğranmış",
      "1 kırmızı kapya biber küp doğranmış",
      "1 yemek kaşığı limon suyu",
      "2 yemek kaşığı zeytinyağı",
      "½ bardak taze maydanoz ince doğranmış",
      "4 adet taze yeşil soğan ince doğranmış",
      "2 çay kaşığı sarımsak tozu veya 1 diş sarımsak",
      "2 çay kaşığı kimyon",
      "Tuz/karabiber",
    ],
    recipe: [
      "Öncelikle tavuk göğsünü zeytinyağı ve tuzla birlikte yapışmaz tavada pişirin.",
      "Karnabaharı yıkadıktan sonra rondodan çektirin.",
      "Salatalık ve biberi küp küp doğrayın.",
      "Maydanoz ve taze soğanı da ince ince doğrayın.",
      "Tüm malzemeleri birleştirip, harmanlayın. 1 kase kadar yenebilir. 3-4 porsiyon çıkar.",
    ],
  ),
  Recipe(
    id: 10,
    name: 'Humus Ve Tam Buğday Unlu Lavaş',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/humus-ve-tam-bugday-unlu-lavas-6258b2c2-42a6-456a-97ce-46883930da0a.jpg',
    kcal: 182,
    ingredients: [
      "1 paket haşlanmış nohut",
      "1 diş doğranmış sarımsak",
      "3 yemek kaşığı yoğurt",
      "Limon suyu",
      "Tuz",
      "2 adet 15 cmlik tam buğday unlu lavaş",
    ],
    recipe: [
      "Hazır paket nohudu iyice yıkayıp, süzün.",
      "Nohut, sarımsak ve yoğurdu mutfak robotundan iyice pürüzsüz olana kadar geçirin, hafif tuz ve limon suyuyla tatlandırın.",
      "Lavaşları üçgen şeklinde kesip, hafif kızartın. Humusa bandırarak yiyin.",
    ],
  ),
  Recipe(
    id: 11,
    name: 'Diyabetik Kış Türlüsü',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/diyabetik-kis-turlusu-5d236933-cd2f-4cc7-b1ea-3f252865dd3a.jpg',
    kcal: 146,
    ingredients: [
      "400 g doğranmış domates",
      "1 yemek kaşığı domates püresi",
      "2 yemek kaşığı zeytinyağı",
      "2 diş ezilmiş sarımsak",
      "1 adet şeritler halinde dilimlenmiş pırasa",
      "70 g doğranmış havuç",
      "60 g küp doğranmış kereviz",
      "1 adet dilimlenmiş kırmızı soğan",
      "1 adet defne yaprağı",
      "1 çay kaşığı kimyon",
      "400 g hazır haşlanmış barbunya veya meksika fasulyesi.",
    ],
    recipe: [
      "Havuç ve kerevizi tuzlu suda 15 dk kadar kaynatın.",
      "Orta ateşte bir tavaya soğan, sarımsak ve pırasayı kahverengileştirmeden yumuşayana kadar çevirin.",
      "Yarı haşlanmış sebzeleri ve soğan karışımını bir sos tenceresine aktarın.",
      "Doğranmış domates, domates püresi, defne yaprağı ve kimyonu ekleyin. 30 dk kadar kaynatın.",
      "Defne yaprağını çıkarıp, bir güveç kabına aktarın, üstüne haşlanmış barbunyayı katın, 15 dk daha pişirip, sıcak servis edin.",
    ],
  ),
  Recipe(
    id: 12,
    name: 'Soslu Tavuk Şiş',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/soslu-tavuk-sis-b7d8b3ea-24f0-4b6b-9184-462535d6b194.jpg',
    kcal: 126,
    ingredients: [
      "2 adet tavuk göğüs",
      "½ çay kaşığı kimyon",
      "1 diş ezilmiş sarımsak",
      "½ çay kaşığı toz kişniş",
      "¼ çay kaşığı tatlı toz kırmızı biber",
      "1 limon suyu ve kabuğunun rendesi",
      "Taze kişniş",
      "sosu için:",
      "1 yemek kaşığı tuzu azaltılmış soya sosu",
      "1 yemek kaşığı susam yağı",
      "½ limon suyu",
    ],
    recipe: [
      "Tavuğu ince şeritler halince kesip, bir kasede tüm baharatlarla harmanlayın.",
      "Üzerini streç filmle kaplayıp, buzdolabında geceden 3-4 saat kadar veya 30 dk kadar marine edin.",
      "Tavuk parçalarını eşit olarak 4 adet kebap şişine dağıtıp, orta ateşte her bir tarafı eşit derecede pişene kadar tavada/ızgarada çevirin.",
      "Sos malzemelerini karıştırıp tavuk yanına servis edin.",
    ],
  ),
  Recipe(
    id: 13,
    name: 'Ispanaklı Levrek Fileto',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/ispanakli-levrek-fileto-7e36bddf-30db-4505-988b-a6ddae912765.jpg',
    kcal: 230,
    ingredients: [
      "1,5 yemek kaşığı zeytinyağı",
      "1,5 diş ezilmiş sarımsak",
      "180 g taze bebek ıspanak yaprakları",
      "180 g levrek fileto",
      "Tuz",
      "Tane çekilmiş karabiber",
      "50 gr çeri domates",
    ],
    recipe: [
      "Orta ateşte bir tavada zeytinyağı, sarımsak ve ıspanağı pişirin.",
      "Izgara veya tavada tuz/karabiber eklenmiş çeri domates ve levreği pişirin.",
      "Ispanak üstüne levreği koyup, çeri domateslerle süsleyin. Afiyet olsun.",
    ],
  ),
  Recipe(
    id: 14,
    name: 'Kıymalı Kabak Mantısı',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/kiymali-kabak-mantisi-e983b506-5099-4a12-be6d-e500c2a0f74f.jpg',
    kcal: 266,
    ingredients: [
      "2 adet kabak",
      "1 küçük boy kapya biber",
      "100 g kıyma",
      "½ adet soğan",
      "4 yemek kaşığı yoğurt",
      "1 diş sarımsak",
      "1 yemek kaşığı zeytinyağı",
      "Tuz",
    ],
    recipe: [
      "Kabağı soymadan halka şeklinde doğrayın. Kapya biberi de halka şeklinde doğrayın.",
      "Kabağı ve biberi zeytinyağında soteleyin, biraz tuz ekleyin. Servis tabağına alın.",
      "Kıyma ve soğanı yağsız bir şekilde kavurun. Tuz ekleyip kabağın üstüne gezdirin.",
      "Hazırladığınız sarımsaklı yoğurdu da koyup afiyetle yiyin.",
    ],
  ),
  Recipe(
    id: 15,
    name: 'Havuçlu Biftek',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/havuclu-biftek-a7b50178-4275-4299-ae78-a8ec8023c742.jpg',
    kcal: 210,
    ingredients: [
      "1 parça biftek/kontrafile",
      "1 ufak havuç doğranmış",
      "1 ufak soğan doğranmış",
      "1-2 ufak diş sarımsak ezilmiş",
      "1,5 yemek kaşığı zeytinyağı",
      "1 dal taze biberiye ve kekik",
      "Tuz/karabiber",
    ],
    recipe: [
      "Fırını 200 dereceye ısıtın. Havuç, soğan, sarımsak, zeytinyağı biraz kekik, biberiye ve tuz ilavesi ile karıştırıp, fırın tepsisine yayın.",
      "Eti önden mühürleyip, zeytinyağı, kalan kekik, biberiye ve tuz ile harmanlayıp sebzelerin üzerine yerleştirin.",
      "1 saat pişirin. Yanına haşlanmış sebzeler de ekleyebilirsiniz.",
    ],
  ),
  Recipe(
    id: 16,
    name: 'Avokadolu Kabak Spagetti',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/avokadolu-kabak-spagetti-b7dcc369-f140-437e-b1f7-4904f7d45971.jpg',
    kcal: 670,
    ingredients: [
      "1 kabak, 2 adet mantar",
      "½ avokado",
      "20 adet fesleğen yaprağı",
      "1,5 yemek kaşığı zeytinyağı",
      "1 diş sarımsak",
      "1 çay kaşığı limon suyu",
      "¼ çay kaşığı tuz",
      "1 porsiyon spagetti",
    ],
    recipe: [
      "Kabakları spiral haline getirin. Bir tavada zeytinyağı ile mantarları dilimleyip soteleyin.",
      "Ardından kabakları da ilave edip 1-2 dk yumuşayıncaya kadar pişirin.",
      "Kalan diğer tüm malzemeleri blenderde çekip karışıma ekleyin.",
      "Servis tabağına spagetti ve kabaklı karışımı ekleyerek harmanlayın.",
    ],
  ),
  Recipe(
    id: 17,
    name: 'Çikolatalı Fındıklı Muffin',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/cikolatali-findikli-muffin-1f7e333d-6d32-4117-b166-23c6634d3ffa.jpg',
    kcal: 398,
    ingredients: [
      "1,5 bardak badem unu",
      "¼ bardak erimiş hindistan cevizi yağı",
      "2 büyük yumurta çırpılmış",
      "¼ çay kaşığı muskat",
      "¼ çay kaşığı karanfil",
      "½ bardak (100g) fındık (rondodan çekilmiş)",
      "1 paket stevia",
      "Bir tutam tuz",
      "1 çay kaşığı kabartma tozu",
      "40 g bitter çikolata ",
    ],
    recipe: [
      "Fırını 175 dereceye ayarlayın.",
      "Badem unu, hindistan cevizi yağı, yumurta, muskat, karanfil, tatlandırıcı, tuz ve sodayı karıştırın.",
      "Muffin kaplarına dağıtın. Üstlerine bitter çikolata parçaları ilave edip, 18-20 dk pişirin. Afiyet olsun.",
    ],
  ),
  Recipe(
    id: 18,
    name: 'Karnabahar Pizza',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/karnabahar-pizza-59ed6bb3-d9c4-412e-bdd9-427712f6c19b.jpg',
    kcal: 170,
    ingredients: [
      "400 gram karnabahar (rende)",
      "1 yumurta",
      "100 gram labne",
      "60 g mozzarella peyniri (rendelenmiş)"
          "Ispanak",
      "Mantar",
      "1/2 bardak ev yapımı konserve domates",
      "1 çay kaşığı balzamik sirke",
      "2 diş sarımsak",
      "Tuz, karabiber",
      "Zeytinyağı",
      "Cherry domates (süslemek için)",
    ],
    recipe: [
      "Rendelenmiş karnabaharı 5-6 dakika haşlayın ve iyice süzün. İçine labne peynirini ekleyin ve karıştırın.",
      "Tuz, karabiber ve yumurtayı ekleyin tekrar karıştırın.",
      "Karnabahardan hazırladığınız hamuru, yağlı kağıt serdiğiniz iki fırın tepsisine eşit bir şekilde paylaştırın ve kaşıkla daire şeklini verin.",
      "200 derecede önceden ısıtılmış fırında 20 dakika pişirin. Konserve domates, balzamik sirke ve sarımsağı rondodan geçirin.",
      "Pizza hamuruna önce sos, sonra ıspanak, mantar ve mozerallayı ekleyin peynirler eriyene kadar pişirin. Afiyet olsun!",
    ],
  ),
  Recipe(
    id: 19,
    name: 'Diyabetik Muffin',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/diyabetik-muffin-d33d6f15-46c6-4f23-b561-eb893beb573f.jpg',
    kcal: 272,
    ingredients: [
      "1 su bardağı yulaf ezmesi",
      "1,5 olgun muz",
      "1 yumurta",
      "5-6 adet hurma",
      "1 çay kaşığı kabartma tozu",
      "Üzeri için:",
      "Yaban mersini veya kuru üzüm",
      "Yulaf",
    ],
    recipe: [
      "Tüm malzemeleri blenderdan geçirin ve muffin kalıplarına dökün.",
      "Üzerine yulaf ve yaban mersinlerini/kuru üzümleri ekleyin. 180 derece fırında 15-20 dk pişirin. Afiyet olsun!",
    ],
  ),
];
