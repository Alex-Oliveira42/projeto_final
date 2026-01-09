//
//  ContentView.swift
//  projeto_final
//
//  Created by Found on 05/12/25.
//

import SwiftUI


struct Tela_perguntas: View {
    @State var componenteSelecionado : String = ""
    var pergunta: String = "1. Qual o peso de um corpo de massa 30 kg na superfície de Marte, onde a gravidade é igual a 3,724m/s2?"

    var body: some View {

        
        VStack {
            
            
            
            Text(pergunta)
                .font(.title)
                .frame(width: 400, height: 300)
                .overlay(RoundedRectangle(cornerRadius: 50)
                    .stroke(Color.white, lineWidth: 1))
                .foregroundStyle(.white)
            
            Componentes(texto: "150N", alternativa: "A", escolheralternativa: componenteSelecionado == "A")
                .onTapGesture {
                    componenteSelecionado = "A"
                }
            Componentes(texto: "121,18N", alternativa: "B", escolheralternativa: componenteSelecionado == "B")
                .onTapGesture {
                    componenteSelecionado = "B"
                }
            Componentes(texto: "117,30N", alternativa: "C", escolheralternativa: componenteSelecionado == "C")
                .onTapGesture {
                    componenteSelecionado = "C"
                }
            Componentes(texto: "111,72N", alternativa: "D", escolheralternativa: componenteSelecionado == "D" )
                .onTapGesture {
                    componenteSelecionado = "D"
                }
            

        }
        
        .padding()
        .preferredColorScheme(.dark)
        
    }
 
        }
    


#Preview {
    Tela_perguntas()
}
