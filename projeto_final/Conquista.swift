//
//  ContentView.swift
//  projeto_final
//
//  Created by Found on 05/12/25.
//

import SwiftUI


var sequencia: String = "sem sequência"
var att_diaria: String = "Atividades diarias completas"
var att_tempo: String = "00:00"
//let xp = Int.random(in: 1...100)
let listaConquistas = [
    Conquista(nome: "Iniciante", descricao: "Realize o primeiro módulo de física.", xp: 50),
    Conquista(nome: "Aprendiz", descricao: "Complete 5 exercícios sem errar.", xp: 100),
    Conquista(nome: "Goat", descricao: "Estude por 5 horas seguidas.", xp: 1000),
    Conquista(nome: "Instituto Trivial", descricao: "Complete todos os modulos", xp: 5000),
    Conquista(nome: "izaque Newto", descricao: "Complete todos os modulos de Física", xp: 2500),
    Conquista(nome: "Nonatation", descricao: "Complete todos os modulos de matemátia", xp: 2500),
    Conquista(nome: "Alter Branco", descricao: "Complete todos os modulos de Química", xp: 2500)
]
var level : Int = 1
var XP : Int = 0

struct TelaAchievements: View {
    var body: some View {
        VStack(spacing: 20) {
            // HEADER: Foto e Nome
            HStack(spacing: 15) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 60, height: 60)
                    .padding(.leading, 20)
                VStack(alignment: .leading){
                     Text("User")
                         .font(.title3)
                         .fontWeight(.thin)
                    
                    ZStack{
                        Capsule()
                            .fill(Color.white.opacity(0.1))
                            .frame(width: 200 ,height: 6)
                    }
                    
                    Text("Você possui \(XP) xp, level: \(level)")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                }
                
                
                
                Spacer()
            }
            .padding(.horizontal)

            // STATUS: Atividades Diárias
            Text(att_diaria)
                .font(.system(size: 15))
                .fontWeight(.thin)
                .foregroundColor(.white)
                .frame(width: 320, height: 45)
                .background(Color(red: 58/255, green: 58/255, blue: 58/255))
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white.opacity(0.3)))

            // STATUS: Tempo e Sequência
            HStack(spacing: 12) {
                Text("Tempo Gasto: \(att_tempo)")
                    .frame(width: 175, height: 41)
                    .background(Color(red: 58/255, green: 58/255, blue: 58/255))
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white.opacity(0.3)))

                Text(sequencia)
                    .frame(width: 133, height: 41)
                    .background(Color(red: 58/255, green: 58/255, blue: 58/255))
                    .cornerRadius(10)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white.opacity(0.3)))
            }
            .font(.system(size: 14))
            .fontWeight(.thin)

            // LISTA DE CONQUISTAS
            VStack(alignment: .leading, spacing: 10) {
                Text("Conquistas")
                    .fontWeight(.thin)
                    .font(.system(size: 15))
                    .padding(.leading)

                ScrollView {
                    LazyVStack(spacing: 15) {
                        ForEach(listaConquistas) { conquista in
                            
                            // O CARD DE CONQUISTA
                            HStack(spacing: 15) {
                                Image(systemName: "seal.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 45, height: 45)
                                    .foregroundColor(.white.opacity(0.5))
                                
                                VStack(alignment: .leading, spacing: 4) {
                                    HStack {
                                        Text(conquista.nome)
                                            .font(.system(size: 15))
                                            .fontWeight(.regular)
                                        Spacer()
                                            .padding()
                                        // Tag XP
                                        Text("+\(conquista.xp)xp")
                                            .font(.system(size: 10, weight: .bold))
                                            .padding(.horizontal, 8)
                                            .padding(.vertical, 4)
                                            .background(Color.white)
                                            .foregroundColor(.black)
                                            .cornerRadius(20)
                                    }
                                    
                                    Text(conquista.descricao)
                                        .font(.system(size: 11))
                                        .foregroundColor(.gray)

                                    HStack {
                                        ZStack(alignment: .leading) {
                                            Capsule().fill(Color.white.opacity(0.1)).frame(height: 6)
                                        }
                                        Text("0/1").font(.system(size: 11)).fontWeight(.thin)
                                    }
                                }
                            }
                            .padding()
                            .frame(width: 340, height: 100)
                            .background(Color(red: 45/255, green: 45/255, blue: 45/255))
                            .cornerRadius(12)
                            .overlay(RoundedRectangle(cornerRadius: 12).stroke(Color.white.opacity(0.2)))
                        }
                    }
                    .padding(.bottom)
                }
            }
            Spacer()
        }
        .padding(.top)
    }
}

#Preview {
    TelaAchievements()
    
}

