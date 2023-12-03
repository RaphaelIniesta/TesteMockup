//
//  ForgotPassword.swift
//  Teste
//
//  Created by Raphael Iniesta Reis on 23/11/23.
//

import SwiftUI

struct ForgotPassword: View {
    var body: some View {
        HStack {
            Text("Forgot password?")
                .foregroundStyle(.white)
                .font(.system(size: 19, weight: .semibold))
            
            Link("Click Here", destination: URL(string: "https://www.youtube.com/watch?v=_WZCvQ5J3pk")!)
                .foregroundStyle(.white)
                .font(.system(size: 19, weight: .bold))
        }
    }
}

#Preview {
    ForgotPassword()
}
