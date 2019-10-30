//
//  SecondViewController.swift
//  villes-temperature
//
//  Created by Christophe Ondrejec on 03/10/2019.
//  Copyright © 2019 Christophe Ondrejec. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var TemperatureLabel: UILabel!
    @IBOutlet weak var CityLabel: UILabel!
    
    var cityName:  String = ""
    
    struct Result: Codable {
        let userId: Int?
        let id: Int?
        let title: String?
        let body: String?
    }
    
    // TODO : setup good types here
    
    struct Coords: Codable {
        let lon: Float
        let lat: Float
    }
    
    struct Weather: Codable {
        let id: Int
        let main: String
        let description: String
        let icon: String
    }
    
    struct Main: Codable {
        let temp: Float
        let pressure: Float
        let humidity: Float
        let temp_min: Float
        let temp_max: Float
    }
    
    struct Wind: Codable {
        let speed: Float
        let deg: Float
    }
    
    struct Clouds: Codable {
        let all: Float
    }
    
    struct Sys: Codable {
        let type: Int
        let id: Int
        let country: String
        let sunrise: Int
        let sunset: Int
    }
    
    struct Meteo: Codable {
        let coord: Coords
        let weather: [Weather]
        let base: String?
        let main: Main
        let visibility: Int
        let wind: Wind
        let clouds: Clouds
        let dt: Int
        let sys: Sys
        let timezone: Int
        let id: Int
        let name: String
        let cod: Int
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(self.cityName)
        
        // let cityURL = URL(string: "https://jsonplaceholder.typicode.com/posts/1")!
        
        let cityURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(self.cityName)&APPID=f35cef714208c97bf56732f189416bd8")!
        
        let task = URLSession.shared.dataTask(with: cityURL) { (data, response, error) in
            if (error == nil) {
                do {
                    let result = try JSONDecoder().decode(Meteo.self, from: data!)
                    // print(result)
                    DispatchQueue.main.async {
                        self.TemperatureLabel.text = result.weather[0].description
                        self.CityLabel.text = result.name
                    }
                } catch {
                    print(error)
                    // handle unsuccessful decoding here
                }
                
                // self.TemperatureLabel.text = result
            }
        }
        
        task.resume()

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
