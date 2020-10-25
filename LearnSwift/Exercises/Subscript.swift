//
//  Subscript.swift
//  LearnSwift
//
//  Created by Rimnesh Fernandez on 25/10/20.
//

import Foundation

func subscriptOptions() {
    struct Matrix {
        let rows: Int, columns: Int
        var grid: [Double]
        init(rows: Int, columns: Int) {
            self.rows = rows
            self.columns = columns
            grid = Array(repeating: 0.0, count: rows * columns)
        }
        func indexIsValid(row: Int, column: Int) -> Bool {
            return row >= 0 && row < rows && column >= 0 && column < columns
        }
        subscript(row: Int, column: Int) -> Double {
            get {
                assert(indexIsValid(row: row, column: column), "Index out of range")
                return grid[(row * columns) + column]
            }
            set {
                assert(indexIsValid(row: row, column: column), "Index out of range")
                grid[(row * columns) + column] = newValue
            }
        }
    }
    
    var matrix = Matrix(rows: 2, columns: 2)
    matrix[0, 0] = 1.5
    matrix[0, 1] = 3.2
    matrix[1, 0] = 1.8
    matrix[1, 1] = 3.8
    print("TEST matrix[0, 0]", matrix[0, 0])
    print("TEST matrix[0, 1]", matrix[0, 1])
    print("TEST matrix[1, 0]", matrix[1, 0])
    print("TEST matrix[1, 1]", matrix[1, 1])
}
