//
//  RegisterCard.swift
//  CardsView
//
//  Created by iredefbmac_45 on 08/07/25.
//

import SwiftUI

struct RegisterCard: View {
    var iconName: String
    var nome: String
    var responsavel: String
    var dateExpiracao: Date
    func formatarData(_ data: Date) -> String {
         let formatter = DateFormatter()
         formatter.dateStyle = .short
         return formatter.string(from: data)
     }
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(iconName)
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .padding(5)
                .background(
                        RoundedRectangle(cornerRadius: 14)
                            .stroke(Color.black, lineWidth: 1)
                    )
               .padding(.trailing, 15) // 👈 Afastamento do texto
            VStack(alignment: .leading, spacing: 4) {
                Text(nome)
                    .font(.title)
                    .bold(true)
                Text("Responsável: \(responsavel)")
                    .font(.title3.italic())
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 4) {
                Image(systemName: "info.circle")
                    .foregroundColor(.black)
                    .font(.system(size: 30))
                
                Text(formatarData(dateExpiracao))
                    .font(.headline)
            }
        }
    }
}
#Preview {
    VStack{
        RegisterCard(iconName: "Macbook", nome: "Alison", responsavel: "caio", dateExpiracao: .now)
            .padding()
        RegisterCard(iconName: "Ipad", nome: "Alison", responsavel: "caio", dateExpiracao: .now)
            .padding()
    }
}
