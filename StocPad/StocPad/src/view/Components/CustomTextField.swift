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

    @FocusState private var isFocused: Bool

    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 16)
                .fill(Color(.systemGray6))
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(isFocused ? Color.blue : Color.gray.opacity(0.4), lineWidth: 2)
                )

            HStack(spacing: 12) {
                Image(systemName: systemImage)
                    .foregroundColor(.gray)
                    .frame(width: 24, height: 24)

                ZStack(alignment: .leading) {
                    if !text.isEmpty && !isFocused {
                        VStack(alignment: .leading, spacing: 2) {
                            Text(placeholder)
                                .font(.caption)
                                .foregroundColor(.primary)
                            Text(text)
                                .font(.body)
                                .foregroundColor(.secondary)
                        }
                        .allowsHitTesting(false)
                    }

                    TextField("", text: $text)
                        .focused($isFocused)
                        .foregroundColor(.primary)
                        .opacity((!text.isEmpty && !isFocused) ? 0 : 1)
                        .placeholder(when: text.isEmpty, placeholder: {
                            Text(placeholder).foregroundColor(.gray)
                        })
                        .disableAutocorrection(true)
                }
            }
            .padding(.vertical, 4)
            .padding(.horizontal, 12)
        }
        .fixedSize(horizontal: false, vertical: true)
        .animation(.easeInOut(duration: 0.2), value: isFocused)
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content
    ) -> some View {
        ZStack(alignment: alignment) {
            if shouldShow { placeholder() }
            self
        }
    }
}

