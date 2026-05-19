import SwiftUI


struct NumView: View{
    @State var colours: [Color] = [.pink, .red, .orange, .yellow, .green, .blue, .purple,]
    
    @State var numero = 0.0
    
    var body: some View{
        
        VStack(spacing: 60){
            Rectangle()
                .frame(width: numero, height: numero )
                .cornerRadius(20)
                .foregroundStyle(colours[Int(numero) % colours.count])
                
            VStack(spacing: 40){
                Text(numero, format: .number)
                    .font(.largeTitle)
                    .foregroundStyle(.red)
                    .fontWeight(.bold)
                
                HStack{
                    Button("Increment"){
                        numero += 1
                    }
                    
                    .buttonRepeatBehavior(.enabled)
                    .padding()
                    .background(.red)
                    .foregroundStyle(.white)
                    .cornerRadius(15)
                    
                    Button("Decrease"){
                        if (numero <= 0){
                        } else{
                            numero -= 1
                        }
                    }
                    
                    .padding()
                    .background(.red)
                    .foregroundStyle(.white)
                    .cornerRadius(15)
                    
                }
            }
        }
    }
}

#Preview {
    NumView()
}
