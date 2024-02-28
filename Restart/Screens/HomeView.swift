//
//  HomeView.swift
//  Restart
//
//  Created by Goncalves Higino on 21/02/24.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            //MARK: - HEADER
            
            Spacer()
            
            ZStack {
                CircleGroupView(ShaperColor: .gray, ShapeOpacity: 0.1)
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            
            //MARK: - CENTER
            Text("Thahaha, agagaga,sgsgsgsggsgsgs,shshshshshshshshshshshshshhshsggs.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            Spacer()
            
            //MARK: - FOOTER
             
            
            Button {
                isOnboardingViewActive = true
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            
        }
        
    }
}

#Preview {
    HomeView()
}
