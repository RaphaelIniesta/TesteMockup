//
//  CustomText.swift
//  Teste
//
//  Created by Raphael Iniesta Reis on 27/11/23.
//

import SwiftUI

enum TextEnum {
    case body
    case title
    case subTitle
}

struct CustomText: View {
    var text: String
    var textType: TextEnum
    
    init(_ text: String, textType: TextEnum) {
        self.text = text
        self.textType = textType
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Text(text)
                .font(.system(size: textType == .title ? 26 : textType == .subTitle ? 22 : 18, weight: textType == .title ? .black : textType == .subTitle ? .semibold : .regular))
                .foregroundStyle(Color("CustomWhite"))
        }
    }
}

#Preview {
    CustomText("Teste", textType: .subTitle)
}
