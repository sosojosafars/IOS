//
//  ContentView.swift
//  TercafeiraAula01
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var idadeHumana: String = ""
    @State private var idadeCao: String = ""
    @State private var resul: Int = 0
    
    func calcular(){
        if let idade = Int(idadeHumana), idade > 0{
            let resul = idade * 7
            idadeCao = "\(resul) anos"
        
        }else{
            idadeCao = "Digite a idade do cão"
        
        }}
        
        var body: some View {
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Calculadora de Idade Canina")
                
                TextField(
                    "Digite a idade humana",
                    text: $idadeHumana
                ).keyboardType(.numberPad)
                .padding()
                
                Button(action:calcular){
                    Text("Calcular")
                }
                
                Text(idadeCao)
                    
            .padding()
            
        }
        
    }
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    }
    

