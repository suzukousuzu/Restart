//
//  HomeView.swift
//  Restart
//
//  Created by 鈴木航太 on 2024/02/06.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    @State private var isAnimatting : Bool = false
    var body: some View {

            VStack(spacing:20) {
                Spacer()
                ZStack {
                    CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                    Image("character-2")
                        .resizable()
                        .scaledToFit()
                    .padding()
                    .offset(y: isAnimatting ? 35 : -35)
                    .animation(
                        .easeInOut(duration: 4)
                        .repeatForever()
                        , value: isAnimatting
                    )
                }
                
                Text("testestestestestestestestestestestestestsetestetetatffasdfsdafaf")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding()
                
                Spacer()
         
                
                Button {
                    withAnimation {
                        isOnboardingViewActive = true
                    }
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
            

            }//: VStack
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                    isAnimatting = true
                })
            })
   
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
