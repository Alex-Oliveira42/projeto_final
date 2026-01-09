//
//  ContentView.swift
//  projeto_final
//
//  Created by Found on 05/12/25.
//

import SwiftUI

struct Conteudo: View {
    var body: some View {
        VStack {
            Text("Fisica")
            ZStack{
                Rectangle()
                    .fill(Color(red: 0.21, green: 0.21, blue: 0.21))
                    .frame(width: 350, height: 600)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                VStack{
                    Text("Força Peso (P)")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("A força peso (P) é um tipo de força que atua na direção vertical sob a atração da gravitação da Terra. Em outras palavras, é a força que existe sobre todos os corpos, sendo exercida sobre eles por meio do campo gravitacional da Terra.")
                        .padding(35)
                        .font(.custom("Arial", size: 20))
                    
                    
                    
                    
                    Text("Força Normal (N)")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Text("A força normal (Fn), também chamada de “força de apoio”, é um tipo de força de contato exercida por um corpo sob uma superfície. Como exemplo, podemos pensar num bloco em repouso numa mesa, onde ambas exercem a força normal uma na outra, perpendicular às superfícies de contato.")
                        .padding(35)
                        .font(.custom("Arial", size: 20))
                }
                
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    Conteudo()
}
