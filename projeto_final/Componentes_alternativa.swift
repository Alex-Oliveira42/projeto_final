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
    @State var texto_visivel: Color = .clear
    @State var certo_errado = false
    @State var escolheralternativa = false
    
    var body: some View {
        
            HStack () {
                Button (action: { texto_visivel = .black
                    
                }) {
                    Text (alternativa)
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .padding (40)
                        .overlay(Circle().stroke(Color.white))
                        .onTapGesture {
                            escolheralternativa.toggle()
                        }
                    
                    
                    Text(texto)
                        .font(.custom( "Arial", size: 28))
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        .onTapGesture {escolheralternativa.toggle()
                        }
                    
                }
                
                
            }
            .frame(maxWidth:400, maxHeight: 80)
            .onTapGesture {escolheralternativa.toggle()}
            .background(RoundedRectangle(cornerRadius:200)
                        .fill(escolheralternativa ? Color.white: Color.black)
            )
            .animation(.easeInOut, value: escolheralternativa)
            
                
                
        }
        
        
        
    }

    #Preview {
        Componentes()
    }
