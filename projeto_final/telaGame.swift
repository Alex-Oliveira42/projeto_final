//
//  ContentView.swift
//  projeto_final
//
//  Created by Found on 05/12/25.
//

import SwiftUI

struct ContentView1: View {
    var body: some View {
        NavigationStack{
            ZStack{
                TabBar()
            }
            
        }.preferredColorScheme(.dark)
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
    TelaGame()
    
}

