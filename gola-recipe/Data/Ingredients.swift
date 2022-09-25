//
//  AddIngredients.swift
//  gola-recipe
//
//  Created by 한상윤 on 2021/09/03.
//

import Foundation


struct IngredientInfo {
    var name: String
    var thumbnail: String
 
    init(name: String, thumbnail: String) {
        self.name = name
        self.thumbnail = thumbnail
    }
}



var ingredientslist: [IngredientInfo] = []



let ingredients: [IngredientInfo] =
    [IngredientInfo(name: "감자", thumbnail: "감자" ),
     IngredientInfo(name: "고구마", thumbnail: "고구마" ),
     IngredientInfo(name: "고추", thumbnail: "고추" ),
     IngredientInfo(name: "당근", thumbnail: "당근" ),
     IngredientInfo(name: "대파", thumbnail: "대파" ),
     IngredientInfo(name: "버섯", thumbnail: "버섯" ),
     IngredientInfo(name: "새우", thumbnail: "새우" ),
     IngredientInfo(name: "숙주나물", thumbnail: "숙주나물" ),
     IngredientInfo(name: "애호박", thumbnail: "애호박" ),
     IngredientInfo(name: "오이", thumbnail: "오이" ),
     IngredientInfo(name: "콩나물", thumbnail: "콩나물" ),
     IngredientInfo(name: "가래떡", thumbnail: "가래떡" ),
     IngredientInfo(name: "가지", thumbnail: "가지" ),
     IngredientInfo(name: "고사리", thumbnail: "고사리" ),
     IngredientInfo(name: "꼬막", thumbnail: "꼬막" ),
     IngredientInfo(name: "달걀", thumbnail: "sample-1" ),
     IngredientInfo(name: "닭", thumbnail: "sample-1" ),
     IngredientInfo(name: "당근", thumbnail: "sample-1" ),
     IngredientInfo(name: "돼지고기", thumbnail: "sample-1" ),
     IngredientInfo(name: "두부", thumbnail: "sample-1" ),
     IngredientInfo(name: "마늘", thumbnail: "sample-1" ),
     IngredientInfo(name: "멸치", thumbnail: "sample-1" ),
     IngredientInfo(name: "무", thumbnail: "sample-1" ),
     IngredientInfo(name: "미나리", thumbnail: "sample-1" ),
     IngredientInfo(name: "미더덕", thumbnail: "sample-1" ),
     IngredientInfo(name: "미역", thumbnail: "sample-1" ),
     IngredientInfo(name: "부추", thumbnail: "sample-1" ),
     IngredientInfo(name: "쇠고기", thumbnail: "sample-1" ),
     IngredientInfo(name: "양배추", thumbnail: "sample-1" ),
     IngredientInfo(name: "양파", thumbnail: "sample-1" ),
     IngredientInfo(name: "오리고기", thumbnail: "sample-1" ),
     IngredientInfo(name: "오징어", thumbnail: "sample-1" ),
     IngredientInfo(name: "우엉", thumbnail: "sample-1" ),
]

//    "감자", "고구마", "고추", "당근", "당면", "대파", "버섯", "버섯", "버섯", "새우", "숙주나물", "애호박", "오이", "콩나물","가래떡","가지","건미역","고사리","꼬막","달걀","닭","닭가슴살","당근","돼지고기","두부","마늘","멸치","무","미나리","미더덕","부추","쇠고기","양배추","양파","오리고기","오징어","우엉"
