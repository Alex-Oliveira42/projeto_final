//
//  ContentView.swift
//  projeto_final
//
//  Created by Found on 05/12/25.
//

import SwiftUI

let materias = ["Grandezas Físicas", "Unidades","Referencial","Movimento e Repouso", "Ponto Material/Corpo Extenso", "MRU", "MRUV","Velocidade média", "lançamento oblíquo"]




struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                TabBar()
            }
            
        }.preferredColorScheme(.dark)
    }

}
    
    
struct TabBar: View {
    var body: some View{
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "point.bottomleft.forward.to.arrow.triangle.scurvepath.fill")
                    Text("Home")
                }
            GameView()
                .tabItem{
                    Image(systemName: "gamecontroller")
                    Text("Game")
                
                }
            Achievements()
                .tabItem{
                    Image(systemName: "trophy")
                    Text("Achievements")
                }
            History()
                .tabItem{
                    Image(systemName: "clock.arrow.trianglehead.counterclockwise.rotate.90")
                    Text("History")
                }
        }
        
    }
}

#Preview {
    TabBar()
    
}

