//
//  Search.swift
//  AppleMusic
//
//  Created by Saad Sherif on 5/18/21.
//

import SwiftUI

struct Search: View {
    
    @State var search = ""
    
    var columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
    
    var body: some View {
        
        // Search View
        
        ScrollView {
            
            VStack(spacing: 18){
                HStack{
                    
                    Text("Search")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                    
                    Spacer(minLength: 0)
                }
                
                HStack(spacing: 15){
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.primary)
                    
                    TextField("Search", text: $search)
                }
                .padding(.vertical, 10)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(15)
                
                // Grid View for Songs....
                
                LazyVGrid(columns: columns, spacing: 20){
                    
                    ForEach(1...12, id: \.self){index in
                        
                        Image("p\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            
                            // Two side padding = 30
                            // Spacing = 20
                            
                            .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 180)
                            .cornerRadius(15)
                    }
                }
                .padding(.top, 10)
            }
            .padding()
            
            // Padding miniplayer size as bottom
            .padding(.bottom, 80)
        }
    }
}
