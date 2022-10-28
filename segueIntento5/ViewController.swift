//
//  ViewController.swift
//  segueIntento5
//
//  Created by Alumno on 10/26/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    let names = [
        "Erik Pereo",
        "Natalia Lujàn",
        "Idalia Guadalupe",
        "Danna",
        "Jorge Abrecht"
    ]
    
//    let numbers = [
//        "6441384932",
//        "6442098489",
//        "6442843929",
//        "6441902812",
//        "6442890982"
//    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped me")
    }
    
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
}
