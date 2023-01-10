//
//  startView.swift
//  quiz
//
//  Created by Onur Şimşek on 7.01.2023.
//

import SwiftUI

struct startView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Start Quiz")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                    .frame(height: UIScreen.main.bounds.height * 0.20)
                   
            }
           
           ZStack{
               Rectangle()
                            .fill(Color(red: 0.086, green: 0.125, blue: 0.137))
                            .frame(height: UIScreen.main.bounds.height * 0.75)
                            .cornerRadius(30)
                            .overlay(
                                
                                VStack {
                                    Text("Put your understanding of this concept to test by answering a few MCQs.")
                                        .padding(30)
                                        .foregroundColor(Color.white)
                                    ScrollView{
                                        VStack {
                                            Rectangle()
                                                .fill(Color.orange)
                                                .frame(height: UIScreen.main.bounds.height * 0.30)
                                                .offset(y: 1.2 * 100)
                                                .border(Color.orange)
                                                .cornerRadius(20)
                                                .padding(.horizontal, 10)
                                                .overlay(
                                                    VStack(alignment: .leading , spacing: 8) {
                                                                    Image(systemName: "car")
                                                                        .resizable()
                                                                        .aspectRatio(contentMode: .fit)
                                                                        .padding(10)
                                                        
                                                                    Text("Subject: Deneme Deneme")
                                                                        
                                                                        
                                                                    
                                                                    Text("Chapter: Text text")
                                                                        
                                                                        .padding(.bottom)
                                                                }
                                                        .foregroundColor(Color.white)
                                            )
                                                .background(Color.orange)
                                            VStack(alignment: .leading, spacing: 10){
                                                Text("Total Questions:05")
                                                
                                                Text("Total Time:15 min")
                                               
                                                Text("Instructions : The quizzes consists of questions carefully designed to help you self-assess your comprehension of the information presented on the topics covered in the module. After responding to a question, click on the \"Next Question\" button at the bottom to go to the next questino. After responding to the 8th question, click on \"Close\" on the top of the window to exit the quiz. If you select an incorrect response for a question, you can try again until you get the correct response. If you retake the quiz, the questions and their respective responses will be randomized.")
                                                    

                                            }
                                            .foregroundColor(Color.white)
                                            .padding(25)
                                        }
                                           
                                        
                                    }
                                }
                                
                            )
                    }
                    
            .frame(height: UIScreen.main.bounds.height * 0.65)
            
            VStack {
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 490, height: 86)
                    .cornerRadius(40)
                    .overlay(
                        
                        VStack() {
                           
                            HStack(spacing: 60) {
                                Button(action: {
                                    // button action here
                                }) {
                                    Image(systemName: "timer")
                                        .foregroundColor(Color.white)
                                    Text("15:00")
                                        .foregroundColor(.white)
                                }
                                
                                .frame(width: 120, height: 40)
                                .background(Color.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                                Button(action: {
                                    // button action here
                                }) {
                                    Text("Button")
                                        .foregroundColor(.white)
                                }
                                
                                .frame(width: 120, height: 40)
                                .background(Color.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            }
                        }
                    )
                    .edgesIgnoringSafeArea(.all)

                
            }
            .padding(10)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottom)
            .frame(height: UIScreen.main.bounds.height * 0.15)
            
        }
        
        .edgesIgnoringSafeArea(.all)
        .background(Color(red: 0.153, green: 0.188, blue: 0.196))
        
    }
            
}

struct startView_Previews: PreviewProvider {
    static var previews: some View {
        startView()
    }
}
