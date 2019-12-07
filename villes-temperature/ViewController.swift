////
////  ViewController.swift
////  villes-temperature
////
////  Created by Aymeric Arnoult on 07/12/2019.
////  Copyright © 2019 Christophe Ondrejec. All rights reserved.
////
//
//import UIKit
//
//class CityCell: UITableViewCell {
//
//    @IBOutlet weak var cityLabel: UIButton!
//}
//
//class ViewController: UIViewController {
//
//    @IBOutlet weak var tableView: UITableView!
//
//    let Cities: [String] = [
//        "London",
//        "Frankfurt",
//        "Canberra",
//        "Puebla",
//        "Florence",
//        "Bergen",
//        "Salzburg",
//        "Quebec",
//        "Dresden",
//        "Merida",
//        "Sydney",
//        "Taipei",
//        "Barcelona",
//        "Amsterdam",
//        "Copenhagen",
//        "Osaka",
//        "Vienna",
//        "Singapore",
//        "Kyoto",
//        "Tokyo",
//        "Melbourne",
//        "Chicago",
//        "Montreal",
//        "Berlin",
//        "Glasgow",
//        "Paris",
//        "Madrid"
//    ]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        print("loaded")
//        // Do any additional setup after loading the view.
//    }
//}
//
//extension ViewController : UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        print("pute")
//        print(Cities.count)
//        return 100
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        print("mes couilles")
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "city") as? CityCell {
//            print(Cities[indexPath.row])
//            print("couille")
//            cell.cityLabel.setTitle("pute", for: .normal)
//            return cell
//        } else {
//            print("on a du la créer")
//            let cell = CityCell(style: .default, reuseIdentifier: "city")
//            // cell.textLabel?.text = "\(indexPath.row)"
//            return cell
//        }
//    }
//}
//
//extension ViewController : UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("bite")
//        let next = self.storyboard?.instantiateViewController(identifier: "second") as? SecondViewController
//
//        next?.cityName = Cities[indexPath.row]
//
//        if next != nil {
//            show(next!, sender: self)
//        }
//    }
//}
//
////import UIKit
////
////class NewsCell : UITableViewCell {
////
////    @IBOutlet weak var newsDate: UILabel!
////    @IBOutlet weak var newsTitle: UILabel!
////    @IBOutlet weak var newsImage: UIImageView!
////}
////
////class ViewController: UIViewController {
////
////    @IBOutlet weak var tableView: UITableView!
////    override func viewDidLoad() {
////        super.viewDidLoad()
////        // Do any additional setup after loading the view.
////    }
////
////
////}
////
////extension ViewController : UITableViewDataSource {
////    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////        return 100
////    }
////
////    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        if let cell = tableView.dequeueReusableCell(withIdentifier: "news") as? NewsCell {
////
////            cell.newsTitle.text = "Magnifique News! \(indexPath.row)"
////            cell.newsDate.text = "Il y a \(indexPath.row) minutes"
////
////            if indexPath.row % 2 == 0 {
////                cell.newsImage.image = UIImage(named: "dude")
////            } else {
////                cell.newsImage.image = UIImage(named: "diagramme")
////            }
////            return cell
////        } else {
////            print("on a du la creer")
////            // create one
////            var cell = NewsCell(style: .default, reuseIdentifier: "news")
////            cell.textLabel?.text = "\(indexPath.row)"
////            return cell
////        }
////    }
////
////}
////
////extension ViewController : UITableViewDelegate {
////    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
////        print(indexPath.row)
////    }
////}
