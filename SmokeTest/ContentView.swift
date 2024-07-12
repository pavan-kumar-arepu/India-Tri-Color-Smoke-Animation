//
//  ContentView.swift
//  SmokeTest
//
//  Created by Pavankumar Arepu on 12/07/24.
//

import SwiftUI
import IndianFlagSmokeEffect


struct ContentView: View {
    @Environment(\.rootViewController) private var rootViewController
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Your App Content")
                    .foregroundColor(.white)
                    .padding()
                
                Button(action: {
                    if let rootViewController = rootViewController {
                        SmokeEffectPresenter.presentSmokeEffect(from: rootViewController)
                    }
                }) {
                    Text("Show Smoke Effect")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
            }
        }
        .background(RootViewControllerAccessor().hidden())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
