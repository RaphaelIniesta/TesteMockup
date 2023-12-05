//
//  CustomToggle.swift
//  Teste
//
//  Created by Raphael Iniesta Reis on 04/12/23.
//

import SwiftUI

enum ToggleMarkType {
    case clean
    case checkmark
    case power
}

enum ToggleImageType {
    case gradient
    case image
}

struct CustomToggle: ToggleStyle {
    
    let mark: ToggleMarkType
    let image: ToggleImageType
    
    init(mark: ToggleMarkType, image: ToggleImageType) {
        self.mark = mark
        self.image = image
    }
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        
        if(image == ToggleImageType.image) {
                    HStack {
                        Image(configuration.isOn ? "IdentidadeVisual" : "IdentidadeVisual")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 51, height: 31, alignment: .center)
                            .overlay(
                                Circle()
                                    .foregroundColor(.white)
                                    .padding(.all, 3)
                                    .offset(x: configuration.isOn ? 11 : -11, y: 0)
                                    .animation(.linear(duration: 0.1), value: configuration.isOn)
                                    .overlay {
                                        if(mark == ToggleMarkType.checkmark) {
                                            Image(systemName: configuration.isOn ? "checkmark" : "xmark")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 8, height: 8, alignment: .center)
                                                .foregroundColor(configuration.isOn ? .green : .gray)
                                                .offset(x: configuration.isOn ? 11 : -11, y: 0)
                                        } else if(mark == ToggleMarkType.power) {
                                            Image(systemName: configuration.isOn ? "poweron" : "poweroff")
                                                .resizable()
                                                .aspectRatio(contentMode: .fit)
                                                .frame(width: 8, height: 8, alignment: .center)
                                                .foregroundColor(configuration.isOn ? .green : .gray)
                                                .offset(x: configuration.isOn ? 11 : -11, y: 0)
                                        } else {
                                            EmptyView()
                                        }
                                    }
                                    .animation(.linear(duration: 0.1), value: configuration.isOn)
                            ).cornerRadius(20)
                            .onTapGesture { configuration.isOn.toggle() }
                    }
        } else {
            HStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundStyle(LinearGradient(colors: [Color("academyBlue_old"), Color("academyPurple_old")], startPoint: .leading, endPoint: .trailing))
                    .frame(width: 51, height: 31)
                    .overlay(
                        Circle()
                            .foregroundColor(.white)
                            .padding(.all, 3)
                            .offset(x: configuration.isOn ? 11 : -11, y: 0)
                            .animation(.linear(duration: 0.25), value: configuration.isOn)
                            .overlay {
                                if(mark == ToggleMarkType.checkmark) {
                                    Image(systemName: configuration.isOn ? "checkmark" : "xmark")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 8, height: 8, alignment: .center)
                                        .foregroundColor(configuration.isOn ? .green : .gray)
                                        .offset(x: configuration.isOn ? 11 : -11, y: 0)
                                } else if(mark == ToggleMarkType.power) {
                                    Image(systemName: configuration.isOn ? "poweron" : "poweroff")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 8, height: 8, alignment: .center)
                                        .foregroundColor(configuration.isOn ? .green : .gray)
                                        .offset(x: configuration.isOn ? 11 : -11, y: 0)
                                } else {
                                    EmptyView()
                                }
                            }
                            .animation(.linear(duration: 0.25), value: configuration.isOn)
                    ).cornerRadius(20)
                    .onTapGesture { configuration.isOn.toggle() }
                    .font(Font.title.weight(.black))
            }
        }
    }
}

struct PreviewTest: View {
    @State var toggle: Bool = false
    var body: some View {
        Toggle(isOn: $toggle, label: {
            EmptyView()
        })
        .toggleStyle(CustomToggle(mark: .checkmark, image: .image))
    }
}

#Preview {
    PreviewTest()
}
