//
//  LoginView.swift
//  Teste
//
//  Created by Raphael Iniesta Reis on 25/11/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var textUser: String = ""
    @State var textSenha: String = ""
    @State var isChecked: Bool = false
    
    @State var isToggled: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                Image("Arara")
                    .padding(.bottom, 40)
                
                TextField("User Name", text: $textUser)
                    .textFieldStyle(CustomTextField(type: FieldEnum.login))
                
                TextField("Password", text: $textSenha)
                    .textFieldStyle(CustomTextField(type: FieldEnum.senha))
                
                VStack(alignment: .leading) {
                    CheckBox("Remember me?", isChecked: isChecked)
                    
                    ForgotPassword()
                }
                .padding(.bottom, 50)
                .padding(.trailing, 60)
                
                    Button("Login") {
                        print("Changing to FindFriendsView")
                        isToggled.toggle()
                    }
                    .buttonStyle(ButtonView(.login))
                    .navigationDestination(isPresented: $isToggled) {FindFriendsView()}
                
                CreateAccount()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding()
            .cornerRadius(15)
            .background(Gradient.mainGradient)
        }
    }
}

#Preview {
    LoginView()
}
