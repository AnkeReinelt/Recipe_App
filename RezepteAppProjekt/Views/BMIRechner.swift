//
//  BMIRechner.swift
//  RezepteAppProjekt
//
//  Created by Student on 01.02.21.
//

import SwiftUI

struct BMIRechner: View {
  
   // @Binding var showNewView: Bool
    @State var weight:String = ""
    @State var height:String = ""
 
    var body: some View{
        
       NavigationView{
            ZStack{
                Colors().color
                          .ignoresSafeArea()
            ScrollView{
            VStack{
        
            chooseImage(strHeight: height, strWeight: weight).padding()
        
            TextField("Größe in cm", text: $height)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200, height: 25, alignment: .center)
                .padding()
                .foregroundColor(.black)
           
        
            TextField("Gewicht in kg", text: $weight)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .frame(width: 200, height: 25, alignment: .leading)
                .padding()
                .foregroundColor(.black)
        
            Text("Dein BMI: ")
                .font(.largeTitle)
                .foregroundColor(Color.black)
                .padding(.top)

            Text(String("\(computeBMI(strHeight: height, strWeight: weight))" ))
                .font(.largeTitle)
                .foregroundColor(Color.black)
            }
                .foregroundColor(Colors().color).navigationBarTitle("BMI Rechner", displayMode: .inline)
                }
            }
         }
       }
      }

func chooseImage(strHeight: String, strWeight: String) -> Image {
    var img = Image("sportFrau")
    let weight = Double(strWeight) ?? 0
    let height = Double(strHeight) ?? 0
    let result = weight / ((height * height) / 10000)

    if result <= 25 && result > 0{
        img = Image("frau1")
    } else if result > 25 && result <= 30 {
        img = Image("frau3")
    
 } else if result > 30 {
    img = Image("frau5")
 } else if result == 0{
        img = Image("sportFrau")
    }
    return img
 }
///TODO Ergebnis auf eine Nachkommastelle runden
func computeBMI(strHeight: String, strWeight: String) -> Double {
    let weight = Double(strWeight) ?? 0
    let height = Double(strHeight) ?? 0
    var result = weight / ((height * height) / 10000)

    if weight == 0 || height == 0 {
      result = 0
    }
    return result.rounded()
}


