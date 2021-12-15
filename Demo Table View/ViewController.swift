//
//  ViewController.swift
//  Demo Table View
//
//  Created by Minh Anh on 15/12/2021.
//

import UIKit


extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}
struct Notification {
    
    enum status {
        case read
        case unread
    }
    var image:String = "194199"
    var title:String = ""
    var time:String = ""
    var status:status = status.unread
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.estimatedRowHeight = 78
        
        //connect data
        self.tableView.dataSource = self
        self.tableView.delegate = self
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notifications.count
    }
    
    var notifications: [Notification] = [Notification(image: "194199", title: "Bạn vừa được gán giao đơn....", time: "Vừa xong", status: .unread), Notification(image: "194199", title: "NhungNT vừa thay đổi số điện thoại đơn hàng #XXXXX", time: "Hôm qua 11:30 AM", status: .unread), Notification(image: "download", title: "NhungNT vừa thay đổi số điện thoại đơn hàng #XXXXX", time: "Hôm qua 11:30 AM", status: .unread), Notification(image: "194199", title: "NhungNT vừa thay đổi số điện thoại đơn hàng #XXXXX", time: "Hôm qua 11:30 AM", status: .read)]
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCellController
        cell.titleOL?.text = notifications[indexPath.row].title
        cell.timeOL?.text = notifications[indexPath.row].time
        cell.imgOL?.image = UIImage(named: notifications[indexPath.row].image)
        switch notifications[indexPath.row].status {
        case .unread:
            cell.statusOL.backgroundColor = UIColor(rgb: 0x58B48B)
        case .read:
            cell.statusOL.backgroundColor = UIColor(rgb: 0xFFFFFF)
        default:
            print("None color")
        }
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 78
    }
}

