//
//  PolyParse.swift
//  Polynomial
//
//  Created by Mike Cargal on 2/20/21.
//

import Antlr4
import Foundation

enum PolyParseError: Error, Equatable {
    case invalidInput(String)
    case parseFailure(String)
}

struct PolyParse {    
    static func parsePoly(_ src: String) -> Result<Polynomial,PolyParseError> {
        do {
            let (parser, errorListener) = try Self.getParserAndListener(forSource: src)
            let fullPoly = try parser.fullPExpr()
            if errorListener.errorMessages.count > 0 {
                return .failure(.invalidInput(errorListener.errorMessages.joined(separator: "\n")))
            }
            for msg in errorListener.errorMessages {
                print(msg)
            }
            return .success(fullPoly.polynomial())

        } catch {
            return .failure(PolyParseError.parseFailure("error creating Parser (\(error.localizedDescription))"))
        }
    }
    
    static func poly(_ src: String) -> Polynomial {
        do {
            return try Self.parsePoly(src).get()
        } catch {
            preconditionFailure("Bad Polynomial (\(src)")
        }
    }

    private static func getParserAndListener(forSource src: String) throws -> (PolyParser, MyErrorListener) {
        let source = src
        let inputStream = ANTLRInputStream(source)
        let lexer = PolyLexer(inputStream)
        let tokenStream = CommonTokenStream(lexer)

        let parser = try PolyParser(tokenStream)
        let errorListener = MyErrorListener()
        parser.addErrorListener(errorListener)
        return (parser, errorListener)
    }
}
