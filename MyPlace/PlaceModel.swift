//
//  PlaceModel.swift
//  MyPlace
//
//  Created by Georgi on 14.11.2023.
//

import Foundation

struct Place {
    var name: String
    var location: String
    var type: String
    var image: String
}

var restarauntNames = [
        "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
        "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
        "Speak Easy", "Morris Pub", "Вкусные истории", "Классик",
        "Love&Life", "Шок", "Бочка"
    ]

func getPlaces() -> [Place] {
    
    var places = [Place]()
    
    for place in restarauntNames {
        places.append(Place(name: place, location: "Ставрополь", type: "Забегаловка", image: place))
    }
        return places
    }

    
