//
//  ContentView.swift
//  ListofPeople
//
//  Created by Jorge Contreras on 8/1/25.
//

import SwiftUI


struct ContentView: View {
    //MARK: - Data Model
    struct Department: Identifiable {
        let name: String
        let id = UUID()
    }

    //MARK: - Department Data
    private var department = [
        Department(name: "Production"),
        Department(name: "Shipping"),
        Department(name: "Load - in"),
        Department(name: "Seed"),
        Department(name: "Cold Storage"),
        Department(name: "Washline"),
        Department(name: "Maintenance"),
        Department(name: "Washline"),
        Department(name: "Engineering"),
        Department(name: "Sanitation"),
        Department(name: "Quality Control"),
        Department(name: "Safety"),        
    ]

    // MARK: - View
    var body: some View {
        NavigationStack {
            List(department, id: \.id) { department in
                Text(department.name).font(.headline)
            }
            .navigationBarTitle("Departments for TS").listStyle(.grouped)
        }
    }
}

#Preview {
    ContentView()
}
