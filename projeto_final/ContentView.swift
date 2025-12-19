//
//  ContentView.swift
//  ATIVIDADE.2
//
//  Created by user on 02/12/25.
//

import SwiftUI

struct ContentView: View {
    @State var perfil: Bool = false // O estado(@State) permite as alterações de tela dentro da view
    @State var notif: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("Trilhas do curió")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text("data")
                            .font(.caption)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                        
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                    Spacer(minLength: 1)
                    
                    HStack {
                        
                        
                        Button {
                            notif = true //lógica da variável
                        } label: {
                            Image(systemName: "bell")
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.trailing, 8)
                                .foregroundColor(.white)
                        }
                        .tint(.black)
                        .navigationDestination(isPresented: $notif) {
                            Notifications()
                        }
                        
                        Button {
                            perfil = true //lógica da variável
                        } label: {
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .foregroundColor(.white)
                        }
                        .tint(.black)
                        .navigationDestination(isPresented: $perfil) {
                            Tela_Perfil()
                        }
                    }
                    
                    
                }
                .padding(.horizontal)
                .padding(.top, 10)
            }
            Spacer()
            
            VStack {
                createTitle(title: "Continue...3")
                InitialButtons(image: "car", texto: "Física")
                createTitle(title: "Outros...3", showFlame: false)
                InitialButtons(image: "atom", texto: "Quimica - Básica")
                InitialButtons(image: "plus", texto: "Matemática")
            
                
                Spacer()
                
                }.preferredColorScheme(.dark)
            }
        }
    }
    func createTitle(title: String, showFlame: Bool = true) -> some View {
        HStack {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
            if (showFlame) {
                Image(systemName:"flame")
                    .frame(width: 40, height: 40)
            }
            Spacer()
                .padding(.horizontal)
                .padding(.top, 10)
        }
    }


    
    
    
    struct InitialButtons: View {
        let image: String
        let texto: String
        @State var text: Bool = false
        
        var body: some View {
            NavigationStack {
                HStack {
                    
                    Button {
                        text = true //lógica da variável
                    } label: {
                        Text(texto)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Image(systemName: image)
                            .font(.title2)
                            .fontWeight(.bold)
                            .imageScale(.large)
                            .foregroundStyle(.white)
                    }
                    .navigationDestination(isPresented: $text) {
                        Fisga()
                        
                    }
                    
                    .padding()
                    .frame(width: 250, height: 50)
                    .background(Color.gray)
                    .cornerRadius(50)
                }
            }
        }
    }


    
    
    struct Tela_Perfil: View{
        var body: some View{
            Text("Perfil")
        }
    }
    
    struct Notifications: View{
        var body: some View{
            Text("notificaçãokkkkkkkkkkkkkkkk")
        }
    }
    
    struct Fisga: View{
        var body: some View{
            Text("fisga")
        }
    }
    
    
    #Preview("ContentView") {
        
        ContentView()
        
        
    }
