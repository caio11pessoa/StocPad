//
//  ContentView.swift
//  POCExportarCSV
//
//  Created by iredefbmac_01 on 20/06/25.
//

import SwiftUI

struct ContentView: View {
    
    let tripData: [TripData] = [
        TripData(day: "Day 1", product: "AirPods Pro", expense: 550.0),
        TripData(day: "Day 1", product: "iPhone 16", expense: 1350.0),
        TripData(day: "Day 2", product: "iPad Pro 13", expense: 1650.0),
        TripData(day: "Day 2", product: "iPhone 16 Plus", expense: 1950.0),
        TripData(day: "Day 3", product: "Apple Watch Ultra 2", expense: 780.0),
        TripData(day: "Day 3", product: "Mac Pro", expense: 3650.0),
        TripData(day: "Day 4", product: "MacBook Air M3", expense: 1880.0),
        TripData(day: "Day 4", product: "AirPods Max", expense: 599.0),
        TripData(day: "Day 5", product: "iPad Air", expense: 850.0),
        TripData(day: "Day 5", product: "iMac M3", expense: 1599.0),
        TripData(day: "Day 6", product: "Apple Pencil Pro", expense: 129.0),
        TripData(day: "Day 6", product: "Magic Keyboard for iPad Pro", expense: 349.0),
        TripData(day: "Day 7", product: "HomePod 2nd Gen", expense: 299.0),
        TripData(day: "Day 7", product: "Apple TV 4K", expense: 179.0),
        TripData(day: "Day 8", product: "Apple Vision Pro", expense: 3499.0),
        TripData(day: "Day 8", product: "Studio Display", expense: 1599.0),
        TripData(day: "Day 9", product: "Magic Mouse", expense: 99.0),
        TripData(day: "Day 9", product: "Magic Trackpad", expense: 129.0),
        TripData(day: "Day 10", product: "Mac Studio", expense: 1999.0),
        TripData(day: "Day 10", product: "iPhone SE (3rd Gen)", expense: 429.0),
        TripData(day: "Day 11", product: "Apple Watch SE", expense: 279.0),
        TripData(day: "Day 11", product: "Apple Watch Series 9", expense: 399.0),
        TripData(day: "Day 12", product: "iPad Mini", expense: 499.0),
        TripData(day: "Day 12", product: "Beats Fit Pro", expense: 199.0),
        TripData(day: "Day 13", product: "Beats Studio Buds+", expense: 169.0),
        TripData(day: "Day 13", product: "MacBook Pro 14 M3 Pro", expense: 1999.0),
        TripData(day: "Day 14", product: "AirTag (4 Pack)", expense: 99.0),
        TripData(day: "Day 14", product: "Apple Leather Wallet with MagSafe", expense: 59.0),
        TripData(day: "Day 15", product: "iPhone 16 Ultra", expense: 2199.0),
        TripData(day: "Day 15", product: "iPad Pro 11 M4", expense: 1199.0)
    ]

    var body: some View {
        VStack {
            
            ShareLink(item:generateCSV()) {
                Label("Export CSV", systemImage: "list.bullet.rectangle.portrait")
            }
            
        }
        .padding()
    }
    
    
    func generateCSV() -> URL {
        var fileURL: URL!
        // heading of CSV file.
        let heading = "Day, Product, Expense\n"
        
        // file rows
        let rows = tripData.map { "\($0.day),\($0.product),\($0.expense)" }
        
        // rows to string data
        let stringData = heading + rows.joined(separator: "\n")
        
        do {
            
            let path = try FileManager.default.url(for: .documentDirectory,
                                                   in: .allDomainsMask,
                                                   appropriateFor: nil,
                                                   create: false)
            
            fileURL = path.appendingPathComponent("Trip-Data.csv")
            
            // append string data to file
            try stringData.write(to: fileURL, atomically: true , encoding: .utf8)
            print(fileURL!)
            
        } catch {
            print("error generating csv file")
        }
        return fileURL
    }
}

struct TripData{
    var day: String
    var product: String
    var expense: Double
}

#Preview {
    ContentView()
}
