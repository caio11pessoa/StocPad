//
//  HomeView.swift
//  StocPad
//
//  Created by iredefbmac_01 on 01/08/25.
//


import SwiftUI

struct HomeView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    
                    Text("LoopStock")
                        .font(.largeTitle.bold())
                        .padding(.top)
                        .accessibilityAddTraits(.isHeader)
                    
                    HStack {
                        TextField("Cabo USB", text: $searchText)
                            .padding(.horizontal, 12)
                            .padding(.vertical, 10)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                            .overlay(
                                HStack {
                                    Spacer()
                                    Image(systemName: "mic.fill")
                                        .foregroundColor(.gray)
                                        .padding(.trailing, 10)
                                }
                            )
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 12) {
                            ShortcutButton(title: "Novo Registro", icon: "plus.circle.fill", destination: NovoRegistroView())
                            ShortcutButton(title: "Novo Estoque", icon: "tray.and.arrow.down.fill", destination: NovoEstoqueView())
                            ShortcutButton(title: "Visualizar Registros", icon: "doc.text.magnifyingglass", destination: VisualizarRegistrosView())
                            ShortcutButton(title: "Estoque Completo", icon: "cube.box.fill", destination: EstoqueCompletoView())
                        }
                        .padding(.vertical, 4)
                    }
                    
                    Text("Registros para expirar")
                        .font(.title2.bold())
                        .padding(.top, 8)
                    
                    VStack(spacing: 12) {
                        ForEach(mockItems) { item in
                            ItemCardView(item: item)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .previewDisplayName("HomeView")
    }
}

struct ShortcutButton<Destination: View>: View {
    var title: String
    var icon: String
    var destination: Destination

    var body: some View {
        NavigationLink(destination: destination) {
            VStack {
                Image(systemName: icon)
                    .font(.title2)
                Text(title)
                    .font(.caption)
                    .multilineTextAlignment(.center)
            }
            .frame(width: 90, height: 90)
            .background(Color.blue.opacity(0.1))
            .cornerRadius(12)
            .foregroundColor(.blue)
            .accessibilityLabel(Text(title))
        }
    }
}

struct ItemModel: Identifiable {
    let id = UUID()
    let nome: String
    let responsavel: String
    let dataExpiracao: String
}

let mockItems: [ItemModel] = [
    ItemModel(nome: "Macbook", responsavel: "Lais Godinho", dataExpiracao: "01/09/2025"),
    ItemModel(nome: "Mouse", responsavel: "Carlos Andrade", dataExpiracao: "15/08/2025"),
    ItemModel(nome: "Teclado", responsavel: "Joana Costa", dataExpiracao: "22/08/2025")
]

struct ItemCardView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.nome)
                    .font(.headline)
                Text("Responsável: \(item.responsavel)")
                    .font(.subheadline)
                Text("Expira em: \(item.dataExpiracao)")
                    .font(.footnote)
                    .foregroundColor(.red)
            }
            Spacer()
            Button {
            } label: {
                Image(systemName: "info.circle")
                    .foregroundColor(.blue)
            }
            .accessibilityLabel(Text("Mais informações sobre \(item.nome)"))
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .cornerRadius(12)
    }
}

struct NovoRegistroView: View {
    var body: some View {
        Text("Novo Registro")
    }
}

struct NovoEstoqueView: View {
    var body: some View {
        Text("Novo Estoque")
    }
}

struct VisualizarRegistrosView: View {
    var body: some View {
        Text("Visualizar Registros")
    }
}

struct EstoqueCompletoView: View {
    var body: some View {
        Text("Estoque Completo")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .preferredColorScheme(.light)
            HomeView()
                .preferredColorScheme(.dark)
        }
    }
}
