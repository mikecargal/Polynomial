//
//  MyErrorListener.swift
//  Polynomial
//
//  Created by Mike Cargal on 2/19/21.
//

import Antlr4
import Foundation

class MyErrorListener: BaseErrorListener {
    var errorMessages: [String] = [] 

    override func syntaxError<T>(_ recognizer: Recognizer<T>,
                                 _ offendingSymbol: AnyObject?,
                                 _ line: Int,
                                 _ charPositionInLine: Int,
                                 _ msg: String,
                                 _ e: AnyObject?)
        where T: ATNSimulator
    {
        errorMessages.append("col:\(charPositionInLine) \(msg)")
    }
}
