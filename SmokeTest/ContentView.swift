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
            Color.white.edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()

                
                Text("Indian-Tri-Color Animation \nFrom \n Swift Package Manager")
                                 .font(.title)
                                 .fontWeight(.bold)
                                 .frame(maxWidth: .infinity)
                                 .multilineTextAlignment(.center)
                                 .padding()
                Spacer()

                
                Text("GitHub: https://github.com/pavan-kumar-arepu/IndianFlagSmokeEffect-SwiftPackage.git")
                                 .font(.title)
                                 .fontWeight(.thin)
                                 .frame(maxWidth: .infinity)
                                 .multilineTextAlignment(.center)
                                 .padding()
                
            
                Spacer()

                Button(action: {
                    if let rootViewController = rootViewController {
                        IndianFlagSmokeEffect.presentSmokeEffect(from: rootViewController)
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
        .background(PackageRootViewControllerAccessor().hidden())
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
