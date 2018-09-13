//
//  ViewController.swift
//  BinaryCounter2
//
//  Created by Amanda Demetrio on 9/12/18.
//  Copyright © 2018 Amanda Demetrio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sum = 0
    
    let arrayOfNumbers: [Int] = [
        1,
        10,
        100,
        1000,
        10000,
        100000,
        1000000,
        10000000,
        100000000,
        1000000000,
        10000000000,
        100000000000,
        1000000000000,
        10000000000000,
        100000000000000,
        1000000000000000
    ]
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        totalLabel.text = "\(sum)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfNumbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BinaryCell", for: indexPath) as! BinaryCell
        cell.backgroundColor = UIColor.yellow
        cell.numberLabel.text = "\(arrayOfNumbers[indexPath.row])"
        cell.delegate = self
        return cell
    }
}

extension ViewController: BinaryCellDelegate {
    func addButtonClicked(_ labelAmount: String, _ buttonPressed: UIButton) {
        if buttonPressed.tag == 1 {
            sum += Int(labelAmount)!
            updateLabel(sum)
        }
        else if buttonPressed.tag == -1 {
            sum -= Int(labelAmount)!
            updateLabel(sum)
        }
    }
    
    func updateLabel(_ num: Int) {
        totalLabel.text = "\(num)"
    }
    
    
}

