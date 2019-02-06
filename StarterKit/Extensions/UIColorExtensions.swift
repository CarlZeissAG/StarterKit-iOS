//
//  UIColor-Extensions.swift
//  StarterKit
//
//  Created by Kristof Dreier on 05.02.19.
//  Copyright © 2019 Carl Zeiss AG. All rights reserved.
//

import UIKit

extension UIColor {
    struct zeiss {
        static let black = UIColor(named: "ZeissBlack")!
        static let white = UIColor(named: "ZeissWhite")!
        static let cyan = UIColor(named: "ZeissCyan")!
        static let indigo = UIColor(named: "ZeissIndigo")!
        
        static let darkGray = UIColor(named: "ZeissGrey1Dark")!
        static let semiDarkGray = UIColor(named: "ZeissGrey2Semidark")!
        static let mediumGray = UIColor(named: "ZeissGrey3Medium")!
        static let semiLightGray = UIColor(named: "ZeissGrey4Semilight")!
        static let lightGray = UIColor(named: "ZeissGrey5Light")!
        static let ultraLightGray = UIColor(named: "ZeissGrey6Ultralight")!
        
        static let azur = UIColor(named: "ZeissAzur")!
        static let brightLemon = UIColor(named: "ZeissBrightLemon")!
        static let brightOrangeNeon = UIColor(named: "ZeissBrightOrangeNeon")!
        static let green = UIColor(named: "ZeissGreen")!
        static let greenNeon = UIColor(named: "ZeissGreenNeon")!
        static let lightGreen = UIColor(named: "ZeissLightGreen")!
        static let orange = UIColor(named: "ZeissOrange")!
        static let purpleRed = UIColor(named: "ZeissPurpleRed")!
        static let skyBlue = UIColor(named: "ZeissSkyBlue")!
    }
    
    var hexColor: String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        
        getRed(&r, green: &g, blue: &b, alpha: &a)
        
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        
        return String(format:"#%06x", rgb)
    }
}
