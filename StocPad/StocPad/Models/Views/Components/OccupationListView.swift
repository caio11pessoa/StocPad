//
//  OccupationListView.swift
//  StocPad
//
//  Created by iredefbmac_44 on 25/08/25.
//

import Foundation
import SwiftUI

struct OccupationListView: View {
    let options: [OccupationOption]
    let onOptionSelected: (OccupationOption) -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            ForEach(Array(options.enumerated()), id: \.element.id) { index, option in
                OccupationRowView(
                    option: option,
                    isLast: index == options.count - 1,
                    onTapped: { onOptionSelected(option) }
                )
            }
        }
    }
}
