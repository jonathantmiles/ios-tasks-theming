//
//  AppearanceHelper.swift
//  Tasks
//
//  Created by Jonathan T. Miles on 8/27/18.
//  Copyright © 2018 Andrew R Madsen. All rights reserved.
//

import UIKit

enum Appearance {
    static var sageGreen = UIColor(red: 35.0/255.0, green: 104.0/255.0, blue: 99.0/255.0, alpha: 1.0)
    static var wheatGold = UIColor(red: 255.0/255.0, green: 226.0/255.0, blue: 170.0/255.0, alpha: 1.0)
    static var crimsonBackground = UIColor(red: 84.0/255.0, green: 0.0/255.0, blue: 4.0/255.0, alpha: 1.0)

    static func setUpCrimsonTheme() {
        
        UINavigationBar.appearance().barTintColor = sageGreen
        UIBarButtonItem.appearance().tintColor = wheatGold
        UISegmentedControl.appearance().tintColor = wheatGold
         
        UILabel.appearance().textColor = wheatGold
        
        let textAttributes = [NSAttributedStringKey.foregroundColor : wheatGold]
        UINavigationBar.appearance().titleTextAttributes = textAttributes
        UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
        // UINavigationBar.font = Appearance.applicationFont(with: .caption1, pointSize: 30)
        
        
        UITableViewCell.appearance().backgroundColor = crimsonBackground // only sets backgrounds of cells
        
        UITextField.appearance().keyboardAppearance = .dark
        UITextField.appearance().tintColor = sageGreen
        UITextView.appearance().tintColor = sageGreen
        
        UITableView.appearance().sectionIndexBackgroundColor = sageGreen
        UITableView.appearance().sectionIndexColor = wheatGold
        UITableView.appearance().separatorColor = crimsonBackground
        
        
        
    }
    
    static func applicationFont(with textStyle: UIFontTextStyle, pointSize: CGFloat) -> UIFont {
        let result = UIFont(name: "BlackChancery", size: pointSize)!
        
        return UIFontMetrics(forTextStyle: textStyle).scaledFont(for: result)
    }
}

