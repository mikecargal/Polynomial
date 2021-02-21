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
    static func parseTerm(_ src: String) -> Result<PolynomialTerm, PolyParseError> {
        do {
            let (parser, errorListener) = try Self.getParserAndListener(forSource: src)
            let fullTerm = try parser.fullTerm()
            if errorListener.errorMessages.count > 0 {
                return .failure(.invalidInput(errorListener.errorMessages.joined(separator: "\n")))
            }
            for msg in errorListener.errorMessages {
                print(msg)
            }
            return .success(fullTerm.term())

        } catch {
            return .failure(PolyParseError.parseFailure("error creating Parser (\(error.localizedDescription))"))
        }
    }

    static func term(_ src: String) -> PolynomialTerm {
        do {
            return try Self.parseTerm(src).get()
        } catch {
            preconditionFailure("Bad Term (\(src)")
        }
    }
    
//    static func parsePoly(_ src: String) -> Result<PolynomialExpr,PolyParseError> {
//        do {
//            let (parser, errorListener) = try Self.getParserAndListener(forSource: src)
//            let fullTerm = try parser.fullPExpr()
//            if errorListener.errorMessages.count > 0 {
//                return .failure(.invalidInput(errorListener.errorMessages.joined(separator: "\n")))
//            }
//            for msg in errorListener.errorMessages {
//                print(msg)
//            }
//            return .success(fullTerm.pExpr()!)
//
//        } catch {
//            return .failure(PolyParseError.parseFailure("error creating Parser (\(error.localizedDescription))"))
//        }
//    }

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
