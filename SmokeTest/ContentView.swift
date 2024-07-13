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
                Spacer()
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
                        .frame(height: 40)
                        .background(Color.blue)
                        .cornerRadius(8)
                }
            }
        }
        .background(RootViewControllerAccessorNew().hidden())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
