import SwiftUI

struct Conteudo: View {
    @State var progresso: Double = 0
    var body: some View {
        VStack {
            Text("Física - Peso e Normal")
                .font(.title2)
                .fontWeight(.bold)
            
            
            
            VStack(spacing: 20) {
                ProgressView(value: progresso)
                    .padding()
                    .tint(.white)
                
            }
            
            
            
            ZStack{
                Rectangle()
                    .fill(Color(red: 0.21, green: 0.21, blue: 0.21))
                    .frame(width: 350, height: 600)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    
                ZStack(alignment: .leading){
                    VStack{
                        Text("Força Peso (P)")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.trailing, 150)
                        
                        Text("A força peso (P) é um tipo de força que atua na direção vertical sob a atração da gravitação da Terra. Em outras palavras, é a força que existe sobre todos os corpos, sendo exercida sobre eles por meio do campo gravitacional da Terra.")
                            .padding(30)
                            .font(.custom("Arial", size: 20))
                        
                        
                        
                        
                        Text("Força Normal (N)")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.trailing, 140)
                        
                        Text("A força normal (Fn), também chamada de “força de apoio”, é um tipo de força de contato exercida por um corpo sob uma superfície. Como exemplo, podemos pensar num bloco em repouso numa mesa, onde ambas exercem a força normal uma na outra, perpendicular às superfícies de contato.")
                            .padding(35)
                            .font(.custom("Arial", size: 20))
                    }

                }
            }
            
            HStack(spacing: 15){
                Spacer()
            
                exp()
                
                ZStack{
                    Button("Avançar"){
                        progresso += 0.25
                    }
                        .foregroundColor(.white)
                        .padding(10)
                        .background(
                            Rectangle()
                                .fill(Color(red: 0.21, green: 0.21, blue: 0.21))
                                .cornerRadius(50)
                        )
                }
                
                
            }
            .padding(.trailing, 25)
            
        }
        .preferredColorScheme(.dark)
    }
        
}






// EXP
struct exp: View {
    var body: some View {
        ZStack{
            Text("+50xp")
                .foregroundColor(.black)
                .padding(5)
                .background(
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(50)
                )
        }
    }
}

struct exp2: View {
    var body: some View {
        ZStack{
            Text("+150xp")
                .foregroundColor(.black)
                .padding(5)
                .background(
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(50)
                )
        }
    }
}



#Preview{

    Conteudo()
    
}
