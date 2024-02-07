//
//  ContentView.swift
//  Restart
//
//  Created by 鈴木航太 on 2024/02/06.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboadingViewActive: Bool = true
                
    var body: some View {
        ZStack {
            if isOnboadingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
