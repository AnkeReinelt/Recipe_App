//
//  SettingsView.swift
//  RezepteAppProjekt
//
//  Created by Student on 04.02.21.
//

import SwiftUI



struct SettingsView: View {
    
    @State private var showOnlyVegetarian = true

    
    var body: some View {
    
        ///TODO Liste soll bei $showOnlyVegetarian nur vegetarische
        ///Gerichte anzeigen
    ZStack
          {
        Colors().color
                  .ignoresSafeArea()
    VStack {
             Toggle(isOn: $showOnlyVegetarian) {
                 Text("Show only vegetarian recipes")
             }.padding()

             if showOnlyVegetarian {
                 Text("nur vegetarische Rezepte werden angezeigt")
             }else{
                Text("alle Rezepte werden angezeigt")
             }
       }
     }
   }
 }



