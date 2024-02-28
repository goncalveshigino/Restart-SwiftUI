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
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(ShaperColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            
            Circle()
                .stroke(ShaperColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear {
            isAnimating = true
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
