//
//  ButtonView.swift
//  Teste
//
//  Created by Raphael Iniesta Reis on 23/11/23.
//

import SwiftUI

enum ButtonEnum {
    case login
    case contacts
    case facebook
    case chat
    
    var type: String {
        switch self {
        case .login: return "Log In"
        case .contacts: return "Add from contacts"
        case .facebook: return "Add from Faebook"
        case .chat: return "chat"
        }
    }
    
    var buttonBG: Color {
        switch self {
        case .login, .contacts, .chat: return Color("ButtonPrimary")
        case .facebook: return Color("ButtonFacebook")
        }
    }
}

struct ButtonView: ButtonStyle {
    
    var style: ButtonEnum
    
    init(_ style: ButtonEnum) {
        self.style = style
    }
    
    func makeBody(configuration: Configuration) -> some View {
        
        if(style == ButtonEnum.chat) {
            ZStack {
                configuration.label
                    .frame(width: 70, height: 70)
                    .background(configuration.isPressed ? Color("ButtonPrimaryDark") : style.buttonBG)
                    .clipShape(Circle())
                    .foregroundStyle(.clear)
                
                Image(systemName: "ellipsis.message")
                    .foregroundStyle(Color("CustomWhite"))
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
        }else if(style == ButtonEnum.facebook) {
            configuration.label
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(configuration.isPressed ? Color("ButtonFacebookDark") : style.buttonBG)
                .cornerRadius(20)
                .font(.system(size: 20, weight: .semibold))
                .padding(.horizontal, 30)
                .foregroundStyle(Color("CustomWhite"))
                .shadow(color: Color.black.opacity(0.2), radius: 3, y: 3)
        } else {
            configuration.label
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(configuration.isPressed ? Color("ButtonPrimaryDark") : style.buttonBG)
                .cornerRadius(20)
                .font(.system(size: 20, weight: .semibold))
                .padding(.horizontal, 30)
                .foregroundStyle(Color("CustomWhite"))
                .shadow(color: Color.black.opacity(0.2), radius: 3, y: 3)
        }
    }
    
}

#Preview {
    Button("Login") {
        print("Teste")
    }
    .buttonStyle(ButtonView(ButtonEnum.facebook))
}
