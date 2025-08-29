//
//  OccupationRowView.swift
//  StocPad
//
//  Created by iredefbmac_44 on 25/08/25.
//

import Foundation
import SwiftUI

struct OccupationRowView: View {
    let option: OccupationOption
    let isLast: Bool
    let onTapped: () -> Void
    
    @State private var isPressed = false
    
    var body: some View {
        Button(action: onTapped) {
            VStack(spacing: 0) {
                HStack {
                    Text(option.title)
                        .font(.system(size: 17, weight: .medium))
                        .foregroundColor(.black)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.gray)
                }
                .padding(.vertical, 20)
                .padding(.horizontal, 20)
                .background(isPressed ? Color.gray.opacity(0.1) : Color.white)
                
                if !isLast {
                    Rectangle()
                        .fill(Color.gray.opacity(0.2))
                        .frame(height: 0.5)
                        .padding(.leading, 20)
                }
            }
        }
        .buttonStyle(PlainButtonStyle())
        .onLongPressGesture(minimumDuration: 0, maximumDistance: .infinity, pressing: { pressing in
            withAnimation(.easeInOut(duration: 0.1)) {
                isPressed = pressing
            }
        }, perform: {})
    }
}
