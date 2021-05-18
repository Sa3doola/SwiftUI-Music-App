//
//  TabBar.swift
//  AppleMusic
//
//  Created by Saad Sherif on 5/18/21.
//

import SwiftUI

struct TabBar: View {
     // Selected Tab Index...
     // Default is third...
    @State var current = 2
    
    // MiniPlayer Properties....
    
    @State var expand = false
    
    @Namespace var animation
    
    var body: some View {
        
        // Bottom Mini Player
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            TabView(selection: $current){
                
                Text("Library")
                    .tag(0)
                    .tabItem {
                        Image(systemName: "rectangle.stack.fill")
                        
                        Text("Library")
                    }
                
                Text("Radio")
                    .tag(1)
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        
                        Text("Radio")
                    }
                
                Search()
                    .tag(2)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        
                        Text("Search")
                    }
            }
            
            MiniPlayer(animation: animation, expand: $expand)
        })
    }
}
