//
//  ListView.swift
//  RezepteAppProjekt
//
//  Created by Student on 01.02.21.
//

import SwiftUI

struct ListView: View {
    
    
     @State private var showBMIView = false
    @State private var showSettingsView = false
    @ObservedObject var dm:DataController = DataController()
    @State var searchText = ""
    @State var isSearching = false
    
      @State private var isEditing = false
    //let users = Bundle.main.decode([Recipe].self, from: "jsonData")
    
    /* func applyFilter() {
        let cleanedFilter = filterString.trimmingCharacters(in: .whitespacesAndNewlines)
        if cleanedFilter.isEmpty {
            dm.allRecipeData = users
        }else {
            dm.allRecipeData = users.filter { $0.title
                    .localizedCaseInsensitiveContains(cleanedFilter) }
        }
    }*/
    
    var body: some View{
            
        TabView{
          NavigationView {
            VStack{
                ScrollView{
                 HStack{
                    TextField("Search...", text: $searchText)
                        .padding(.leading, 24)                }
                        .padding()
                        .background(Color(.systemGray4))
                        .cornerRadius(6)
                        .padding(.horizontal)
                        .onTapGesture(perform: {
                        isSearching = true
                    })
                       .overlay(
                         HStack {
                          Image(systemName: "magnifyingglass")
                          Spacer()
                           if isSearching {
                            Button(action: {
                             searchText = ""
                            }, label: {
                                Image(systemName: "xmark.circle.fill")
                                    .padding(.vertical)
                            })
                        }
                    }.padding(.horizontal,32)
                    .foregroundColor(.gray)
                )
         ///TODO Beim Filtern Groß & Kleinschreibung ignorieren
                ForEach((dm.allRecipeData).filter({ "\($0)".contains(searchText) || searchText.isEmpty  }), id: \.self){ item in
                   NavigationLink(destination: DetailView(dm: DataController(), recipe: Recipe(id: item.id, vegetarian: item.vegetarian, vegan: item.vegan, glutenFree: item.glutenFree, weightWatcherSmartPoints: item.weightWatcherSmartPoints, title: item.title, aggregateLikes: item.aggregateLikes, image: item.image, readyInMinutes: item.readyInMinutes, servings: item.servings,extendedIngredients: item.extendedIngredients,                   instructions: item.instructions))){
                            
                    RecipeCellView(image: item.image, title: item.title, readyInMinutes: item.readyInMinutes, aggregateLikes: item.aggregateLikes)                    }
                   }// Ende ForEach
              
                    /*  .onAppear{dm.loadData()}
                        .navigationBarTitle(Text("Food List"), displayMode: .inline)
                         .navigationBarItems(trailing: Button("BMI Rechner"){
                     showBMIView = true
                
                 })
                 .sheet(isPresented: $showBMIView, content: {
                     BMIRechner(showNewView: $showBMIView)
                 })*/                 }
                }
            }
            .foregroundColor(Color(.black))
            .tabItem {
                Image(systemName: "list.dash")
                Text("Food")
               }
            
          
            SettingsView()
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("Settings")
                }
            
            
            BMIRechner()
                .tabItem {
                    Image(systemName: "scalemass.fill")
                    Text("BMI")
                }
            
             }
          }
     }



struct ListView_Previews: PreviewProvider {
    static var previews: some View {
       ListView()
    }
}
