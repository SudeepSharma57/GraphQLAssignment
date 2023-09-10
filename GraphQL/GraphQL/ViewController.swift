//
//  ViewController.swift
//  GraphQL
//
//  Created by Sudeep Sharma on 05/07/23.
//

import UIKit
import Apollo

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    override func viewWillAppear(_ animated: Bool) {
        let apolloClient = ApolloClient(url: URL(string: "http://localhost:4000/graphql")!)
        apolloClient.fetch(query: ExampleQuery()) { result in
            guard let data1 = try? result.get().data else {
                print("no data found")
                return
            }
            print(data1.books?.first)
        }
    }

}

