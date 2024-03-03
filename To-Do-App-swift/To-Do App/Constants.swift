//
//  Constants.swift
//  To-Do App
//
//  Created by Timur Inamkhojayev on 02.03.2024.
//

import Foundation

var todoList:[String]?

func saveData(todoList:[String]){
    UserDefaults.standard.set(todoList, forKey: "todoList")
}

func fetchData() -> [String]? {
    if let todo = UserDefaults.standard.array(forKey: "todoList") as? [String]{
        return todo
    }
    else{
        return nil
    }
}
