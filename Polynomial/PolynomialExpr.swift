//
//  PolynomialExpr.swift
//  Polynomial
//
//  Created by Mike Cargal on 2/19/21.
//

import Foundation
protocol Polynomial {
    // TODO
}

struct PolynomialExpr : Polynomial {
    private var terms: [PolynomialTerm]!

    init(_ term: PolynomialTerm) {
        terms = [term]
    }

    init(_ terms: [PolynomialTerm]) {
        self.terms = terms
    }

    func simplified() -> PolynomialExpr {
        let sortedTerms = terms.sorted { $0.degree < $1.degree }
        var simplifiedTerms: [PolynomialTerm] = []

        for term in sortedTerms {
            if let last = simplifiedTerms.last,
               last.degree == term.degree
            {
                _ = simplifiedTerms.popLast()
                let newTerm = last + term 
                simplifiedTerms.append(newTerm)
            } else {
                simplifiedTerms.append(term)
            }
        }

        return PolynomialExpr(simplifiedTerms)
    }

    static func + (_ lhs: PolynomialExpr, _ rhs: PolynomialTerm) -> PolynomialExpr {
        return PolynomialExpr(lhs.terms + [rhs])
    }

    static func + (_ lhs: PolynomialExpr, _ rhs: PolynomialExpr) -> PolynomialExpr {
        return PolynomialExpr(lhs.terms + rhs.terms)
    }

    static func - (_ lhs: PolynomialExpr, _ rhs: PolynomialTerm) -> PolynomialExpr {
        let newRHS = PolynomialTerm(rhs.v,
                                    coefficient: 0 - rhs.coefficient,
                                    degree: rhs.degree)
        return lhs + newRHS
    }

    static func * (_ lhs: PolynomialExpr, _ rhs: PolynomialTerm) -> PolynomialExpr {
        PolynomialExpr(lhs.terms.map { $0 * rhs })
    }

    static func * (_ lhs: PolynomialTerm, _ rhs: PolynomialExpr) -> PolynomialExpr {
        return rhs * lhs
    }

    static func * (_ lhs: PolynomialExpr, rhs: PolynomialExpr) -> PolynomialExpr {
        PolynomialExpr(lhs.terms.flatMap { leftTerm in
            rhs.terms.map { rightTerm in
                leftTerm * rightTerm
            }
        })
    }
}
