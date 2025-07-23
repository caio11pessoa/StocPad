//
//  RegisterDetailView.swift
//  StocPad
//
//  Created by iredefbmac_01 on 23/07/25.
//

import SwiftUI

struct Register {
    let imageName: String
    let itemName: String
    let userName: String
    let date: String
    let description: String
}

struct RegisterDetailView: View {
    let register = Register(
        imageName: "Macbook",
        itemName: "Macbook",
        userName: "Lais Godinho",
        date: "24/05/2025",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac turpis sit amet velit dictum luctus. Morbi vulputate, nulla in malesuada scelerisque."
    )
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            
            
            HStack(alignment: .center, spacing: 16) {
                Image(register.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .background(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray.opacity(0.3), lineWidth: 1)
                    )
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(register.itemName)
                        .font(.headline)
                        .foregroundColor(.black)
                    Text(register.userName)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text(register.date)
                        .font(.headline)
                        .bold()
                        .foregroundColor(.black)
                }
                
                Spacer()
            }
            .padding(.horizontal)
            
            Text(register.description)
                .font(.body)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .padding(.horizontal)
            
            Button(action: {
                print("Clicou em editar o registro")
            }) {
                Text("Editar")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .foregroundColor(.black)
                    .cornerRadius(12)
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .padding(.top)
        .navigationTitle("Detalhes do Registro")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    VStack{
        Text("Screen")
    }
    .sheet(isPresented: .constant(true)) {
        RegisterDetailView()
            .presentationDetents([.height(320)])
    }
}
#Preview {
    RegisterDetailView()
}
