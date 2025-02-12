//
//  ContentView.swift
//  StepperExample
//
 
import SwiftUI
 
struct ContentView: View {
    
    // MARK: Stored properties
    @State var base: Int = 1
    
    // MARK: Computed properties
    var squared: Int {
        return base * base
    }
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack(alignment: .top) {
 
                Text("(\(base))")
                    .font(.system(size: 75))
 
                Text("2")
                    .font(.system(size: 40))
 
                Text("=")
                    .font(.system(size: 75))
 
                Text("\(squared)")
                    .font(.system(size: 75))
            }
            Stepper(value: $base, label: {
                Text("Base")
            })
            
            Spacer()
        }
        .padding()
    }
}
 
#Preview {
    ContentView()
}
 
