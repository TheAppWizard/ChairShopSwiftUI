//
//  ContentView.swift
//  ChairShopSwiftUI
//
//  Created by Shreyas Vilaschandra Bhike on 04/03/23.

//  MARK: Instagram
//  TheAppWizard
//  MARK: theappwizard2408

//  MARK: Assets Figma
//  Fancy Chairs

import SwiftUI

struct ContentView: View {
    var body: some View {
       ShopUI()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}










struct ShopUI: View {
    var body: some View {
        ZStack{
            Color.white.edgesIgnoringSafeArea(.all)
            VStack{
                Header()
                Spacer()
                WatchBody()
                    .offset(x: 0, y: 20)
                Spacer()
                ShopOptions()
            }
            
            
        }
    }
}


   

struct Header: View {
    @State private var profile = false
    var body: some View {
        HStack{
            
            ZStack{
                HStack{
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 30, height: 28)
                        .foregroundColor(.black)
                    Text("Shreyas Bhike")
                        .foregroundColor(.white)
                }
                .gesture(
                    TapGesture()
                        .onEnded({
                            profile.toggle()
                        })
                
                )
                
                if profile {
                    HStack{
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 30, height: 28)
                            .foregroundColor(.black)
                        Text("Shreyas Bhike")
                        
                        
                    
                    }
                }
                
            }
            
           
            
            Spacer()
            
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundColor(.black)
            
            Spacer()
                .frame(width: 30, height: 0)
               
            
            Image(systemName: "envelope")
                .resizable()
                .frame(width: 30, height: 23)
                .foregroundColor(.black)
        }.padding(15)
    }
}


struct WatchBody: View {
    @State private var orChair = false
    @State private var orChairAnim = false
    @State private var blChair = false
    @State private var blChairAnim = false
    @State private var ylChair = false
    @State private var ylChairAnim = false
    
    var body: some View {
       
        HStack
        {
             
            ZStack{
                Ellipse()
                    .frame(width: 300 ,height: 50)
                    .offset(y:160)
                    .blur(radius: 20)
                    .opacity(0.5)
                    
              
                Image("blchair")
                    .resizable()
                    .frame(width: 340, height: 400)
                
                if orChair{
                    ZStack{
//                        Circle()
//                            .foregroundColor(Color("or"))
//                             .offset(x:-20,y:-20)
                        Image("orchair")
                            .resizable()
                            .frame(width: 340, height: 400)
                      }
                        .opacity(orChairAnim ? 1 : 0)
                        .animation(Animation.easeInOut(duration: 1).repeatCount(1))
                                       .onAppear()
                                   {
                                     orChairAnim.toggle()
                                   }
                     
               }
                
                if blChair{
                    ZStack{
//                        Circle()
//                            .foregroundColor(Color("bl"))
//                             .offset(x:-20,y:-20)
                        Image("blchair")
                            .resizable()
                            .frame(width: 340, height: 400)
                      }
                        .opacity(blChairAnim ? 1 : 0)
                        .animation(Animation.easeInOut(duration: 1).repeatCount(1))
                                       .onAppear()
                                   {
                                       blChairAnim.toggle()
                                   }
               }
                
                if ylChair{
                    ZStack{
//                        Circle()
//                            .foregroundColor(Color("yl"))
//                             .offset(x:-20,y:-20)
                        Image("ylchair")
                            .resizable()
                            .frame(width: 340, height: 400)
                      }
                        
                        .opacity(ylChairAnim ? 1 : 0)
                        .animation(Animation.easeInOut(duration: 1).repeatCount(1))
                                       .onAppear()
                                   {
                                       ylChairAnim.toggle()
                                   }
               }
                
                
            }
            
            
            VStack{
                
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("or"))
                    .gesture(
                        TapGesture()
                            .onEnded({
                                orChair.toggle()
                            })
                    
                    )
                
                
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("bl"))
                    .gesture(
                        TapGesture()
                            .onEnded({
                                blChair.toggle()
                            })
                    
                    )
                
                
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 25, height: 25)
                    .foregroundColor(Color("yl"))
                    .gesture(
                        TapGesture()
                            .onEnded({
                                ylChair.toggle()
                            })
                    
                    )
                
           
            
            }.offset(x: -20, y: 0)
            
            
           
            
        }
    }
}


struct ShopOptions: View {
    
    
    @State private var heartTap = false

    
    let para = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tincidunt et metus mattis auctor."
  
    var body: some View {
        ZStack{
            
            
          
            
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 430, height: 350)
                .offset(x: 0, y: 55)
                .foregroundColor(.black)
            
            
            VStack{
                
                HStack{
                Text("Fancy Chair")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .offset(x: 0, y: 90)
                    
                    
                    Spacer()
                    
                    ZStack{
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 30, height: 28)
                        .foregroundColor(.white)
                        .gesture(
                            TapGesture()
                                .onEnded({
                                    heartTap.toggle()
                                })
                        
                        )
                        
                        if heartTap {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .frame(width: 30, height: 28)
                                .foregroundColor(.red)
                        }
                        
                    }
                        .offset(x: 0, y: 90)
                
                
                
                }.padding(21)
               
                Spacer().frame(height: 60)
                Text(para)
                    .font(.title3)
                    .fontWeight(.thin)
                    .foregroundColor(.white.opacity(0.5))
                    .padding()
                    .offset(x: 0, y: 25)
                
                Spacer()
               ZStack{
                    ButtonV()
                    KartView()
                       .offset(x: -80, y: -40)
                }
                    .offset(x: 20, y: 50)
            }.padding()
        }
    }
}


struct ButtonV: View {
    
    @State private var arrowAnim = false
    
    var body: some View {
        ZStack{
           

                
            HStack{
            Text("350 $")
                .font(.system(size: 30))
                .fontWeight(.thin)
                .foregroundColor(.white)
                
                
                
             Image(systemName: "chevron.right")
                    .resizable()
                    .frame(width: 15, height: 25)
                    .foregroundColor(.white)
                    .opacity(arrowAnim ? 0 : 1)
                    .animation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses: true))
                                   .onAppear()
                               {
                                   arrowAnim.toggle()
                               }
                
                   
                
            }
               
                
        }.offset(x: 105, y: -40)
    }
}


struct KartView: View {
    @State private var cartCount = 0
    
    var body: some View {
        HStack {
            
            Button(action: {
                cartCount -= 1
            }) {
                Text("-")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.white.opacity(0.1))
                    .cornerRadius(5)
            }
            
            
            Text("\(cartCount)")
                .font(.system(size: 25))
                .foregroundColor(.white)
                .padding()
            
            
            
            
            Button(action: {
                cartCount += 1
            }) {
                Text("+")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.white.opacity(0.1))
                    .cornerRadius(5)
            }
            
            Spacer()
                .frame(width: 100)
            
        }
    }
}

