struct ContentView: View {
    @State var kolyan = false
    @State var gruzin = false
    @State var count = 0
    @State var perehod1 = 0
    @State var perehod2 = 0
    @State var perehod3 = 0
    @State var perehod4 = 0
    @State var perehod5 = 0
    @State var perehod6 = 0
    @State var secret = 0
    @State var countsecret = 0
    @State var buttons = 0
    @State var huivjope = 0
    @State var pidoras = 9
    @State var shluhinrot = false
    @State var russtop1 = 0
    @State var buttonEnabled = true
    private func handleDigit(value: Int) {
        if countsecret == 5 {
            secret += value
            huivjope = 500
            shluhinrot = true
            russtop1 = 150
            buttonEnabled = true
            if secret % 9 == 0 {
                pidoras = 0
            }
        } else {
            countsecret += 1
            secret += value
        }
    }
    var body: some View {
        ZStack {
            Text("Привет давай я покажу тебе фокус нажимай кнопку далее справа снизу чтобы продолжить ")
                .offset(x: CGFloat(perehod1), y: -350).frame(width: 300, height: 100).padding()
            Text("1. Достань или открой приложение калькулятор на своем телефоне  ")
                .offset(x: -1 * CGFloat(perehod2) + 500, y: -270)
                .frame(width: 300, height: 100).padding()
            Text("2. загадай любое число от 25 до 70 и запиши его в калькулятор")
                .offset(x:CGFloat(perehod3) - 500, y: -200)
                .frame(width: 300, height: 100).padding()
            Text("3. умножай свое число на любые РАЗНЫЕ цифры ( 1 - 9 ) пока число не превратиться в семизначное")
                .offset(x: -1 * CGFloat(perehod4) + 500, y: -100 )
                .frame(width: 300, height: 100).padding()
            Text("4. Выбири любую цифру из получившегося числа ")
                .offset(x:CGFloat(perehod5) - 500)
                .frame(width: 300, height: 100).padding()
            Text("5. назови мне 6 оставшихся цифр твоего семизначного числа в любом порядке")
                .offset(x:-1 * CGFloat(perehod6) + 500, y: 100)
                .frame(width: 300, height: 100).padding()
            VStack {
                HStack {
                    Button(action: {
                        
                        if countsecret == 5 {
                            secret += 1
                            huivjope = 500
                            shluhinrot = true
                            russtop1 = 150
                            buttonEnabled = true
                            if secret % 9 == 0 {
                                pidoras = 0
                            }
                        } else {
                            countsecret += 1
                            secret += 1
                        }
                    }, label:{
                        Text("1")
                            .foregroundColor(Color.blue)
                    })
                    .frame(width: 50, height: 50)
                    .background(Color.black)
                    .cornerRadius(15)
                    .offset(x:0, y: -800 + CGFloat(buttons))
                    
                    Button(action: {
                        if countsecret == 5 {
                            huivjope = 500
                            secret += 2
                            shluhinrot = true
                            russtop1 = 150
                            buttonEnabled = true
                            if secret % 9 == 0 {
                                pidoras = 0
                            }
                        } else {
                            countsecret += 1
                            secret += 2
                        }
                    }, label:{
                        Text("2")
                    })
                    .frame(width: 50, height: 50)
                    .background(Color.black)
                    .cornerRadius(15)
                    .offset(x:CGFloat(buttons) - 800, y: 0)
                    
                    Button(action: {
                        if countsecret == 5 {
                            huivjope = 500
                            secret += 3
                            shluhinrot = true
                            russtop1 = 150
                            buttonEnabled = true
                            if secret % 9 == 0 {
                                pidoras = 0
                            }
                        } else {
                            countsecret += 1
                            secret += 3
                        }
                    }, label:{
                        Text("3")
                    })
                    .frame(width: 50, height: 50)
                    .background(Color.black)
                    .cornerRadius(15)
                    .offset(x:0, y: -800 + CGFloat(buttons))
                    
                    Button(action: {
                        if countsecret == 5 {
                            huivjope = 500
                            secret += 4
                            shluhinrot = true
                            russtop1 = 150
                            buttonEnabled = true
                            if secret % 9 == 0 {
                                pidoras = 0
                            }
                        } else {
                            countsecret += 1
                            secret += 4
                        }
                    }, label:{
                        Text("4")
                    })
                    .frame(width: 50, height: 50)
                    .background(Color.black)
                    .cornerRadius(15)
                    .offset(x: -1 * CGFloat(buttons) + 800, y: 0)
                    
                    Button(action: {
                        if countsecret == 5 {
                            huivjope = 500
                            secret += 5
                            shluhinrot = true
                            russtop1 = 150
                            buttonEnabled = true
                            if secret % 9 == 0 {
                                pidoras = 0
                            }
                        } else {
                            countsecret += 1
                            secret += 5
                        }
                    }, label:{
                        Text("5")
                    })
                    .frame(width: 50, height: 50)
                    .background(Color.black)
                    .cornerRadius(15)
                    .offset(x:0, y: -800 + CGFloat(buttons))
                    
                }
                HStack {
                    Button(action: {
                        if countsecret == 5 {
                            huivjope = 500
                            secret += 6
                            shluhinrot = true
                            russtop1 = 150
                            buttonEnabled = true
                            if secret % 9 == 0 {
                                pidoras = 0
                            }
                        } else {
                            countsecret += 1
                            secret += 6
                        }
                    }, label:{
                        Text("6")
                    })
                    .frame(width: 50, height: 50)
                    .background(Color.black)
                    .cornerRadius(15)
                    .offset(x: CGFloat(buttons) - 800, y: 0)
                    
                    Button(action: {
                        if countsecret == 5 {
                            huivjope = 500
                            secret += 7
                            shluhinrot = true
                            russtop1 = 150
                            buttonEnabled = true
                            if secret % 9 == 0 {
                                pidoras = 0
                            }
                        } else {
                            countsecret += 1
                            secret += 7
                        }
                    }, label:{
                        Text("7").frame(width: 40, height: 50)
                    })
                    .frame(width: 50, height: 50)
                    .background(Color.black)
                    .cornerRadius(15)
                    .offset(x:0, y: -1 * CGFloat(buttons) + 800)
                    
                    Button(action: {
                        if countsecret == 5 {
                            huivjope = 500
                            secret += 8
                            shluhinrot = true
                            russtop1 = 150
                            buttonEnabled = true
                            if secret % 9 == 0 {
                                pidoras = 0
                            }
                        } else {
                            countsecret += 1
                            secret += 8
                        }
                    }, label:{
                        Text("8")
                    })
                    .frame(width: 50, height: 50)
                    .background(Color.black)
                    .cornerRadius(15)
                    .offset(x:0, y: -1 * CGFloat(buttons) + 800)
                    
                    Button(action: {
                        if countsecret == 5 {
                            huivjope = 500
                            shluhinrot = true
                            russtop1 = 150
                            buttonEnabled = true
                            if secret % 9 == 0 {
                                pidoras = 0
                            }
                        } else {
                            countsecret += 1
                            secret += 9
                        }
                    }, label:{
                        Text("9")
                    })
                    .frame(width: 50, height: 50)
                    .background(Color.black)
                    .cornerRadius(15)
                    .offset(x:0, y: -1 * CGFloat(buttons) + 800)
                    
                    Button(action: {
                        if countsecret == 5 {
                            huivjope = 500
                            shluhinrot = true
                            russtop1 = 150
                            buttonEnabled = true
                            if secret % 9 == 0 {
                                pidoras = 0
                            }
                        } else {
                            countsecret += 1
                        }
                    }, label:{
                        Text("0")
                    })
                    .frame(width: 50, height: 50)
                    .background(Color.black)
                    .cornerRadius(15)
                    .offset(x:-1 * CGFloat(buttons) + 800, y: 0)
                    
                    
                }
            }.offset(y:230)
                
                Button(action: {
                    count += 1
                    switch count {
                    case 1:
                        perehod1 += 500
                        perehod2 += 500
                    case 2:
                        perehod2 += 500
                        perehod3 += 500
                    case 3:
                        perehod3 += 500
                        perehod4 += 500
                    case 4:
                        perehod4 += 500
                        perehod5 += 500
                    case 5:
                        perehod5 += 500
                        perehod6 += 500
                        buttons += 800
                        buttonEnabled = false
                    case 6:
                         kolyan = false
                         gruzin = false
                         count = 0
                         perehod1 = 0
                         perehod2 = 0
                         perehod3 = 0
                         perehod4 = 0
                         perehod5 = 0
                         perehod6 = 0
                         secret = 0
                         countsecret = 0
                         buttons = 0
                         huivjope = 0
                         pidoras = 9
                         shluhinrot = false
                         russtop1 = 0
                    default: break
                        
                    }
                },
                    label: {Text(shluhinrot ? "попробывать еще раз" : "Дальше")})
                .offset(x:CGFloat(150 - russtop1), y: 350)
                .accentColor(Color.gray)
                .disabled(!buttonEnabled)
            Text("Число которое ты загадал ---- \(pidoras - (secret % 9))").offset(y: CGFloat(500 - huivjope))
                
                
        }.animation(.spring(response: 1.7, dampingFraction: 0.8, blendDuration: 1.6))
        
        }
    }







    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
