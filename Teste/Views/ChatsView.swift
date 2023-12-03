//
//  ChatsView.swift
//  Teste
//
//  Created by Raphael Iniesta Reis on 27/11/23.
//

import SwiftUI

struct ChatsView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        VStack {
            TextField("Search", text: $searchText)
                .textFieldStyle(CustomTextField(type: .search))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Gradient.mainGradient)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ChatsView()
}
