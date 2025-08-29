//
//  TopNavigationBarView.swift
//  StocPad
//
//  Created by iredefbmac_44 on 25/08/25.
//

import Foundation
import SwiftUI

struct TopNavigationBarView: View {
    let onBackTapped: () -> Void
    let onCloseTapped: () -> Void
    
    var body: some View {
        HStack {
            Button(action: onBackTapped) {
                Image(systemName: "chevron.left")
                    .font(.system(size: 18, weight: .medium))
                    .foregroundColor(.black)
                    .frame(width: 44, height: 44)
            }
            
            Spacer()
            
            Button("Close", action: onCloseTapped)
                .font(.system(size: 16, weight: .medium))
                .foregroundColor(.black)
        }
        .padding(.horizontal, 20)
        .padding(.top, 16)
    }
}
