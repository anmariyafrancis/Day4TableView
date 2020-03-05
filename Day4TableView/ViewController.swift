//
//  ViewController.swift
//  Day4TableView
//
//  Created by MacStudent on 2020-03-04.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var tblCountry: UITableView!
    
    lazy var countryNames:[country]=[]
        ["Afganistan","Angola","Aurba","Canada","Indai","Bahamas","Ghana","France","Nepal","Kenya"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func country()
    {
        
    }
}
    extension ViewController:UITableViewDataSource,UITableViewDelegate
    {
        
        func numberOfSections(in tableView:UITableView)->Int
        {
            return 1
        }
        func tableView(_ _tableView:UITableView,numberOfRowsInSection section:Int)->Int
        {
            return countryNames.count
        }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
        {
            let cell=tableView.dequeueReusableCell(withIdentifier: "CountryCell")
            let country=countryNames[indexPath.row]
            cell?.textLabel?.text=country.name
            cell?.detailTextLabel?.text=country.capital
            cell?.imageView?.image=country.flag
            
            return cell
        }
        
    }
    
    



