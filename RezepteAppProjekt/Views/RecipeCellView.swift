//
//  RecipeCellView.swift
//  RezepteAppProjekt
//
//  Created by Student on 01.02.21.
//

import SwiftUI

struct RecipeCellView: View {
    
    var image:String
    var title: String
    var readyInMinutes: Int
    var aggregateLikes: Int
    
    var body: some View {
        
       HStack {
            FormattedImage(imageString: image)
              VStack(alignment: .leading, spacing: 5) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                HStack{
                    Image(systemName: "heart.fill").foregroundColor(.pink)
                    Text(String(aggregateLikes))
                    Image(systemName: "clock")
                        .foregroundColor(.pink)
                        .padding(.leading, 54.0)
                    Text(String(readyInMinutes) + " Min")
                /*Text("275 kcal / Portion")
                    .font(.caption)
                    .foregroundColor(Color.secondary)*/
                }
           }
        }
    }
}


struct RecipeCellView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RecipeCellView(image: "foodapi",title: "Gebratener Reis mit Hähnchen", readyInMinutes: 45, aggregateLikes: 115)
        }
    }
}


