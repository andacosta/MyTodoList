//
//  TodoList.swift
//  MyTodoList
//
//  Created by Sergio Acosta on 11/08/15.
//  Copyright © 2015 Platzi. All rights reserved.
//

import UIKit

class TodoList: NSObject {
	var items: [String] = []
	func addItem(item: String) {
		items.append(item)
	}
}

extension TodoList: UITableViewDataSource {
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return items.count
	}
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
		let item = items[indexPath.row]
		
		cell.textLabel!.text = item
		return cell
	}
}