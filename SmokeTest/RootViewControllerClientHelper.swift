//
//  RootViewControllerHelper.swift
//  SmokeTest
//
//  Created by Pavankumar Arepu on 12/07/24.
//

import Foundation
import SwiftUI
import UIKit

struct RootViewControllerKey: EnvironmentKey {
    static var defaultValue: UIViewController? {
        return UIApplication.shared.windows.first?.rootViewController
    }
}

extension EnvironmentValues {
    var rootViewController: UIViewController? {
        get { self[RootViewControllerKey.self] }
        set { self[RootViewControllerKey.self] = newValue }
    }
}
