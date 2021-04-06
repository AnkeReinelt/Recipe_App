//
//  DataController.swift
//  RezepteAppProjekt
//
//  Created by Student on 01.02.21.
//

import Foundation

class DataController: ObservableObject {
    // 1.
    @Published var allRecipeData = [Recipe]() 

    init() {
     
        allRecipeData.append(Recipe(id: 0, vegetarian: false, vegan: false, glutenFree: false, weightWatcherSmartPoints: 31, title: "Chicken with rice", aggregateLikes: 25, image: "chicken", readyInMinutes: 25, servings: 4, extendedIngredients: ["250 g chicken", "200 g rice", "150 g vegetables of your choice", "oil", "salt","pepper"],instructions: "Wash chicken, drain well, stuff ginger and scallion into the chicken's cavity. Using 2 tsp of salt as scrub, rub the salt all over the chicken for smooth looking skin.In a not too large stockpot which fits the chicken perfectly, boil the chicken stock (enough to cover the whole chicken) together with pandan leaves, carrot and salt.Submerge the whole chicken, breast side down in the boiling water for 35-45 minutes depending on the size of the chicken. Lower the heat to gentle simmer immediately.When chicken is cooked, remove chicken and plunge it into prepared cold water at once for 10 minutes. Keep the chicken broth** for later use.Drain the chicken, discard ginger and scallion from the cavity and set it aside to cool before chopping it neatly into desired serving size.FOR THE RICEHeat oil in wok, fry chopped shallots and garlic till fragrant and golden in colour. Add rice and stir well. Transfer the rice mixture to rice cooker.Once transferred, add chicken broth, pandan leaves, ginger, garlic and shallot oil, chicken fats and salt into rice mixture. Cook according to rice cooker's manual instruction.TO PREPARE CHICKEN RICE Line a serving plate with cucumber slices.Arrange chicken pieces on top, pour in the prepared sauce before garnishing with cilantro.Serve with chicken rice, side soup and chicken rice chili sauce."))
        allRecipeData.append(Recipe(id: 1, vegetarian: true, vegan: true, glutenFree: false, weightWatcherSmartPoints: 18, title: "Waffles (vegan)", aggregateLikes: 47, image: "waffel", readyInMinutes: 15, servings:2, extendedIngredients: ["1/2 cups unsweetened soy","teaspoons apple cider vinegar",
"cups all-purpose flour (240g)","tablespoon baking powder",
"teaspoon sea salt","tablespoon brown sugar or maple syrup",
                                                                                                                                                                                                                                "1/4 cup melted coconut oil or melted vegan butter",
                                                                                                                                                                                                                                                  "1/2 teaspoon vanilla extract"],instructions: "Mix the nut milk, vanilla extract and the lemon juice or ACV together in a small bowl/measuring cup. Set aside for about 5 minutes - this will make the vegan buttermilk.In a large bowl, sift the flour, baking powder and salt. The sifting really helps to make the waffles fluffy.Add the sugar, melted butter/oil, buttermilk mixture into the dry ingredients and using a spatula, gently mix the batter until JUST combined. It's okay (and normal) to have some lumps. The batter should be thick and scoopable.Turn on and preheat your waffle maker according to which done level that you want. I set mine to about medium because I like mine crisp and golden but also very fluffy.Using a ½ cup (125mL) measuring cup, scoop out some batter and pour/spread into the middle of the greased waffle maker. You don’t need to push it to the edges. Close and let cook until the steam has COMPLETELY stopped from the waffle maker. Don't open it before the steam is finished!Remove each waffle and place on a baking sheet in your oven or toaster oven on warm or 200F/95C to keep warm and crispy until finished with the entire batter. Continue with the rest of the batter.Serve with your favourite toppings like blueberry sauce and enjoy!"))
        allRecipeData.append(Recipe(id: 2, vegetarian: true, vegan: false, glutenFree: false, weightWatcherSmartPoints: 31, title: "Oreo Cheese Cake", aggregateLikes: 25, image: "oreoCake", readyInMinutes: 25, servings: 4, extendedIngredients: ["20 Oreo Cookies","50 g Butter","200 g Sahne",
                                                                                                                                                                                                                                        "400 g Frischkäse",
                                         "250 g Magerquarkt",
                                "100 g Puderzucker",
                         "250 g Mascarpone"],instructions: "Für den Boden 20 Kekse zerhacken oder fein mahlen. Dafür die Kekse in einen Gefrierbeutel geben und mit einem Nudelholz mehrmals darüberrollen. Butter im Topf zergehen lassen und mit den Kekskrümeln vermischen. In eine Springform (Ø 22cm) geben und mit einem Esslöffel etwas andrücken. 10-15 Min. kalt stellen. Währenddessen Sahne steif schlagen und beiseite stellen. Frischkäse mit Quark, Puderzucker und Mascarpone verrühren. 20 Kekse grob hacken. Kekse unter die Creme rühren. Zum Schluss steife Sahne vorsichtig unterheben. Creme auf den Keksboden geben und glatt streichen. Restliche 12 Kekse grob hacken und auf dem Kuchen verteilen. Nochmals ca. 30-40 Min. kalt stellen. Rand der Springform lösen und den Kuchen auf eine Tortenplatte heben. Bis zum Servieren kalt stellen."))
 }
    
    /*public func loadData(){
              print("load data")
       
                 let url = URL(string: "http://3.64.55.66/api/food/getjson2.php")!
                 let request = URLRequest(url: url)
       
                 URLSession.shared.dataTask(with: request) {(data, response, error) in
                     //print(data)
                     //print(String(data: data!, encoding: .utf8)!)
                     
                    do {
                        if let jsonData = data {let decodedData = try JSONDecoder().decode([Recipe].self, from: jsonData)
                                          DispatchQueue.main.async {
                                             self.allRecipeData = decodedData}
                        } else {
                          print("No data")
                        }
                     } catch {
                         print("catch")
                     }
                     }.resume()
                }*/
          }

