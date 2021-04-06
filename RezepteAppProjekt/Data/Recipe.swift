//
//  Recipe.swift
//  RezepteAppProjekt
//
//  Created by Student on 01.02.21.
//

import Foundation

// MARK: - RecipeData


/*struct Incridient:  Codable {
    let id: Int
    let aisle, image, consistency, name: String
    let original, originalString, originalName: String
    let amount: Int
    let unit: String
 //   let meta, metaInformation: [String?] = ["a","b"]
    let measures: Measures
}

// MARK: - Measures
struct Measures : Codable{
    let us, metric: Metric
}

// MARK: - Metric
struct Metric : Codable {
    let amount: Int
    let unitShort, unitLong: String
}*/

struct Recipe: Codable, Identifiable, Hashable {
    
    let id: Int
    let vegetarian, vegan, glutenFree: Bool
    let weightWatcherSmartPoints: Int
    let title: String
    let aggregateLikes: Int
    let image: String
    let readyInMinutes, servings: Int
    let extendedIngredients: [String]
    let instructions:String
}

func getVegetarianInfo(isVegetarian: Bool) -> String {
    var resultString: String = ""
    if isVegetarian {
      resultString.append("vegetarian")
    }else {
        resultString.append("")
    }
  return resultString
}

func getVeganInfo(isVegan: Bool) -> String {
    var resultString: String = ""
    if isVegan {
      resultString.append("vegan")
    }else {
        resultString.append("")
    }
  return resultString
}

func getGlutenInfo(isGlutenFree: Bool) -> String {
    var resultString: String = ""
    if isGlutenFree {
      resultString.append("glutenfree")
    }else {
        resultString.append("")
    }
  return resultString
}
