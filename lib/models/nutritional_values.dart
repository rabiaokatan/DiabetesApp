class NutritionalValue {
  int id;
  String name;
  String calorie;
  String fat;
  String protein;
  String totalCarbohydrate;
  String cholesterol;
  String sodium;
  String potassium;
  String calcium;

  NutritionalValue({
    required this.id,
    required this.name,
    required this.calorie,
    required this.fat,
    required this.protein,
    required this.totalCarbohydrate,
    required this.calcium,
    required this.potassium,
    required this.sodium,
    required this.cholesterol,
  });
}

List<NutritionalValue> nutritionalValuesList = [

  NutritionalValue(
    id: 0, 
    name: "Yumurta", 
    calorie: "155", 
    fat: "11 g", 
    protein: "13 g", 
    totalCarbohydrate: "1,1 g", 
    cholesterol:"373 mg" ,
    sodium: "124 mg",
    potassium: "126 mg",
    calcium: "50 mg",
    ),
  NutritionalValue(
    id:1, 
    name: "Ekmek", 
    calorie: "264", 
    fat: "3,2 g", 
    protein: "9 g", 
    totalCarbohydrate: "49 g", 
    calcium: "260 mg", 
    potassium: "115 mg", 
    sodium: "491 mg",
    cholesterol: "0 mg",
    ),
  NutritionalValue(
    id: 2, 
    name: "Makarna", 
    calorie: "131", 
    fat: "1,1 g", 
    protein: "5 g", 
    totalCarbohydrate: "25 g", 
    calcium: "6 mg", 
    potassium: "24 mg", 
    sodium: "6 mg",
    cholesterol: "33 mg",
    ),
  NutritionalValue(
    id: 3, 
    name: "Tavuk", 
    calorie: "239", 
    fat: "14 g", 
    protein: "27 g", 
    totalCarbohydrate: "0 g", 
    calcium: "15 mg", 
    potassium: "223 mg", 
    sodium: "82 mg",
    cholesterol: "88 mg",
    ),
     NutritionalValue(
    id: 4, 
    name: "Pilav", 
    calorie: "359", 
    fat: "1,4 g", 
    protein: "10 g", 
    totalCarbohydrate: "76 g", 
    calcium: "83 mg", 
    potassium: "188 mg", 
    sodium: "1.303 mg",
    cholesterol: "0 mg",
    ),
   NutritionalValue(
    id: 5, 
    name: "Patates Kızartması", 
    calorie: "311", 
    fat: "15 g", 
    protein: "3,4 g", 
    totalCarbohydrate: "41 g", 
    calcium: "18 mg", 
    potassium: "579 mg", 
    sodium: "210 mg",
    cholesterol: "0 mg",
    ),
   NutritionalValue(
    id: 6, 
    name: "Peynir", 
    calorie: "402", 
    fat: "33 g", 
    protein: "25 g", 
    totalCarbohydrate: "1,3 g", 
    calcium: "721 mg", 
    potassium: "98 mg", 
    sodium: "621 mg",
    cholesterol:"105 mg" ,
    ),
   NutritionalValue(
    id: 7, 
    name: "Zeytin", 
    calorie: "115", 
    fat: "11 g", 
    protein: "0,8 g", 
    totalCarbohydrate: "6 g", 
    calcium: "88 mg", 
    potassium: "8 mg", 
    sodium: "735 mg",
    cholesterol: "0 mg",
    ),
  NutritionalValue(
    id: 8, 
    name: "Elma", 
    calorie: "52", 
    fat: "0,2 g", 
    protein: "0,3 g", 
    totalCarbohydrate: "14 g", 
    calcium: "6 mg", 
    potassium: "107 mg", 
    sodium: "1 mg",
    cholesterol: "0 mg",
    ),
  NutritionalValue(
    id: 9, 
    name: "Muz", 
    calorie: "88", 
    fat: "0,3 g", 
    protein: "1,1 g", 
    totalCarbohydrate: "23 g", 
    calcium: "5 mg", 
    potassium: "358 mg", 
    sodium: "1 mg",
    cholesterol: "0 mg",
    ),
    NutritionalValue(
    id: 10, 
    name: "Sığır Eti", 
    calorie: "250", 
    fat: "15 g", 
    protein: "26 g", 
    totalCarbohydrate: "0 g", 
    calcium: "18 mg", 
    potassium: "318 mg", 
    sodium: "72 mg",
    cholesterol: "90 mg",
    ),
    NutritionalValue(
    id: 11, 
    name: "Mercimek", 
    calorie: "116", 
    fat: "0,4 g", 
    protein: "9 g", 
    totalCarbohydrate: "20 g", 
    calcium: "19 mg", 
    potassium: "369 mg", 
    sodium: "2 mg",
    cholesterol: "0 mg",
    ),
    NutritionalValue(
    id: 12, 
    name: "Nohut", 
    calorie: "364", 
    fat: "6 g", 
    protein: "19 g", 
    totalCarbohydrate: "61 g", 
    calcium: "59 mg", 
    potassium: "875 mg", 
    sodium: "24 mg",
    cholesterol: "0 mg",
    ),
    NutritionalValue(
    id: 13, 
    name: "Pırasa", 
    calorie: "60", 
    fat: "0,3 g", 
    protein: "1,5 g", 
    totalCarbohydrate: "14 g", 
    calcium: "59 mg", 
    potassium: "180 mg", 
    sodium: "20 mg",
    cholesterol: "0 mg",
    ),
    NutritionalValue(
    id: 14, 
    name: "Mısır", 
    calorie: "96", 
    fat: "1,5 g", 
    protein: "3,4 g", 
    totalCarbohydrate: "21 g", 
    calcium: "6 mg", 
    potassium: "123 mg", 
    sodium: "35 mg",
    cholesterol: "0 mg",
    ),
    NutritionalValue(
    id: 15, 
    name: "Tarhana", 
    calorie: "336", 
    fat: "1,3 g", 
    protein: "12 g", 
    totalCarbohydrate: "65 g", 
    calcium: "61 mg", 
    potassium: "427 mg", 
    sodium: "1200 mg",
    cholesterol: "8 mg",
    ),
    NutritionalValue(
    id: 16, 
    name: "Süt", 
    calorie: "42", 
    fat: "1 g", 
    protein: "3,4 g", 
    totalCarbohydrate: "5 g", 
    calcium: "125 mg", 
    potassium: "150 mg", 
    sodium: "44 mg",
    cholesterol: "5 mg",
    ),
    NutritionalValue(
    id: 17, 
    name: "Bulgur", 
    calorie: "342", 
    fat: "1,3 g", 
    protein: "12 g", 
    totalCarbohydrate: "76 g", 
    calcium: "35 mg", 
    potassium: "410 mg", 
    sodium: "6 mg",
    cholesterol: "0 mg",
    ),
    NutritionalValue(
    id: 18, 
    name: "Patlıcan", 
    calorie: "24", 
    fat: "0,2 g", 
    protein: "1 g", 
    totalCarbohydrate: "6 g", 
    calcium: "9 mg", 
    potassium: "229 mg", 
    sodium: "2 mg",
    cholesterol: "0 mg",
    ),
    NutritionalValue(
    id: 19, 
    name: "Nişasta", 
    calorie: "370", 
    fat: "0,8 g", 
    protein: "0,2 g", 
    totalCarbohydrate: "90 g", 
    calcium: "14 mg", 
    potassium: "8 mg", 
    sodium: "30 mg",
    cholesterol: "0 mg",
    ),
    NutritionalValue(
    id: 20, 
    name: "Kabak", 
    calorie: "19", 
    fat: "0,4 g", 
    protein: "1,6 g", 
    totalCarbohydrate: "2 g", 
    calcium: "30 mg", 
    potassium: "200 mg", 
    sodium: "8 mg",
    cholesterol: "0 mg",
    ),
    NutritionalValue(
    id: 21, 
    name: "Kuru Bakla", 
    calorie: "323", 
    fat: "2 g", 
    protein: "23 g", 
    totalCarbohydrate: "47 g", 
    calcium: "54 mg", 
    potassium: "1356 mg", 
    sodium: "2 mg",
    cholesterol: "0 mg",
    ),
    NutritionalValue(
    id: 22, 
    name: "Mantar", 
    calorie: "22", 
    fat: "0,3 g", 
    protein: "3,1 g", 
    totalCarbohydrate: "3,3 g", 
    calcium: "3 mg", 
    potassium: "318 mg", 
    sodium: "5 mg",
    cholesterol: "0 mg",
    ),
    NutritionalValue(
    id: 23, 
    name: "Kuru Fasulye", 
    calorie: "281", 
    fat: "0,2 g", 
    protein: "22 g", 
    totalCarbohydrate: "30 g", 
    calcium: "141 mg", 
    potassium: "927 mg", 
    sodium: "6 mg",
    cholesterol: "0 mg",
    ),
    NutritionalValue(
    id: 24, 
    name: "Taze Fasulye", 
    calorie: "31", 
    fat: "0,2 g", 
    protein: "1,8 g", 
    totalCarbohydrate: "7 g", 
    calcium: "37 mg", 
    potassium: "211 mg", 
    sodium: "12 mg",
    cholesterol: "0 mg",
    ),
    NutritionalValue(
    id: 25, 
    name: "Havuç", 
    calorie: "41", 
    fat: "0,24 g", 
    protein: "1 g", 
    totalCarbohydrate: "10 g", 
    calcium: "33 mg", 
    potassium: "320 mg", 
    sodium: "78 mg",
    cholesterol: "0 mg",
    ),
];
