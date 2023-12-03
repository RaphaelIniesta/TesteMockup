//
//  CreateAccount.swift
//  Teste
//
//  Created by Raphael Iniesta Reis on 24/11/23.
//

import SwiftUI

struct CreateAccount: View {
    var body: some View {
        HStack {
            Text("Don't have an account?")
                .foregroundStyle(.white)
                .font(.system(size: 19, weight: .semibold))
            
            Link("Sign up", destination: URL(string: "https://www.youtube.com/watch?v=6n3pFFPSlW4")!)
                .foregroundStyle(.white)
                .font(.system(size: 19, weight: .bold))
        }
    }
}

#Preview {
    CreateAccount()
}
