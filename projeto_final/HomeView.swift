//
//  ContentView.swift
//  ATIVIDADE.2
//
//  Created by user on 02/12/25.
//

import SwiftUI
import Charts

struct HomeView: View {
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
                        Text(Date().formatted(.dateTime.day().month(.wide).locale(Locale(identifier: "pt_BR"))))
                            .padding(.horizontal)
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
                                .frame(width: 40, height: 40)
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
                createTitle(title: "        Continue  3")
                InitialButtons(image: "car", texto: "Física - Básica")
                createTitle(title: "        Outros", showFlame: false)
                InitialButtons(image: "atom", texto: "Quimica - Básica")
                InitialButtons(image: "plus", texto: "Matemática")
            
                DashboardSection()
                
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
                    .frame(width: 0, height: 40)
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
                    .frame(width: 350, height: 50)
                    .background(Color(red: 58/255, green: 58/255, blue: 58/255))
                    
                    .cornerRadius(50)
                }
            }
        }
    }

struct DashboardSection: View {
    var body: some View {
        HStack(spacing: 16) {
            GraficoFrequencia()
        }
        .padding()
    }
}

struct FrequenciaDia: Identifiable {
    let id = UUID()
    let dia: String
    var acessos: Int
}


struct GraficoFrequencia: View {
    

        @State private var frequencia: [FrequenciaDia] = [
            FrequenciaDia(dia: "Seg", acessos: 0),
            FrequenciaDia(dia: "Ter", acessos: 0),
            FrequenciaDia(dia: "Qua", acessos: 0),
            FrequenciaDia(dia: "Qui", acessos: 0),
            FrequenciaDia(dia: "Sex", acessos: 0),
            FrequenciaDia(dia: "Sáb", acessos: 0),
            FrequenciaDia(dia: "Dom", acessos: 0)
        ]

        var body: some View {
            
                Chart(frequencia) { item in
                    BarMark(
                        x: .value("Dia", item.dia),
                        y: .value("Acessos", item.acessos)
                    )
                    .cornerRadius(6)
                    .foregroundStyle(.green)
                }
            .chartYAxis(.hidden)
            .frame(height: 160)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 24)
                    .fill(.ultraThinMaterial)
            )
            .onAppear {
                registrarAcesso()
            }
        }

        private func registrarAcesso() {
            let formatter = DateFormatter()
            formatter.locale = Locale(identifier: "pt_BR")
            formatter.dateFormat = "EEE"

            let hoje = formatter.string(from: Date()).capitalized

            if let index = frequencia.firstIndex(where: { $0.dia.hasPrefix(hoje) }) {
                frequencia[index].acessos += 1
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
    
    
    #Preview("Home") {
        
        ContentView()
        
        
    }
    //
    //  home.swift
    //  projeto_final
    //
    //  Created by user on 19/12/25.
    //
