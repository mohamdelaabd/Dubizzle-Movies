//
//  Settings.swift
//  Dubizzle-Movies-List_iOSApp
//
//  Created by El-Abd on 12/23/19.
//  Copyright © 2019 El-Abd. All rights reserved.
//

import UIKit
import Fabric
import Crashlytics

public struct Settings {
    
    // MARK: - Private initializer
    
    private init() {}
    
    // MARK: - Functions
    
    static func printFonts() {
        let fontFamilyNames = UIFont.familyNames
        for familyName in fontFamilyNames {
            print("------------------------------")
            print("Font Family Name = [\(familyName)]")
            let names = UIFont.fontNames(forFamilyName: familyName)
            print("Font Names = [\(names)]")
        }
    }
    
    static func initializeServices() {
        Fabric.with([Crashlytics.self])
    }
    
    static func setupAppearance() {
        
        // Tint colors
        UIApplication.shared.delegate?.window??.tintColor = UIColor(commonColor: .yellow)
        UIRefreshControl.appearance().tintColor = UIColor(commonColor: .yellow)
        UITabBar.appearance().barTintColor = UIColor(commonColor: .offBlack)
        
        // Global font
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.font: TextStyle.navigationTitle.font]
        UILabel.appearance().font = TextStyle.body.font
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: TextStyle.body.font], for: .normal)
        
        // UINavigation bar
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().backgroundColor = UIColor.clear
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().isTranslucent = true
        UINavigationBar.appearance().tintColor = UIColor(commonColor: .yellow)
    }
}
