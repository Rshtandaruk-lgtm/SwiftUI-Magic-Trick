//
//  ContentView.swift
//  intro
//
//  Created by Alex Shtandaruk on 26.06.2025.
//
import SwiftUI
//
//struct ContentView: View {
//    @State var isError = false
//    var body: some View {
//        Button(action: {
//            self.isError = true
//        }, label: {
//            Text("НАЖМИ НА МЕНЯ!!!")
//        }).actionSheet(isPresented: $isError,
//                       content: {
//            ActionSheet(title: Text("sucksome"),
//                        message: Text("ti chmo"),
//                        buttons:
//                            [.default(Text("Suliman")), .default(Text("ZZZZZZVVVVVV")) ,
//                            .default(Text("ВЫ пидорас")), .destructive(Text("popanegra"))])
//        })
//    }
//}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

//import SwiftUI
//
//struct ContentView: View {
//    @State var Penis = false
//    @State var IsError = false
//    @State var roma = 0
//    var body: some View {
//        VStack{
//            ZStack{
//            RoundedRectangle(cornerRadius:  1000).frame(width: 100, height: 100).offset(x:IsError ? 150 : 0)
//            RoundedRectangle(cornerRadius:  1000).frame(width: 100, height: 100).offset(x:-100 + (IsError ? 150 : 0))
//                RoundedRectangle(cornerRadius:  1000).frame(width: 100, height:200).offset(x:-50 + (IsError ? 150 : 0), y: -100)
//            }
//            Toggle(isOn: $IsError, label: {
//                Text("Подвинуть писюнярий в лево")
//            }).padding()
//        }.animation(.spring(response: 0.6, dampingFraction: 1.3, blendDuration: 3.4))
//    }
//}



//import SwiftUI
//struct ContentView: View {
//    @State var sec = 0
//    var set = ["sluha", "label", "lolkek"]
//    var body: some View {
//        Picker(selection: $sec, label:
//            Text("sluha")) {
//            ForEach(0..<set.count) {
//                Text(self.set[$0])
//            }
//        }
//    }
//}
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//
//1
//import Foundation
//
//enum Player {
//    case player1, player2
//}
//
//enum CellState {
//    case empty, player1, player2
//}
//
//class GameModel: ObservableObject {
//    @Published var board: [[CellState]] = Array(repeating: Array(repeating: .empty, count: 3), count: 3)
//    @Published var currentPlayer: Player = .player1
//    @Published var winner: Player? = nil
//
//    // Функция для ходов игроков
//    func makeMove(row: Int, col: Int) {
//        guard board[row][col] == .empty && winner == nil else {
//            return // Место занято или игра закончена
//        }
//
//        // Ставим фишку игрока
//        board[row][col] = currentPlayer == .player1 ? .player1 : .player2
//
//        // Проверка на победу
//        if checkForWinner() {
//            winner = currentPlayer
//        } else {
//            // Переключаем игрока
//            currentPlayer = currentPlayer == .player1 ? .player2 : .player1
//        }
//    }
//
//    // Проверка победы
//    private func checkForWinner() -> Bool {
//        // Проверка строк
//        for row in 0..<3 {
//            if board[row][0] != .empty && board[row][0] == board[row][1] && board[row][1] == board[row][2] {
//                return true
//            }
//        }
//
//        // Проверка столбцов
//        for col in 0..<3 {
//            if board[0][col] != .empty && board[0][col] == board[1][col] && board[1][col] == board[2][col] {
//                return true
//            }
//        }
//
//        // Диагонали
//        if board[0][0] != .empty && board[0][0] == board[1][1] && board[1][1] == board[2][2] {
//            return true
//        }
//        if board[0][2] != .empty && board[0][2] == board[1][1] && board[1][1] == board[2][0] {
//            return true
//        }
//
//        return false
//    }
//
//    // Сброс игры
//    func resetGame() {
//        board = Array(repeating: Array(repeating: .empty, count: 3), count: 3)
//        currentPlayer = .player1
//        winner = nil
//    }
//}





