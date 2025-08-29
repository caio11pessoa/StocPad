//
//  OccupationViewModel.swift
//  StocPad
//
//  Created by iredefbmac_44 on 25/08/25.
//

import Foundation

class OccupationViewModel: ObservableObject {
    
    @Published var occupationOptions: [OccupationOption] = []
    @Published var selectedOccupation: OccupationOption?
    @Published var isLoading = false
    
    init() {
        loadOccupationOptions()
    }
    
    func selectOccupation(_ occupation: OccupationOption) {
        selectedOccupation = occupation
        handleOccupationSelection(occupation)
    }
    
    func goBack() {
        print("Going back...")
    }
    
    func closeScreen() {
        print("Closing screen...")
    }
    
    // MARK: - Private Methods
    private func loadOccupationOptions() {
        occupationOptions = [
            OccupationOption(title: "Employed"),
            OccupationOption(title: "I'm not employed"),
            OccupationOption(title: "I'm studying"),
            OccupationOption(title: "Self-employed"),
            OccupationOption(title: "Retired")
        ]
    }
    
    private func handleOccupationSelection(_ occupation: OccupationOption) {
        print("Selected occupation: \(occupation.title)")
        
       
    }
}
