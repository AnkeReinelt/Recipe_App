//
//  DetailView.swift
//  RezepteAppProjekt
//
//  Created by Student on 01.02.21.
//

import Foundation
import SwiftUI

struct DetailView:View {
    
    @ObservedObject var dm:DataController = DataController()
    
    var recipe: Recipe
    
      var body: some View {
          ZStack{
            Colors().color
                      .ignoresSafeArea()
            ScrollView{
              VStack{
                
                 FormattedImage2(imageString: recipe.image)
                 .scaledToFit().padding()
            
                 Text(recipe.title).font(.largeTitle).fontWeight(.bold)
                  .foregroundColor(.white)
                  

                 HStack{
                   Image(systemName: "heart.fill").foregroundColor(.pink)
                
                   Text(String(recipe.aggregateLikes))
                
                   Image(systemName: "clock")
                       .foregroundColor(.pink)
                       .padding(.leading, 54.0)
                   Text(String(recipe.readyInMinutes))
                     }.padding(.top,10)
      
       
               VStack{
                  Text("\(getVegetarianInfo(isVegetarian: recipe.vegetarian))")
                    .multilineTextAlignment(.center)
                   
                   
                    Text("\(getVeganInfo(isVegan: recipe.vegan))")
                      .multilineTextAlignment(.center)
                      
                    
                    Text("\(getGlutenInfo(isGlutenFree: recipe.glutenFree))")
                      .multilineTextAlignment(.center)
           
                
               }.padding()
                Text("Ingredients:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.title2).padding()
                 
                
                ForEach(recipe.extendedIngredients,id: \.self) { item in
                    Text(item)
                           
                    }
             

            
                Text("Instructions:").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).font(.title2)
               .padding(.top,19.0)
                
             
                Text(recipe.instructions)
                    .padding()
                   
              }.onAppear(){
                   print(recipe.vegetarian)
           }
        }
       }
     }
   }












struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DetailView(recipe:  Recipe(id: 1, vegetarian: true, vegan: false, glutenFree: false, weightWatcherSmartPoints: 18, title: "Breakfast waffles", aggregateLikes: 47, image: "waffel", readyInMinutes: 15, servings:2,extendedIngredients: ["a"], instructions: ""))
        }
    }
}