//2
//import Foundation
//
//struct Birthday {
//    var name: String
//    var date: Date
//}
//import UIKit
//
//class ViewController: UIViewController, UITableViewDataSource {
//
//    @IBOutlet weak var tableView: UITableView!
//    var birthdays: [Birthday] = []
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.dataSource = self
//    }
//
//    @IBAction func addBirthday(_ sender: Any) {
//        let alert = UIAlertController(title: "Добавить день рождения", message: nil, preferredStyle: .alert)
//        alert.addTextField { textField in
//            textField.placeholder = "Имя"
//        }
//        alert.addTextField { textField in
//            textField.placeholder = "Дата (yyyy-MM-dd)"
//        }
//        alert.addAction(UIAlertAction(title: "Добавить", style: .default, handler: { [weak alert] _ in
//            guard let name = alert?.textFields?[0].text, !name.isEmpty,
//                  let dateString = alert?.textFields?[1].text, !dateString.isEmpty,
//                  let date = self.dateFormatter.date(from: dateString) else { return }
//            let birthday = Birthday(name: name, date: date)
//            self.birthdays.append(birthday)
//            self.tableView.reloadData()
//        }))
//        alert.addAction(UIAlertAction(title: "Отмена", style: .cancel))
//        present(alert, animated: true)
//    }
//
//    // MARK: UITableViewDataSource
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return birthdays.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "BirthdayCell", for: indexPath)
//        let birthday = birthdays[indexPath.row]
//        cell.textLabel?.text = "\(birthday.name) - \(birthday.dateString)"
//        return cell
//    }
//
//    // Дата форматтер
//    var dateFormatter: DateFormatter {
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy-MM-dd"
//        return formatter
//    }
//}
//
//extension Birthday {
//    var dateString: String {
//        let formatter = DateFormatter()
//        formatter.dateStyle = .short
//        return formatter.string(from: self.date)
//    }
//}
//
//import UIKit
//import UserNotifications
//
//@UIApplicationMain
//class AppDelegate: UIResponder, UIApplicationDelegate {
//
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { granted, error in
//            if granted {
//                print("Разрешение получено")
//            } else {
//                print("Разрешение отклонено")
//            }
//        }
//        return true
//    }
//}
//func scheduleBirthdayNotification(birthday: Birthday) {
//    let content = UNMutableNotificationContent()
//    content.title = "Сегодня день рождения!"
//    content.body = "\(birthday.name) отмечает свой день рождения!"
//    content.sound = .default
//
//    let triggerDate = Calendar.current.dateComponents([.year, .month, .day], from: birthday.date)
//    let trigger = UNCalendarNotificationTrigger(dateMatching: triggerDate, repeats: true)
//
//    let request = UNNotificationRequest(identifier: birthday.name, content: content, trigger: trigger)
//    UNUserNotificationCenter.current().add(request) { error in
//        if let error = error {
//            print("Ошибка уведомления: \(error.localizedDescription)")
//        }
//    }
//}
//крестики нолики пока только пиздец как кастыльно(хз как пишется) потом вернуть буду уменьшать код
//пока только это хуйня какая-то
//но рабочая!!!

//кружки квадратики
//struct ContentView: View {
//    @State var count = 0
//    @State var b1 = 1000
//    @State var b2 = 1000
//    @State var b3 = 1000
//    @State var b4 = 1000
//    @State var b5 = 1000
//    @State var b6 = 1000
//    @State var b7 = 1000
//    @State var b8 = 1000
//    @State var b9 = 1000
//    @State var n1 = 1000
//    @State var n2 = 1000
//    @State var n3 = 1000
//    @State var n4 = 1000
//    @State var n5 = 1000
//    @State var n6 = 1000
//    @State var n7 = 1000
//    @State var n8 = 1000
//    @State var n9 = 1000
//    @State var text = true
//    @State private var buttonEnabled1 = true
//    @State private var buttonEnabled2 = true
//    @State private var buttonEnabled3 = true
//    @State private var buttonEnabled4 = true
//    @State private var buttonEnabled5 = true
//    @State private var buttonEnabled6 = true
//    @State private var buttonEnabled7 = true
//    @State private var buttonEnabled8 = true
//    @State private var buttonEnabled9 = true
//    @State var Gbottomline_krug = 0
//    @State var Gtopline_krug = 0
//    @State var Gmidline_krug = 0
//    @State var Gbottomline_kvadrat = 0
//    @State var Gtopline_kvadrat  = 0
//    @State var Gmidline_kvadrat  = 0
//    @State var Vbottomline_krug = 0
//    @State var Vtopline_krug = 0
//    @State var Vmidline_krug = 0
//    @State var Vbottomline_kvadrat = 0
//    @State var Vtopline_kvadrat  = 0
//    @State var Vmidline_kvadrat  = 0
//    @State var d_vlevo_krug = 0
//    @State var d_vpravo_krug = 0
//    @State var d_vlevo_kvadrat = 0
//    @State var d_vpravo_kvadrat = 0
//    @State var igra = false
//    @State var showAlert = false
//    @State var showAlert_kvadrat = false
//    @State var p = 0
//    @State var drow = false
//    var body: some View {
//        Text(igra ? "Игра закончена" : "Игра идет ");
//        Text(text ? "Ход игрока 1" : "Xод игрока 2");
//        //Text("Сбросить игру");
//
//
//            ZStack{
//                Button(action: {
//                    count = 0
//                    b1 = 1000
//                    b2 = 1000
//                    b3 = 1000
//                    b4 = 1000
//                    b5 = 1000
//                    b6 = 1000
//                    b7 = 1000
//                    b8 = 1000
//                    b9 = 1000
//                    n1 = 1000
//                    n2 = 1000
//                    n3 = 1000
//                    n4 = 1000
//                    n5 = 1000
//                    n6 = 1000
//                    n7 = 1000
//                    n8 = 1000
//                    n9 = 1000
//                    text = true
//                    buttonEnabled1 = true
//                    buttonEnabled2 = true
//                    buttonEnabled3 = true
//                    buttonEnabled4 = true
//                    buttonEnabled5 = true
//                    buttonEnabled6 = true
//                    buttonEnabled7 = true
//                    buttonEnabled8 = true
//                    buttonEnabled9 = true
//                    Gbottomline_krug = 0
//                    Gtopline_krug = 0
//                    Gmidline_krug = 0
//                    Gbottomline_kvadrat = 0
//                    Gtopline_kvadrat = 0
//                    Gmidline_kvadrat = 0
//                    Vbottomline_krug = 0
//                    Vtopline_krug = 0
//                    Vmidline_krug = 0
//                    Vbottomline_kvadrat = 0
//                    Vtopline_kvadrat = 0
//                    Vmidline_kvadrat = 0
//                    d_vlevo_krug = 0
//                    d_vpravo_krug = 0
//                    d_vlevo_kvadrat = 0
//                    d_vpravo_kvadrat = 0
//                    igra = false
//                    showAlert = false
//                    showAlert_kvadrat = false
//                        }, label: {
//                                RoundedRectangle(cornerRadius:  10).frame(width: 300, height: 70)
//                        }).offset(y:100).foregroundColor(Color.red)
//                Text("Cбросить игру").foregroundColor(Color.white).offset(y:100).frame(width: 300, height: 70)
//                VStack{
//                    HStack {  //7-9
//                        //7
//
//
//
//                        Button(action: {
//                            if  (Gtopline_kvadrat == 2 || Vbottomline_kvadrat == 2 || d_vlevo_kvadrat == 2) && count % 2 == 1{
//                                n7 = 0
//                                igra = true
//                                showAlert_kvadrat = true
//                                showAlert = true
//                            } else if  (Gtopline_krug == 2 || Vbottomline_krug == 2 || d_vlevo_krug == 2) && count % 2 == 0{
//                                b7 = 0
//                                igra = true
//                                showAlert_kvadrat = false
//                                showAlert = true
//                        } else if count % 2 == 0 {
//                            count += 1
//                            b7 = 0
//                            text = false
//                            buttonEnabled7 = false
//                            Gtopline_krug += 1
//                            Vbottomline_krug += 1
//                            d_vlevo_krug += 1
//                        } else {
//                            count += 1
//                            n7 = 0
//                            text = true
//                            buttonEnabled7 = false
//                                Gtopline_kvadrat += 1
//                                Vbottomline_kvadrat += 1
//                                d_vlevo_kvadrat += 1
//                        }}, label: {
//                            RoundedRectangle(cornerRadius:  10).frame(width: 100, height: 100)
//                        }).disabled(!buttonEnabled7)
//                        //8
//
//
//
//                        Button(action: {
//                            if (Gtopline_kvadrat == 2 || Vmidline_kvadrat == 2) && count % 2 == 1{
//                                n8 = 0
//                                igra = true
//                                showAlert_kvadrat = true
//                                showAlert = true
//                        } else if (Gtopline_krug == 2 || Vmidline_krug == 2) && count % 2 == 0{
//                                b8 = 0
//                            igra = true
//                            showAlert_kvadrat = false
//                                showAlert = true
//                        } else if count % 2 == 0 {
//                            count += 1
//                            b8 = 0
//                            text = false
//                            buttonEnabled8 = false
//                            Gtopline_krug += 1
//                            Vmidline_krug += 1
//                        }
//                            else {
//                            count += 1
//                            n8 = 0
//                            text = true
//                            buttonEnabled8 = false
//                                Gtopline_kvadrat += 1
//                                Vmidline_kvadrat += 1
//                        }}, label: {
//                            RoundedRectangle(cornerRadius:  10).frame(width: 100, height: 100)
//                        }).disabled(!buttonEnabled8)
//                        //9
//
//
//
//
//                        Button(action: {
//                            if  (Gtopline_kvadrat == 2 || Vtopline_kvadrat == 2 || d_vpravo_kvadrat == 2) && count % 2 == 1 {
//                                n9 = 0
//                                igra = true
//                                showAlert_kvadrat = true
//                                showAlert = true
//                        } else if  (Gtopline_krug == 2 || Vtopline_krug == 2 || d_vpravo_krug == 2) && count % 2 == 0{
//                                b9 = 0
//                            igra = true
//                            showAlert_kvadrat = false
//                                showAlert = true
//                        } else if count % 2 == 0 {
//                            count += 1
//                            b9 = 0
//                            text = false
//                            buttonEnabled9 = false
//                            Gtopline_krug += 1
//                            d_vpravo_krug += 1
//                            Vtopline_krug += 1
//                        }
//                            else {
//                            count += 1
//                            n9 = 0
//                            text = true
//                            buttonEnabled9 = false
//                                Gtopline_kvadrat += 1
//                                d_vpravo_kvadrat += 1
//                                Vtopline_kvadrat += 1
//                        }}, label: {
//                            RoundedRectangle(cornerRadius:  10).frame(width: 100, height: 100)
//                        }).padding().frame(width: 100, height: 100).disabled(!buttonEnabled9)
//                    }
//                    HStack { //4-6
//                        //4
//
//
//
//
//                        Button(action: {
//                            if (Gmidline_kvadrat == 2 || Vbottomline_kvadrat == 2) && count % 2 == 1{
//                                n4 = 0
//                                igra = true
//                                showAlert_kvadrat = true
//                                showAlert = true
//                            } else if (Gmidline_krug == 2 || Vbottomline_krug == 2 )  && count % 2 == 0{
//                                b4 = 0
//                                igra = true
//                                showAlert_kvadrat = false
//                                showAlert = true
//                            } else if count % 2 == 0 {
//                            count += 1
//                            b4 = 0
//                            text = false
//                            buttonEnabled4 = false
//                            Gmidline_krug += 1
//                            Vbottomline_krug += 1
//                        } else {
//                            count += 1
//                            n4 = 0
//                            text = true
//                            buttonEnabled4 = false
//                            Gmidline_kvadrat += 1
//                            Vbottomline_kvadrat += 1
//                        }}, label: {
//                            RoundedRectangle(cornerRadius:  10).frame(width: 100, height: 100)
//                        }).disabled(!buttonEnabled4)
//                        //5
//
//
//
//
//
//
//                        Button(action: {
//                            if (Gmidline_kvadrat == 2 || Vmidline_kvadrat == 2 || d_vlevo_kvadrat == 2 || d_vpravo_kvadrat == 2) && count % 2 == 1{
//                                n5 = 0
//                                igra = true
//                                showAlert_kvadrat = true
//                                showAlert = true
//                            } else if (Gmidline_krug == 2 || Vmidline_krug == 2 || d_vlevo_krug == 2 || d_vpravo_krug == 2) && count % 2 == 0{
//                                b5 = 0
//                                igra = true
//                                showAlert_kvadrat = false
//                                showAlert = true
//                            } else if count % 2 == 0 {
//                            count += 1
//                            b5 = 0
//                            text = false
//                            buttonEnabled5 = false
//                            Gmidline_krug += 1
//                            d_vpravo_krug += 1
//                            Vmidline_krug += 1
//                            d_vlevo_krug += 1
//                        } else {
//                            count += 1
//                            n5 = 0
//                            text = true
//                            buttonEnabled5 = false
//                            Gmidline_kvadrat += 1
//                            d_vpravo_kvadrat += 1
//                            Vmidline_kvadrat += 1
//                            d_vlevo_kvadrat += 1
//                        }}, label: {
//                            RoundedRectangle(cornerRadius:  10).frame(width: 100, height: 100)
//                        }).disabled(!buttonEnabled5)
//                        //6
//
//
//
//
//
//                        Button(action: {
//                            if (Gmidline_kvadrat == 2 || Vtopline_kvadrat == 2) && count % 2 == 1{
//                                n6 = 0
//                                igra = true
//                                showAlert_kvadrat = true
//                                showAlert = true
//                            } else if( Gmidline_krug == 2 || Vtopline_krug == 2 ) && count % 2 == 0{
//                                b6 = 0
//                                igra = true
//                                showAlert_kvadrat = false
//                                showAlert = true
//                            } else if count % 2 == 0 {
//                            count += 1
//                            b6 = 0
//                            text = false
//                            buttonEnabled6 = false
//                            Gmidline_krug += 1
//                            Vtopline_krug += 1
//                        } else {
//                            count += 1
//                            n6 = 0
//                            text = true
//                            buttonEnabled6 = false
//                            Gmidline_kvadrat += 1
//                            Vtopline_kvadrat += 1
//                        }}, label: {
//                            RoundedRectangle(cornerRadius:  10).frame(width: 100, height: 100)
//                        }).disabled(!buttonEnabled6)
//                    }
//                    HStack {  //1-3
//                        //1
//
//
//
//
//
//
//                        Button(action: {
//                            if (Gbottomline_kvadrat == 2 || Vbottomline_kvadrat == 2 || d_vpravo_kvadrat == 2) && count % 2 == 1{
//                                n1 = 0
//                                igra = true
//                                showAlert_kvadrat = true
//                                showAlert = true
//                            } else if (Gbottomline_krug == 2 || Vbottomline_krug == 2 || d_vpravo_krug == 2) && count % 2 == 0{
//                                b1 = 0
//                                igra = true
//                                showAlert_kvadrat = false
//                                showAlert = true
//                            } else if count % 2 == 0 {
//                            count += 1
//                            b1 = 0
//                            text = false
//                            buttonEnabled1 = false
//                            Gbottomline_krug += 1
//                            d_vpravo_krug += 1
//                            Vbottomline_krug += 1
//                        } else {
//                            count += 1
//                            n1 = 0
//                            text = true
//                            buttonEnabled1 = false
//                            Gbottomline_kvadrat += 1
//                            d_vpravo_kvadrat += 1
//                            Vbottomline_kvadrat += 1
//                        }}, label: {
//                            RoundedRectangle(cornerRadius:  10).frame(width: 100, height: 100)
//                        }).disabled(!buttonEnabled1)
//                        //2
//
//
//
//
//
//                        Button(action: {
//                            if (Gbottomline_kvadrat == 2 || Vmidline_kvadrat == 2) && count % 2 == 1{
//                                n2 = 0
//                                igra = true
//                                showAlert_kvadrat = true
//                                showAlert = true
//                            } else if (Gbottomline_krug == 2 || Vmidline_krug == 2) && count % 2 == 0{
//                                b2 = 0
//                                igra = true
//                                showAlert_kvadrat = false
//                                showAlert = true
//                            } else if count % 2 == 0 {
//                            count += 1
//                            b2 = 0
//                            text = false
//                            buttonEnabled2 = false
//                            Gbottomline_krug += 1
//                            Vmidline_krug += 1
//                        } else {
//                            count += 1
//                            n2 = 0
//                            text = true
//                            buttonEnabled2 = false
//                            Gbottomline_kvadrat += 1
//                            Vmidline_kvadrat += 1
//                        }}, label: {
//                            RoundedRectangle(cornerRadius:  10).frame(width: 100, height: 100)
//                        }).disabled(!buttonEnabled2)
//                        //3
//
//
//
//
//
//                        Button(action: {
//                            if (Gbottomline_kvadrat == 2 || Vtopline_kvadrat == 2 || d_vlevo_kvadrat == 2) && count % 2 == 1{
//                                n3 = 0
//                                igra = true
//                                showAlert_kvadrat = true
//                                showAlert = true
//                            } else if (Gbottomline_krug == 2 || Vtopline_krug == 2 || d_vlevo_krug == 2) && count % 2 == 0{
//                                b3 = 0
//                                igra = true
//                                showAlert_kvadrat = false
//                                showAlert = true
//                            } else if count % 2 == 0 {
//                            count += 1
//                            b3 = 0
//                            text = false
//                            buttonEnabled3 = false
//                            Gbottomline_krug += 1
//                            d_vlevo_krug += 1
//                            Vtopline_krug += 1
//                        } else {
//                            count += 1
//                            n3 = 0
//                            text = true
//                            buttonEnabled3 = false
//                            Gbottomline_kvadrat += 1
//                            d_vlevo_kvadrat += 1
//                            Vtopline_kvadrat += 1
//                        }}, label: {
//                            RoundedRectangle(cornerRadius:  10).frame(width: 100, height: 100).disabled(!buttonEnabled3)
//                        }).disabled(!buttonEnabled3)
//                    }
//                    ZStack{
//                        VStack {
//                            HStack {
//                                RoundedRectangle(cornerRadius:  1000).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(-30 + (b1)), y: -93)
//                                RoundedRectangle(cornerRadius:  1000).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(b2), y: -93)
//                                RoundedRectangle(cornerRadius:  1000).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(30 + (b3)), y: -93)
//                            }
//                            HStack {
//                                RoundedRectangle(cornerRadius:  1000).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(-30 + (b4)), y: -278)
//                                RoundedRectangle(cornerRadius:  1000).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(b5), y: -278)
//                                RoundedRectangle(cornerRadius:  1000).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(30 + (b6)), y: -278)
//                            }
//                            HStack {
//                                RoundedRectangle(cornerRadius:  1000).fill(Color.red).frame(width: 70, height: 70).offset(x:CGFloat(-30 + (b7)), y: -463)
//                                RoundedRectangle(cornerRadius:  1000).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(b8), y: -463)
//                                RoundedRectangle(cornerRadius:  1000).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(30 + (b9)), y: -463)
//                            }
//                        }
//                        VStack{
//                            HStack {
//                                RoundedRectangle(cornerRadius:  1).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(-30 + (n1)), y: -93)
//                                RoundedRectangle(cornerRadius:  1).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(n2), y: -93)
//                                RoundedRectangle(cornerRadius:  1).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(30 + (n3)), y: -93)
//                            }
//                            HStack {
//                                RoundedRectangle(cornerRadius:  1).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(-30 + (n4)), y: -278)
//                                RoundedRectangle(cornerRadius:  1).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(n5), y: -278)
//                                RoundedRectangle(cornerRadius:  1).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(30 + (n6)), y: -278)
//                            }
//                            HStack {
//                                RoundedRectangle(cornerRadius:  1).fill(Color.red).frame(width: 70, height: 70).offset(x:CGFloat(-30 + (n7)), y: -463)
//                                RoundedRectangle(cornerRadius:  1).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(n8), y: -463)
//                                RoundedRectangle(cornerRadius:  1).fill(Color.red).frame(width: 70, height: 70).offset(x: CGFloat(30 + (n9)), y: -463)
//                            }
//                        }
//                    }
//                }
//            }.alert(isPresented: $showAlert) {
//                Alert(title: Text( "Опана нахуй"),
//                      message: Text(showAlert_kvadrat ? "победил квадрат нахуй" : "победил кружок нахуй"),
//                      dismissButton: .default(Text("OK"),
//                    action: {
//                    buttonEnabled1 = false
//                    buttonEnabled2 = false
//                    buttonEnabled3 = false
//                    buttonEnabled4 = false
//                    buttonEnabled5 = false
//                    buttonEnabled6 = false
//                    buttonEnabled7 = false
//                    buttonEnabled8 = false
//                    buttonEnabled9 = false
//                }))
//            }.padding()
//        }
//    }



// RoundedRectangle(cornerRadius:  1000).frame(width: 70, height: 70)
// RoundedRectangle(cornerRadius:  1).frame(width: 70, height: 70)
//Button(label: {
//    RoundedRectangle(cornerRadius:  1000).frame(width: 70, height: 70)
//})


//struct ContentView: View {
//    @State var Birdlr = 0
//    @State var Birdud = 0
//    @State var pizda = 0
//    var body: some View {
//        ZStack {
//            ZStack {
//                RoundedRectangle(cornerRadius:  10).frame(width: 170, height: 70).offset(x: CGFloat(500 + pizda) , y: 60 )
//                RoundedRectangle(cornerRadius:  100).frame(width: 70, height: 270).offset(x: CGFloat(800 + pizda) , y: -120 )
//                RoundedRectangle(cornerRadius:  500).frame(width: 140, height: 150).offset(x: CGFloat(1200 + pizda) , y: -60 )
//                RoundedRectangle(cornerRadius:  800).frame(width: 400, height: 96).offset(x: CGFloat(2000 + pizda) , y: -120 )
//                RoundedRectangle(cornerRadius:  10).frame(width: 120, height: 70).offset(x: CGFloat(1500 + pizda) , y: -100 )
//                RoundedRectangle(cornerRadius:  1).frame(width: 90, height: 130).offset(x: CGFloat(2100 + pizda) , y: 60 )
//            }.animation(.spring(response: 10, dampingFraction: 10, blendDuration: 10))
//            ZStack {
//                RoundedRectangle(cornerRadius:  1000).fill(Color.brown).frame(width: 40, height: 40).offset(x: CGFloat(Birdlr), y:-100 + CGFloat(Birdud))
//                Button(action: {Birdud += 35}, label: { RoundedRectangle(cornerRadius:  1000).frame(width: 70, height: 70) }).offset(y: 400)
//                Button(action: {Birdud -= 35}, label: { RoundedRectangle(cornerRadius:  1000).frame(width: 70, height: 70) }).offset(y: 300)
//                Button(action: {Birdlr -= 35}, label: { RoundedRectangle(cornerRadius:  1000).frame(width: 70, height: 70) }).offset(x: -50, y: 350)
//                Button(action: {Birdlr += 35}, label: { RoundedRectangle(cornerRadius:  1000).frame(width: 70, height: 70) }).offset(x: 50, y: 350)
//                Button(action: {pizda += -6000}, label: { RoundedRectangle(cornerRadius:  1000).frame(width: 70, height: 70) }).offset(x: 150, y: 350)
//                //            RoundedRectangle(cornerRadius:  10).fill(Color.red).frame(width: 40, height: 640).offset(x: -180, y: -80)
//                //            RoundedRectangle(cornerRadius:  10).fill(Color.red).frame(width: 40, height: 640).offset(x: 180, y: -80)
//                RoundedRectangle(cornerRadius:  10).fill(Color.red).frame(width: 650, height: 40).offset(x: 0, y: 120)
//                RoundedRectangle(cornerRadius:  10).fill(Color.red).frame(width: 650, height: 40).offset(x: 0, y: -320)
//            }.animation(.spring(response: 1, dampingFraction: 1, blendDuration: 1))
//        }
//    }
//}




//struct ContentView: View {
//    @State var kamshot = false
//    @State var flip = 0
//    @State var flip2 = 0
//    @State var togle = ["Черные", "Белые", "Фиолетовые" ]
//    @State var flop = ["5", "10", "15" ]
//    var body: some View {
//        NavigationView {
//            Form {
//                VStack{
//        Picker(selection: $flip, label:Text("Какие хуи сосать по утрам")){
//        ForEach(0..<togle.count){Text(self.togle[$0])}}
//                    Toggle(isOn: $kamshot, label:{Text("Режим смазки")}).foregroundColor(kamshot ? Color.orange : Color.gray)
//                    Picker(selection: $flip2, label:Text("Какое колицество хуёв сосать по утрам ")){
//                    ForEach(0..<flop.count){Text(self.flop[$0])}}
//                    //Text("время выбрано = \(togle[flip])")
//                }
//            }.navigationBarTitle(Text("Настройки Александра Карпова"))
//        }
//    }
//}


//struct ContentView: View {
//    @State private var progress: Float = 0
//    var body: some View {
//        Slider(value: $progress)
//    }
//}
import AVFoundation

//class playerviewmodel: ObservableObject {
//    @Published public var maxDuration = 50.0
//    private var plaer: AVAudioPlayer?
//
//    private func Playsong(nameSong: String) {
//        guard let audiopath = Bundle.main.path(forResource: name, ofType: "mp3")
//    }
//}

//struct ContentView: View {
//    @State private var progress: Float = 0
//    @State var kolyan = false
//    @State var gruzin = false
//    var body: some View {
//        ZStack {
//            Button(action:{print("музыка играет")},label:{Text("play").foregroundColor(Color.white)})
//                .frame(width: 100, height: 50)
//                .background(Color.green)
//                .cornerRadius(15)
//                .offset(x:160, y: 45)
//
//            Button(action:{print("музыка остановилась")},label:{Text("stop").foregroundColor(Color.white)})
//                .frame(width: 100, height: 50)
//                .background(Color.red)
//                .cornerRadius(15)
//                .offset(x:-160, y: 45)
//
//
//
//            Slider(value: $progress, label: {Text("slower")}).accentColor(Color.red).padding()
//        }
//
//    }
//}
//
//

//struct CreateButton {
//    @State var secret = 0
//    @State var countsecret = 0
//    func createbutton(name: String) {
//        Button(action: {
//            secret += 1
//            countsecret += 1
//        }, label:{
//            Text(name)
//        })
//        .frame(width: 50, height: 50)
//        .background(Color.red)
//        .cornerRadius(15)
//        .offset(x:0, y: 0)
//    }
//}
//
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

//struct ContentView: View {
//    @State var slidervalue: Float = 0
//    var body: some View {
//        Slider(value: $slidervalue)
//            .padding()
//            //.background(Color.black)
//            .accentColor(Color.black)
//            .foregroundColor(Color.red)
//    }
//}
