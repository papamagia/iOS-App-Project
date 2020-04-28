//
//  Sqlite.swift
//  OneDayOneAnswer
//
//  Created by Jaedoo Ko on 2020/04/28.
//  Copyright © 2020 JMJ. All rights reserved.
//

import Foundation
import SQLite3

class SqliteDataBase: DataBase {
    static let instance: DataBase = SqliteDataBase()
    
    private var sqlite: OpaquePointer?
    
    private init() {
        guard openSqlite3() else {
            print("database error")
            return
        }
        guard createTable() else {
            print("database table error")
            return
        }
        
    }
    
    private func openSqlite3() -> Bool {
        let fileURL = try! FileManager.default
            .url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            .appendingPathComponent("db.sqlite")
        guard sqlite3_open(fileURL.path, &sqlite) == SQLITE_OK else {
            return false
        }
        return true
    }
    
    private func createTable() -> Bool {
        false
    }
    
    func insertArticle(article: Article) -> Bool {
        false
    }
    
    func insertArticles(articles: [Article]) -> Bool {
        false
    }
    
    func selectArticle(date: Date) -> Article {
        Article(id: 0, date: Date(), question: "", answer: "")
    }
    
    func selectArticle(string: String) -> [Article] {
        []
    }
    
    func updateArticle(article: Article) -> Bool {
        false
    }
    
    func deleteArticle(id: Int) -> Bool {
        false
    }
    
    func deleteArticle(article: Article) -> Bool {
        false
    }
}