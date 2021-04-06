//
//  Geometry.swift
//  RezepteAppProjekt
//
//  Created by Student on 01.02.21.
//

import SwiftUI

struct Geometry: View {
    
    var color:Color
    
    var body: some View {

    Path { path in
    path.move(to: CGPoint(x: 0,y: 0))
    path.addLine(to: CGPoint(x: 510,y: 0))
    path.addLine(to: CGPoint(x: 510,y: 610))
    path.addCurve(to: CGPoint(x: 0, y: 610),
               control1: CGPoint(x: 375, y: 610),
               control2: CGPoint(x: 125, y: 830))
    path.addLine(to: CGPoint(x: 0,y: 0))
   }.fill(color)
    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
   }
}


struct Geometry_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Geometry(color: .init(red: 150/255, green: 200/255, blue: 200/255, opacity: 1))
        }
    }
}
