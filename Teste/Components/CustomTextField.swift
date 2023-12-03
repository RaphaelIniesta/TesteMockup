//
//  LoginField.swift
//  Teste
//
//  Created by Raphael Iniesta Reis on 21/11/23.
//

import SwiftUI

enum FieldEnum: String {
    case login
    case senha
    case search
    
//    var fieldText: String {
//        switch self {
//        case .login: return "User Name"
//        case .senha: return "Password"
//        }
//    }
    
    var fieldImage: String {
        switch self {
        case .login: return "person"
        case .senha: return "lock"
        case .search: return "magnifyingglass"
        }
    }
}

struct CustomTextField: TextFieldStyle {
    var type: FieldEnum
    
    @State var loginText: String = ""
    
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        HStack {
            Image(systemName: type.fieldImage)
                .foregroundStyle(.gray)
                .padding([.top, .bottom, .leading], 20)
            
            configuration
                .foregroundStyle(.gray)
                .padding([.top, .bottom, .trailing], 20)
        }
        .background(.white)
        .cornerRadius(15)
        .padding()
    }
}

#Preview() {
    ContentView()
}
