//
//  OrderViewController.swift
//  Demo Table View
//
//  Created by Minh Anh on 15/12/2021.
//

import UIKit

class OrderViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = orderTableOL.dequeueReusableCell(withIdentifier: "order_cell") as! OrderCellTableViewController
        cell.imgOrderOL.image = UIImage(named: orders[indexPath.row].image)
        cell.codeOL.text =  "#\(orders[indexPath.row].orderCode)"
        cell.priceOL.text =  "COD - \(orders[indexPath.row].price)"
        cell.phoneNameOL.text =  "\(orders[indexPath.row].name) - \(orders[indexPath.row].phone)"
        cell.addressOL.text =  "\(orders[indexPath.row].address)"
        cell.dateOL.text =  "\(orders[indexPath.row].date)"
        cell.positionOL.text =  "\(orders[indexPath.row].position)"
        switch orders[indexPath.row].status {
        case .red:
            cell.statusBarOL.backgroundColor = .red
        case .gray:
            cell.statusBarOL.backgroundColor = .gray
        case .green:
            cell.statusBarOL.backgroundColor = UIColor(rgb: 0x58B48B)
        case .yellow:
            cell.statusBarOL.backgroundColor = .yellow
        default:
            print("None color")
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    
    
    struct Order {
        
        enum orderStatus {
            case red
            case gray
            case green
            case yellow
        }
        var orderCode:String = "194199"
        var image:String = ""
        var price:String = ""
        var name:String = ""
        var phone:String = ""
        var address:String = ""
        var date:String = ""
        var position:String = ""
        var status:orderStatus = .red
    }
    
    let orders: [Order] = [Order(orderCode: "A12345", image: "download", price: "123000", name: "MA", phone: "0912475923", address: "Long Bien", date: "dd/mm/yyyy - hh:mm ", position: "16km", status: .green), Order(orderCode: "A12345", image: "194199", price: "123000", name: "MA", phone: "0912475923", address: "Long Bien", date: "dd/mm/yyyy - hh:mm ", position: "16km", status: .gray), Order(orderCode: "A12345", image: "download", price: "123000", name: "MA", phone: "0912475923", address: "Long Bien", date: "dd/mm/yyyy - hh:mm ", position: "16km", status: .green), Order(orderCode: "A12345", image: "download", price: "123000", name: "MA", phone: "0912475923", address: "Long Bien", date: "dd/mm/yyyy - hh:mm ", position: "16km", status: .red), Order(orderCode: "A12345", image: "194199", price: "123000", name: "MA", phone: "0912475923", address: "Long Bien", date: "dd/mm/yyyy - hh:mm ", position: "16km", status: .yellow), Order(orderCode: "A12345", image: "download", price: "123000", name: "MA", phone: "0912475923", address: "Long Bien", date: "dd/mm/yyyy - hh:mm ", position: "16km", status: .red), Order(orderCode: "A12345", image: "download", price: "123000", name: "MA", phone: "0912475923", address: "Long Bien", date: "dd/mm/yyyy - hh:mm ", position: "16km", status: .green), Order(orderCode: "A12345", image: "download", price: "123000", name: "MA", phone: "0912475923", address: "Long Bien", date: "dd/mm/yyyy - hh:mm ", position: "16km", status: .green), Order(orderCode: "A12345", image: "download", price: "123000", name: "MA", phone: "0912475923", address: "Long Bien", date: "dd/mm/yyyy - hh:mm ", position: "16km", status: .green), Order(orderCode: "A12345", image: "download", price: "123000", name: "MA", phone: "0912475923", address: "Long Bien", date: "dd/mm/yyyy - hh:mm ", position: "16km", status: .green), Order(orderCode: "A12345", image: "download", price: "123000", name: "MA", phone: "0912475923", address: "Long Bien", date: "dd/mm/yyyy - hh:mm ", position: "16km", status: .green), Order(orderCode: "A12345", image: "download", price: "123000", name: "MA", phone: "0912475923", address: "Long Bien", date: "dd/mm/yyyy - hh:mm ", position: "16km", status: .green), Order(orderCode: "A12345", image: "download", price: "123000", name: "MA", phone: "0912475923", address: "Long Bien", date: "dd/mm/yyyy - hh:mm ", position: "16km", status: .green)]
    
    @IBOutlet var orderTableOL: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        orderTableOL.dataSource = self
        orderTableOL.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
