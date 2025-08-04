//
//  ContentView.swift
//  ListofPeople
//
//  Created by Jorge Contreras on 8/1/25.
//

import SwiftUI


struct ContentView: View {
    struct Department: Identifiable {
        let name: String
        let id = UUID()
    }


    private var department = [
        //our departments
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


    var body: some View {
        List(department) {
            Text($0.name)
        }
    }
        
  
}

#Preview {
    ContentView()
}
