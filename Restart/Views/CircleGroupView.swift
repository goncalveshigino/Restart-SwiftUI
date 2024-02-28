//
//  CircleGroupView.swift
//  Restart
//
//  Created by Goncalves Higino on 21/02/24.
//

import SwiftUI

struct CircleGroupView: View {
    
    @State var ShaperColor: Color
    @State var ShapeOpacity: Double
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShaperColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(ShaperColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
    }
}

#Preview {
    ZStack {
        Color("ColorBlue")
            .ignoresSafeArea(.all, edges: .all)
        CircleGroupView(ShaperColor: .white, ShapeOpacity: 0.2)
    }
}
