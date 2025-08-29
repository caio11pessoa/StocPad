//
//  OccupationView.swift
//  StocPad
//
//  Created by iredefbmac_44 on 25/08/25.
//

import Foundation
import SwiftUI

struct OccupationView: View {
    
    @StateObject private var viewModel = OccupationViewModel()
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(spacing: 0) {
            TopNavigationBarView(
                onBackTapped: {
                    viewModel.goBack()
                    presentationMode.wrappedValue.dismiss()
                },
                onCloseTapped: {
                    viewModel.closeScreen()
                    presentationMode.wrappedValue.dismiss()
                }
            )
            
            VStack(alignment: .leading, spacing: 32) {
                TitleSectionView()
                
                OccupationListView(
                    options: viewModel.occupationOptions,
                    onOptionSelected: viewModel.selectOccupation
                )
                
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.top, 32)
        }
        .background(Color.white)
        .navigationBarHidden(true)
    }
}
