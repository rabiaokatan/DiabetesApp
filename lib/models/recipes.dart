class Recipe {
  int id;
  String name;
  String image;
  int? kcal;

  Recipe(
      {required this.id, required this.name, required this.image, this.kcal});
}

List<Recipe> recipes = [
  Recipe(
    id: 0,
    name: 'Çavdar Ekmek Üzerine Yumurta',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/cavdar-ekmek-uzerine-yumurta-fd159c28-ef3e-420e-8912-9432b0787b80.jpg',
    kcal: 174,
  ),
  Recipe(
    id: 1,
    name: 'Tarçınlı Yulaf Ezmesi',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/tarcinli-yulaf-ezmesi-306ebad9-1b19-4442-b41a-ba8bbc1280d6.jpg',
    kcal: 370,
  ),
  Recipe(
    id: 2,
    name: 'Kurutulmuş Domatesli Sebzeli Omlet',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/kurutulmus-domatesli-sebzeli-omlet-b6b2624f-7aef-44be-9292-59d7f919213a.jpg',
    kcal: 276,
  ),
  Recipe(
    id: 3,
    name: 'Yoğurtlu Granola',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/yogurtlu-granola-63fe6de3-4fc1-44d3-8ea9-c5a0d378e132.jpg',
    kcal: 277,
  ),
  Recipe(
    id: 4,
    name: 'Domatesli Nohutlu Bulgur Pilavı',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/domatesli-nohutlu-bulgur-pilavi-1d7bb62d-fb08-4378-918f-31606f8be699.jpg',
    kcal: 346,
  ),
  Recipe(
    id: 5,
    name: 'Tavuklu Naneli Kuskus',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/tavuklu-naneli-kuskus-19572661-4050-43ff-a1c8-b4f0abccfdc0.jpg',
    kcal: 270,
  ),
  Recipe(
    id: 6,
    name: 'Domatesli Mercimek Çorbası',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/domatesli-mercimek-corbasi-4193b719-eb6c-4d84-ac5a-0950329023d6.jpg',
    kcal: 193,
  ),
  Recipe(
    id: 7,
    name: 'Omega 3\'lü Akdeniz Salatası',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/omega-3lu-akdeniz-salatasi-344dbc48-82eb-4070-8c48-408b9619570b.jpg',
    kcal: 168,
  ),
  Recipe(
    id: 8,
    name: 'Hellimli Kinoa Salatası',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/hellimli-kinoa-salatasi-9b945334-f4a8-4341-8aa0-8f8df1833e82.jpg',
    kcal: 454,
  ),
  Recipe(
    id: 9,
    name: 'Tavuklu Karnabahar Salatası',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/tavuklu-karnabahar-salatasi-b9018661-f249-4b25-8e5f-f08fe663d9ff.jpg',
    kcal: 83,
  ),
  Recipe(
    id: 10,
    name: 'Humus Ve Tam Buğday Unlu Lavaş',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/humus-ve-tam-bugday-unlu-lavas-6258b2c2-42a6-456a-97ce-46883930da0a.jpg',
    kcal: 182,
  ),
  Recipe(
    id: 11,
    name: 'Diyabetik Kış Türlüsü',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/diyabetik-kis-turlusu-5d236933-cd2f-4cc7-b1ea-3f252865dd3a.jpg',
    kcal: 146,
  ),
  Recipe(
    id: 12,
    name: 'Soslu Tavuk Şiş',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/soslu-tavuk-sis-b7d8b3ea-24f0-4b6b-9184-462535d6b194.jpg',
    kcal: 126,
  ),
  Recipe(
    id: 13,
    name: 'Ispanaklı Levrek Fileto',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/ispanakli-levrek-fileto-7e36bddf-30db-4505-988b-a6ddae912765.jpg',
    kcal: 230,
  ),
  Recipe(
    id: 14,
    name: 'Kıymalı Kabak Mantısı',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/kiymali-kabak-mantisi-e983b506-5099-4a12-be6d-e500c2a0f74f.jpg',
    kcal: 266,
  ),
  Recipe(
    id: 15,
    name: 'Havuçlu Biftek',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/havuclu-biftek-a7b50178-4275-4299-ae78-a8ec8023c742.jpg',
    kcal: 210,
  ),
  Recipe(
    id: 16,
    name: 'Avokadolu Kabak Spagetti',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/avokadolu-kabak-spagetti-b7dcc369-f140-437e-b1f7-4904f7d45971.jpg',
    kcal: 670,
  ),
  Recipe(
    id: 17,
    name: 'Çikolatalı Fındıklı Muffin',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/cikolatali-findikli-muffin-1f7e333d-6d32-4117-b166-23c6634d3ffa.jpg',
    kcal: 398,
  ),
  Recipe(
    id: 18,
    name: 'Karnabahar Pizza',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/karnabahar-pizza-59ed6bb3-d9c4-412e-bdd9-427712f6c19b.jpg',
    kcal: 170,
  ),
  Recipe(
    id: 19,
    name: 'Diyabetik Muffin',
    image:
        'https://i.lezzet.com.tr/images-xxlarge-recipe/diyabetik-muffin-d33d6f15-46c6-4f23-b561-eb893beb573f.jpg',
    kcal: 272,
  ),
];
