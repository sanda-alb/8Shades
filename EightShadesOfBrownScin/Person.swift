//
//  Person.swift
//  EightShadesOfBrownScin
//
//  Created by TK_User on 03.11.2021.
//

struct Person {
    let title: String?
    let url: String?
}

class ScinColors {
    
    static func getPerson() -> [Person] {
        let baseURL = "https://thatsisterimages.s3.amazonaws.com/wp-content/uploads/2018/04/26160552/shutterstock_"
        let people = [
            Person (
                    title: "Marshmellow clored scin",
                    url: baseURL + "124438054.jpg"
                   ),
            Person (
                    title: "Pretty pecan brown scin",
                    url: baseURL + "282904385.jpg"
                   ),
            Person (
                    title: "Peanut butter truffle tone",
                    url: baseURL + "640005088.jpg"
                   ),
            Person (
                    title: "Alluring amber",
                    url: baseURL + "119230999.jpg"
                   ),
            Person (
                    title: "Brown caramel scin shade",
                    url: baseURL + "188674505.jpg"
                   ),
            Person (
                    title: "Milc chocolate shade",
                    url: baseURL + "400969783.jpg"
                   ),
            Person (
                    title: "Espresso brown scin",
                    url: baseURL + "333668321.jpg"
                   ),
            Person (
                    title: "Delicious cacao black scin shade",
                    url: baseURL + "719756656.jpg"
                   )
        ]
        return people
    }
}
