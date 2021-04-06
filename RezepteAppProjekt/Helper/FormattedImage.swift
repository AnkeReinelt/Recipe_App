//
//  FormattedImage.swift
//  RezepteAppProjekt
//
//  Created by Student on 01.02.21.
//

import SwiftUI



struct FormattedImage: View {
    
    var imageString:String
    
    var body: some View {
        
     /*  AsyncImage(url: URL(string: imageString)!,
                     placeholder: { Text("Loading ...") },
                     image: {
                        Image(uiImage: $0)
                        .renderingMode(.original)
                        .resizable()
                     })
            .frame(width: 70, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .cornerRadius(8)*/
            
        
        
            Image(imageString)
                .renderingMode(.original)
                .resizable()
             
                .frame(width: 90, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(red: 100, green: 0, blue: 0, opacity: 1), radius: 400, x: 20, y: 20)
                .cornerRadius(8)
 
          }
    
     }

struct FormattedImage2: View {
    
    var imageString:String
    
    var body: some View {
        
       /*AsyncImage(url: URL(string: imageString)!,
                     placeholder: { Text("Loading ...") },
                     image: {
                        
                        Image(uiImage: $0)
                        .renderingMode(.original)
                        .resizable()
                     })
                  .frame(width: 320, height: 300, alignment: .center)
                  .cornerRadius(8)*/
            
         Image(imageString)
                .renderingMode(.original)
                .resizable()
             
                .frame(width: 250, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(red: 100, green: 0, blue: 0, opacity: 1), radius: 400, x: 20, y: 20)
                .cornerRadius(8)
         }
      }


struct FormattedImage_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FormattedImage(imageString: "foodapi")
            FormattedImage2(imageString: "foodapi")
             }
     }
 }
