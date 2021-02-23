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

enum PolyParse {
//    @available(*,deprecated)
//    static func parseTerm(_ src: String) -> Result<Polynomial, PolyParseError> {
//        do {
//            let (parser, errorListener) = try Self.getParserAndListener(forSource: src)
//            let pExpr = try parser.pExpr()
//            if errorListener.errorMessages.count > 0 {
//                return .failure(.invalidInput(errorListener.errorMessages.joined(separator: "\n")))
//            }
//            for msg in errorListener.errorMessages {
//                print(msg)
//            }
//            return .success(pExpr.polynomial())
//
//        } catch {
//            return .failure(PolyParseError.parseFailure("error creating Parser (\(error.localizedDescription))"))
//        }
//    }
//    
//    @available(*,deprecated)
//    static func term(_ src: String) -> SinlgeTermPolynomialExpr {
//        do {
//            return try Self.parseTerm(src).get()
//        } catch {
//            preconditionFailure("Bad Term (\(src)")
//        }
//    }
    
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
