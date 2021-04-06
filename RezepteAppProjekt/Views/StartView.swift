//
//  StartView.swift
//  RezepteAppProjekt
//
//  Created by Student on 01.02.21.
//

import SwiftUI

struct StartView: View {

  
    @State private var changeViewValue:Int = 0
    @ObservedObject var dm:DataController = DataController()
 
    var body: some View {
     ZStack{
            if(changeViewValue == 0){
               ZStack{
                Image("food2")
                .resizable()
                .scaledToFill()
                    .frame(width: 500, height: 350).clipped().position(x: 210, y:680)
                Geometry(color: Colors().color).position(x: 120, y: 310)
                
                Text("Foodylicious!")
                    .foregroundColor(.white)
                    .bold()
                        .position(x: 200, y: 100)
                    .font(Font.system(size:50, design: .serif))
                Text("Rezeptideen für jeden Tag")
                    .foregroundColor(Colors().color2)
                    .bold()
                        .position(x: 200, y:180)
                    .font(Font.system(size:28, design: .serif))
                   
                
                Button(action: {self.changeViewValue = 1}) {
                    HStack {
                       Text("Enjoy").foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                    .frame(minWidth: 0, maxWidth: 200)
                    .padding()
               
                
                    .background(LinearGradient(gradient: Gradient(colors: [Colors().color3, Colors().color4]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                    .cornerRadius(40)
                    .padding(.horizontal, 20)
                }
             }
             }else{
                ListView()
            }
          }
        }
    }
    
    


    
    
  
            
