//
//  HomeView.swift
//  Restart
//
//  Created by 鈴木航太 on 2024/02/06.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    var body: some View {
        ZStack {
       
            VStack(spacing:20) {
                Text("Home")
                    .font(.largeTitle)
                
                Button {
                    isOnboardingViewActive = true
                } label: {
                    Text("Restart")
                }

            }//: VStack
        } //: ZStack
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
