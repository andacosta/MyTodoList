//
//  ViewController.swift
//  MyTodoList
//
//  Created by Sergio Acosta on 5/08/15.
//  Copyright © 2015 Platzi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	// Variables
	let todoList = TodoList()	// Modelo

	// Propiedades
	@IBOutlet weak var itemTextField: UITextField!
	@IBOutlet weak var tableView: UITableView!
	
	@IBAction func addButtonPressed(sender: UIButton) {
		print("Agregando un elemento a la lista: \(itemTextField.text)")
		todoList.addItem(itemTextField.text!)
		tableView.reloadData()
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		// Enlazar celda con modelo
		tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
		tableView.dataSource = todoList
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

