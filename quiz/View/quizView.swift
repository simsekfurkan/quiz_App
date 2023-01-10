//
//  quizView.swift
//  quiz
//
//  Created by Onur Şimşek on 9.01.2023.
//

import SwiftUI

struct quizView: View {
    @State private var progress: CGFloat = 0.0

    var body: some View {
        VStack{
            VStack{
                HStack{
                            Button(action: {
                                // Geri dönüş aksiyonu burada
                            }) {
                                Image(systemName: "arrow.backward.square.fill")
                                    .resizable()
                                    .frame(width: 30, height: 30)
                                    .foregroundColor(Color.orange)
                                    
                                    
                            }
                            .padding()

                            Text("Quiz")
                        .foregroundColor(Color.white)
                        .font(.title)
                    
                        Spacer()

                            Button(action: {
                                // Submit aksiyonu burada
                            }) {
                                Text("Submit")
                                    .font(.title)
                                    .padding(8)
                                    .border(Color.orange, width: 2)
                                    .cornerRadius(15)
                                    .foregroundColor(Color.white)
                                    
                                    

                            }
                            .padding()
                        }
                
                    }
            .padding(.top, 80.0)
            .frame(height: UIScreen.main.bounds.height * 0.10)
            .padding()
            VStack{
                HStack {
                    VStack {
                        Text("Pair of Linear Equation in Two Variables")
                            .foregroundColor(Color.white)
                            .fixedSize(horizontal: false, vertical: true)
                            .font(Font.title)
                            .padding()
                        
                        VStack {
                            HStack {
                                Text("Maths / Real Numbers")
                                    .padding(.leading)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(Color.gray)
                                  Spacer(minLength: 10)
                                    
                                Image(systemName: "timer")
                                    .foregroundColor(Color.white)
                                Text("15:00")
                                    .padding(.trailing)
                                    .foregroundColor(.white)
                            }
                        }
   
                        ZStack(alignment: .leading) {
                            
                            Rectangle()
                                .frame(height: 10)
                                .opacity(0.3)
                            Rectangle()
                                .frame(width: self.progress, height: 10)
                                .foregroundColor(.orange)
                        }
                        .frame(width: 300)
                        
                       
                    }
                }
                .frame(height: UIScreen.main.bounds.height * 0.2)

                
                .onAppear(perform: {
                    self.progress = 0.0
                })
            }
                
                VStack{
                    ScrollView {
                                VStack(spacing: 20) {
                                    Text("Soru soru soru soru soru soru soru soru soru?")
                                        .font(.title)
                                        .padding()
                                        .foregroundColor(Color.white)
                                    
                                    Button(action: {
                                        // Birinci şık aksiyonu burada
                                    }) {
                                        Text("A-Şık 1")
                                            .multilineTextAlignment(.leading)
                                            .padding()
                                            .background(Color(red: 0.153, green: 0.188, blue: 0.196))
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                            .frame(maxWidth: .infinity)
                                    }
                                    
                                    Button(action: {
                                        // İkinci şık aksiyonu burada
                                    }) {
                                        Text("B-Şık 2")
                                            .multilineTextAlignment(.leading)
                                        
                                            .padding()
                                            .background(Color(red: 0.153, green: 0.188, blue: 0.196))
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                            .frame(maxWidth: .infinity)
                                        
                                            
                                    }
                                    Button(action: {
                                        // Üçüncü şık aksiyonu burada
                                    }) {
                                        Text("C-Şık 3")
                                            .multilineTextAlignment(.leading)
                                            .padding()
                                            .background(Color(red: 0.153, green: 0.188, blue: 0.196))
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                            .frame(maxWidth: .infinity)
                                            
                                    }
                                    
                                    Button(action: {
                                        // Dördüncü şık aksiyonu burada
                                    }) {
                                        Text("D-Şık 4")
                                            .multilineTextAlignment(.leading)
                                            .padding()
                                            .background(Color(red: 0.153, green: 0.188, blue: 0.196))
                                            .foregroundColor(.white)
                                            .cornerRadius(10)
                                            .frame(maxWidth: .infinity)
                                    }
                                    Spacer()
                                    HStack {
                                        Button(action: {
                                            self.progress -= 10
                                        }) {
                                            Text("Previus ")
                                                .padding()
                                                .background(Color(red: 0.153, green: 0.188, blue: 0.196))
                                                .foregroundColor(.white)
                                                .cornerRadius(10)
                                                .padding()
                                        }
                                        Spacer()
                                        Button(action: {
                                            self.progress += 10
                                        }) {
                                            Text("Next ")
                                                .padding()
                                                .background(Color.orange)
                                                .foregroundColor(.white)
                                                .cornerRadius(10)
                                                .padding()
                                        }
                                    }
                                }
                    }
                }
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
                .frame(height: UIScreen.main.bounds.height * 0.7)
                .edgesIgnoringSafeArea(.all)
                .background(Color(red: 0.086, green: 0.125, blue: 0.137))
                .cornerRadius(40)
                
            }
            
        .background(Color(red: 0.153, green: 0.188, blue: 0.196))
            }
      
        
        }
    
    


struct quizView_Previews: PreviewProvider {
    static var previews: some View {
        quizView()
    }
}
