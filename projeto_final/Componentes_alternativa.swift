//
//  Componentes_alternativa.swift
//  projeto_final
//
//  Created by Found on 12/12/25.
//

//
//  Componentes.swift
//  Trilhas_projeto
//
//  Created by Found on 28/11/25.
//

import SwiftUI

struct Componentes: View {
    var texto : String = "50Nn"
    var alternativa: String = "a"
    let escolheralternativa: Bool
    @State var texto_visivel: Color = .clear
//    @State var escolheralternativa = false
    
    var body: some View {
        
            HStack () {
                    Text (alternativa)
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .padding (30)
                        .overlay(Circle().stroke(Color.white))
//                        .onTapGesture {
//                            escolheralternativa.toggle()
//                        }
                    
                    
                    Text(texto)
                        .font(.custom( "Arial", size: 28))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//                        .onTapGesture {escolheralternativa.toggle()}
                    
                
                
                
            }
            .frame(maxWidth:450, maxHeight: 80)
//            .onTapGesture {escolheralternativa.toggle()}
            
            .background(RoundedRectangle(cornerRadius:200)
                        .fill(escolheralternativa ? Color.black
                              : Color(red: 58/255, green: 58/255, blue: 58/255))
            )
            .animation(.easeInOut, value: escolheralternativa)
            
                
                
        }
        
        
        
    }

    #Preview {
        Componentes(escolheralternativa: false)
    }
