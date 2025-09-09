//
//  ContentView.swift
//  Estados_Formularios
//
//  Created by COTEMIG on 09/09/25.
//

import SwiftUI

struct ContentView: View {
    @State var texto = "oiee"
    @State var tamanhoTexto = 1.0
    @State var repeticoesTexto = 1
    @State var negrito = false
    @State var data = Date()
    var body: some View {
        VStack {
            Form{
                let textUpper = texto.uppercased()
                
                ForEach(1...repeticoesTexto,id: \.self){ _ in
                    Text(textUpper)
                        .font(.system(size: 50 * tamanhoTexto))
                        .bold(negrito)
                }
                
                TextField(text: $texto){
                    Text("Placeholder")
                }.keyboardType(UIKeyboardType.emailAddress)
                
                Slider(value: $tamanhoTexto){
                    //Text("Tamanho Texto")
                }
                
                Stepper(value: $repeticoesTexto){
                    Text("Repetições: \(repeticoesTexto)")
                }
                
                Toggle(isOn: $negrito){
                    Text("Negrito")
                }
                
                DatePicker(selection: $data){
                    Text("Data de Agendamento")
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
