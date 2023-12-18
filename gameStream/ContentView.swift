//
//  ContentView.swift
//  gameStream
//
//  Created by Edward Mayk on 26/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Spacer()
            
            Color(red: 19/255, green: 30/255, blue: 58/255, opacity: 1.0).ignoresSafeArea()
            VStack{
                Image("AppLogo")
                    .resizable().aspectRatio(contentMode: .fit).frame(width: 250)
                    .padding(.bottom , 42)
                InicioYRegistroView()

            }
        }
    }
}

struct InicioYRegistroView:View {
    
    @State var tipoInicioSesion = true
    
    var body: some View{
        
        VStack{
            HStack{
                
                Spacer()
                
                Button("INICIAR SESION"){
                    tipoInicioSesion = true
                    print("pantalla inicio sesion")
                }
                .foregroundColor(tipoInicioSesion ? .white : .gray)
                
                Spacer()
                
                Button("REGISTRATE"){
                    
                    tipoInicioSesion = false
                    print("pantalla inicio sesion")
                }
                .foregroundColor(tipoInicioSesion ? .gray : .white)
                
                Spacer()

            }
            
            Spacer(minLength: 42)
            
            if tipoInicioSesion == true {
                    InicioSesionView()
                
            }else{
                
                RegistroView()
                
            }
        }
    }
}

struct InicioSesionView: View {
    
    @State var correo = ""
    @State var contrasena = ""
    
    var body: some View {
        
        ScrollView{
            VStack(alignment:.leading){
                
                Text("Correo Electronico")
                    .foregroundColor(Color("Dark-Cian"))
                
                ZStack (alignment: .leading){
                    if correo.isEmpty{
                        Text("ejemplo@gmail.com")
                            .font(.caption).foregroundColor(.gray)
                        
                        TextField("", text: $correo)
                    }
                    
                }
                
                Divider().frame( height: 1).background(Color("Dark-Cian")).padding(.bottom)
                
              
            }.padding(.horizontal, 77.0)
            VStack(alignment:.leading){
                
                Text("Contraseña")
                    .foregroundColor(.white)
                
                ZStack (alignment: .leading){
                    if contrasena.isEmpty{
                        Text("")
                            .font(.caption).foregroundColor(.white)
                        
                        SecureField("******", text: $contrasena)
                    }
                    
                }
                
                Divider().frame( height: 1).background(Color("Dark-Cian")).padding(.bottom)
                
              
            }.padding(.horizontal, 77.0)
            
            
        }
    }
}

struct RegistroView: View {
    var body: some View {
        
        Text("soy la vista de registro")
    }
}

#Preview {
    ContentView()
}
