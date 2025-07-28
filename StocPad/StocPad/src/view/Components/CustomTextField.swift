//
//  CustomTextField.swift
//  StocPad
//
//  Created by iredefbmac_01 on 14/07/25.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: String
    var systemImage: String
    @Binding var text: String

    var body: some View {
        HStack(spacing: 12) {
            Image(systemName: systemImage)
                .foregroundColor(.gray)
                .frame(width: 24, height: 24)
                .padding(.leading, 12)

            TextField(placeholder, text: $text)
                .foregroundColor(.primary)
                .padding(.vertical, 12)
                .padding(.trailing, 12)
        }
        .background(Color(.systemGray6))
        .cornerRadius(16)
    }
}
