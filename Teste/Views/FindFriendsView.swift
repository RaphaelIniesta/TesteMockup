//
//  FindFriendsView.swift
//  Teste
//
//  Created by Raphael Iniesta Reis on 25/11/23.
//

import SwiftUI

struct FindFriendsView: View {
    
    @State var isToggled: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                Image("Friends")
                    .resizable()
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                    .padding()
                
                CustomText("Find your friends", textType: .title)
                CustomText("You can add your friends from your contacts or social network", textType: .body)
                    .padding(.horizontal, 40)
                    .padding(.bottom, 40)

                    VStack {
                        Button("Add from contacts") {
                            print("From contacts")
                            isToggled.toggle()
                        }.buttonStyle(ButtonView(.contacts))
                            .padding(.bottom)
                        
                        Button("Add from Facebook") {
                            print("From Facebook")
                            isToggled.toggle()
                        }.buttonStyle(ButtonView(.facebook))
                    }
                    .navigationDestination(isPresented: $isToggled) {
                        ChatsView()
                    }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Gradient.mainGradient)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    FindFriendsView()
}
