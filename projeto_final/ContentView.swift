//
//  ContentView.swift
//  projeto_final
//
//  Created by Found on 05/12/25.
//

import SwiftUI

let materias = ["Grandezas Físicas", "Unidades","Referencial","Movimento e Repouso", "Ponto Material/Corpo Extenso", "MRU", "MRUV", "Força peso"]



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

struct TelaGame: View{
    var body: some View{
        VStack{
            
            Text("Física")
                .italic()
            
            Text(" - Introdução - ")
                .font(.system(size: 14))
                .foregroundStyle(.gray)
            
            
        }
        
        
        ScrollView{
            ZStack {
                LazyVStack(spacing: 30){
                    ForEach(0..<materias.count, id: \.self){ i in
                        HStack {
                            if i % 2 != 0{
                                Spacer()
                            }
                            Text(materias[i])
                                .padding()
                                .frame(width: 200, height: 60)
                                .background(Color.gray.opacity(0.28))
                                .cornerRadius(34)
                            if i % 2 == 0{
                                Spacer()
                            }
                            
                        }
                        .padding(.horizontal)
                        
                    }
                    
                }
            }
        }.padding()
    }
}
    

#Preview {
    ContentView()
    
}

