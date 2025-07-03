//
//  PrimaryButton.swift
//  StocPad
//
//  Created by iredefbmac_01 on 01/07/25.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String
    let disabled: Bool = false
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 14)
                .padding(.horizontal, 16)
                .background( disabled ? Color.primaryButtonDisabled : Color.black)
                .cornerRadius(12)
                
        }
        .disabled(disabled)
        .accessibilityLabel(Text(title))
    }
}

#Preview {
    PrimaryButton(title: "Test") {
        print("Botao clicado!")
    }
}
