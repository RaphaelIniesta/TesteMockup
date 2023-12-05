//
//  Colors.swift
//  Teste
//
//  Created by Raphael Iniesta Reis on 25/11/23.
//

import SwiftUI

extension Gradient {
    public static let mainGradient = Gradient(colors: [Color("gradientPink"), Color("gradientBlue")])
    public static let academyGradient = Gradient(colors: [Color("academyBlue"), Color("academyRed")])
}

extension Color {
    public static let academyBlue: Color = Color(red:66/255,green:187/255,blue:213/255)
    public static let academyRed: Color =  Color(red:247/255,green:49/255,blue:87/255)
}
