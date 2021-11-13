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
];
