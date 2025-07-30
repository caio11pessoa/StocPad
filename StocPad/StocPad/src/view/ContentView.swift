//
//  ContentView.swift
//  StocPad
//
//  Created by Carlos Jorge on 30/06/25.
//

import SwiftUI

struct ContentView: View {
    @State private var responsavel: String = ""
    @State private var dataEmprestimo: String = ""
    @State private var tags: String = ""

    var body: some View {
        VStack {
            Spacer()

            VStack(spacing: 8) { // Espaçamento vertical entre campos reduzido
                CustomTextField(
                    placeholder: "Responsável",
                    systemImage: "person",
                    text: $responsavel
                )

                CustomTextField(
                    placeholder: "Data de Empréstimo",
                    systemImage: "calendar",
                    text: $dataEmprestimo
                )

                CustomTextField(
                    placeholder: "Adicionar Tags",
                    systemImage: "tag",
                    text: $tags
                )
            }
            .frame(maxWidth: 400)
            .padding(.horizontal)
            .padding(.top, 40)

            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemBackground))
    }
}
