//
//  ViewController.swift
//  MovemedicalCodingChallenge
//
//  Created by STEPHEN D JAYNES on 4/6/20.
//  Copyright © 2020 STEPHEN D JAYNES. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var displayableItems = [Displayable]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.populateDisplayableItems()
        
    }
    
    // MARK: - Private Helper Methods -
    
    private func populateDisplayableItems() {
        self.displayableItems.append(Book(name: "A Tale of Two Cities",
                                          description: "It was the best of times, it was the worst of times...",
                                          author: "Charles Dickens", isbnNumber: "123456789-1"))
        self.displayableItems.append(Book(name: "Fundamental Algorithms",
                                          description: "A must in the library of every computer programmer",
                                          author: "Charles Knuth", isbnNumber: "234567890-1"))
        self.displayableItems.append(Book(name: "Green Eggs and Ham",
                                          description: "A favorite of children and adults alike",
                                          author: "Dr. Seuss", isbnNumber: "345678901-1"))
        self.displayableItems.append(Car(name: "Mustang",
                                         description: "A classic, first available in 1965",
                                         make: "Ford", year: 1967))
        self.displayableItems.append(Car(name: "Pinto",
                                         description: "Not quite a classic, it had a few issues...",
                                         make: "Ford", year: 1973))
        self.displayableItems.append(Car(name: "Huracan",
                                         description: "In quite a different class than most cars...",
                                         make: "Lamborghini", year: 2020))
        self.displayableItems.append(Phone(name: "iPhone 11 Pro Max",
                                           description: "The top of the line...",
                                           manufacturer: "Apple",
                                           price: 999.0))
        self.displayableItems.append(Phone(name: "Galaxy Note 10",
                                           description: "Top of the line in Android",
                                           manufacturer: "Samsung", price: 1099.99))
        self.displayableItems.append(Phone(name: "Pixel 4 XL",
                                           description: "Made by the developers of the Android operating system",
                                           manufacturer: "Google", price: 929.0))
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.displayableItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemTableViewCell
        cell.nameLabel.text = self.displayableItems[indexPath.row].name
        cell.descriptionLabel.text = self.displayableItems[indexPath.row].description
        
        if let book = self.displayableItems[indexPath.row] as? Book {
            cell.additionalInfoLabel.text = "Author: \(book.author)"
            cell.itemTypeLabel.text = "Book"
        } else if let car = self.displayableItems[indexPath.row] as? Car {
            cell.additionalInfoLabel.text = "Make: \(car.make)"
            cell.itemTypeLabel.text = "Car"
        } else if let phone = self.displayableItems[indexPath.row] as? Phone {
            cell.additionalInfoLabel.text = "Manufacturer: \(phone.manufacturer)"
            cell.itemTypeLabel.text = "Phone"
        }
        return cell
    }
    
    
}
