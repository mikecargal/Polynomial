//
//  PolynomialExpr.swift
//  Polynomial
//
//  Created by Mike Cargal on 2/19/21.
//

import Foundation
class Polynomial: Equatable, CustomDebugStringConvertible {
    lazy var debugDescription = {
        self.description()
    }()

    func description() -> String {
        "Just some Polynomial 🤷🏼‍♂️"
    }

    func isEqual(_ other: Polynomial) -> Bool {
        fatalError("\(#function)Must be overridden")
    }

    func isEquivalent(_ other: Polynomial) -> Bool {
        normalized() == other.normalized()
    }

    func maxDegree() -> Int {
        fatalError("\(#function)Must be overridden")
    }

    func normalized() -> Polynomial {
        fatalError("\(#function)Must be overridden")
    }

//    static func +(_ lhs: Polynomial, rhs: Polynomial) -> Polynomial
//    static func -(_ lhs: Polynomial, rhs: Polynomial) -> Polynomial
//    static func *(_ lhs: Polynomial, rhs: Polynomial) -> Polynomial
//    static func /(_ lhs: Polynomial, rhs: Polynomial) -> Polynomial
//    static prefix func -(_ polynomial: Polynomial) -> Polynomial
}

// MARK: - Generalized Operators

func == (lhs: Polynomial, rhs: Polynomial) -> Bool {
    return lhs.isEqual(rhs)
}

func ~= (lhs: Polynomial, rhs: Polynomial) -> Bool {
    return lhs.isEquivalent(rhs)
}

func + (_ lhs: Polynomial, _ rhs: Polynomial) -> Polynomial {
    if let lhs = lhs as? SingleTermPolynomialExpr,
       let rhs = rhs as? SingleTermPolynomialExpr
    {
        return lhs + rhs
    }
    fatalError("\(#function) addition of \(lhs.self) and \(rhs.self) not yet implemented")
}

func - (_ lhs: Polynomial, _ rhs: Polynomial) -> Polynomial {
    if let lhs = lhs as? SingleTermPolynomialExpr,
       let rhs = rhs as? SingleTermPolynomialExpr
    {
        return lhs - rhs
    }
    fatalError("\(#function) addition of \(lhs.self) and \(rhs.self) not yet implemented")
}

func * (_ lhs: Polynomial, _ rhs: Polynomial) -> Polynomial {
    if let lhs = lhs as? SingleTermPolynomialExpr,
       let rhs = rhs as? SingleTermPolynomialExpr
    {
        return lhs * rhs
    }
    fatalError("\(#function) addition of \(lhs.self) and \(rhs.self) not yet implemented")
}

func / (_ lhs: Polynomial, _ rhs: Polynomial) -> Polynomial {
//    if let lhs = lhs as? SingleTermPolynomialExpr,
//       let rhs = rhs as? SingleTermPolynomialExpr
//    {
//        return lhs - rhs
//    }
    fatalError("\(#function) addition of \(lhs.self) and \(rhs.self) not yet implemented")
}

// struct PolynomialExpr : Polynomial {
//    private var terms: [PolynomialTerm]!
//
//    init(_ term: PolynomialTerm) {
//        terms = [term]
//    }
//
//    init(_ terms: [PolynomialTerm]) {
//        self.terms = terms
//    }
//
//    func simplified() -> Polynomial {
//        let sortedTerms = terms.sorted { $0.degree < $1.degree }
//        var simplifiedTerms: [PolynomialTerm] = []
//
//        for term in sortedTerms {
//            if let last = simplifiedTerms.last,
//               last.degree == term.degree
//            {
//                _ = simplifiedTerms.popLast()
//                let newTerm = last + term
//                simplifiedTerms.append(newTerm)
//            } else {
//                simplifiedTerms.append(term)
//            }
//        }
//
//        return PolynomialExpr(simplifiedTerms)
//    }
//
//    static func + (_ lhs: PolynomialExpr, _ rhs: PolynomialTerm) -> PolynomialExpr {
//        return PolynomialExpr(lhs.terms + [rhs])
//    }
//
//    static func + (_ lhs: PolynomialExpr, _ rhs: PolynomialExpr) -> PolynomialExpr {
//        return PolynomialExpr(lhs.terms + rhs.terms)
//    }
//
//    static func - (_ lhs: PolynomialExpr, _ rhs: PolynomialTerm) -> PolynomialExpr {
//        let newRHS = PolynomialTerm(rhs.v,
//                                    coefficient: 0 - rhs.coefficient,
//                                    degree: rhs.degree)
//        return lhs + newRHS
//    }
//
//    static func * (_ lhs: PolynomialExpr, _ rhs: PolynomialTerm) -> PolynomialExpr {
//        PolynomialExpr(lhs.terms.map { $0 * rhs })
//    }
//
//    static func * (_ lhs: PolynomialTerm, _ rhs: PolynomialExpr) -> PolynomialExpr {
//        return rhs * lhs
//    }
//
//    static func * (_ lhs: PolynomialExpr, rhs: PolynomialExpr) -> PolynomialExpr {
//        PolynomialExpr(lhs.terms.flatMap { leftTerm in
//            rhs.terms.map { rightTerm in
//                leftTerm * rightTerm
//            }
//        })
//    }
// }

// MARK: - SingleTermPolynomial

class SingleTermPolynomialExpr: Polynomial {
    let coefficient: Double
    let v: String?
    let degree: Int

    init(_ v: String?, coefficient: Double, degree: Int) {
        self.v = v
        self.coefficient = coefficient
        self.degree = degree
    }

    override func description() -> String {
        "\(coefficient)\(v ?? "")^\(degree)"
    }

    override func isEqual(_ other: Polynomial) -> Bool {
        if let other = other as? SingleTermPolynomialExpr {
            return v == other.v &&
                coefficient == other.coefficient &&
                degree == other.degree
        }
        return false
    }

    override func maxDegree() -> Int {
        return degree
    }

    override func normalized() -> Polynomial {
        return self
    }
}

func + (lhs: SingleTermPolynomialExpr, rhs: SingleTermPolynomialExpr) -> Polynomial {
    if lhs.degree == rhs.degree,
       lhs.v == rhs.v
    {
        return SingleTermPolynomialExpr(lhs.v,
                                        coefficient: lhs.coefficient + rhs.coefficient,
                                        degree: lhs.degree)
    } else {
        return AddSubPolynomialExpr(lhs, .add, rhs)
    }
}

func * (lhs: SingleTermPolynomialExpr, rhs: SingleTermPolynomialExpr) -> Polynomial {
    if lhs.degree == rhs.degree,
       lhs.v == rhs.v
    {
        return SingleTermPolynomialExpr(lhs.v,
                                        coefficient: lhs.coefficient * rhs.coefficient,
                                        degree: lhs.degree + rhs.degree)
    } else {
        return MultPolynomialExpr(lhs, .multiply, rhs)
    }
}

func - (lhs: SingleTermPolynomialExpr, rhs: SingleTermPolynomialExpr) -> Polynomial {
    if lhs.degree == rhs.degree,
       lhs.v == rhs.v
    {
        return SingleTermPolynomialExpr(lhs.v,
                                        coefficient: lhs.coefficient - rhs.coefficient,
                                        degree: lhs.degree)
    } else {
        return MultPolynomialExpr(lhs, .multiply, rhs)
    }
}

// MARK: - AddSub Polynomial

enum AddSubPolynomialOperator: String {
    case add = "+"
    case subtract = "-"
}

let negationPolynomial = SingleTermPolynomialExpr(nil, coefficient: -1, degree: 0)

class AddSubPolynomialExpr: Polynomial {
    let lhs: Polynomial
    let rhs: Polynomial
    let op: AddSubPolynomialOperator

    init(_ lhs: Polynomial, _ op: AddSubPolynomialOperator, _ rhs: Polynomial) {
        self.lhs = lhs
        self.op = op
        self.rhs = rhs
    }

    override func description() -> String {
        "\(lhs.description()) + \(rhs.description())"
    }

    override func maxDegree() -> Int {
        return lhs.maxDegree()
    }

    override func isEqual(_ other: Polynomial) -> Bool {
        if let other = other as? AddSubPolynomialExpr {
            if lhs == other.lhs, rhs == other.rhs {
                return true
            }
            /*
                     ┌───┐              ┌───┐
                     │ + │              │ + │
                     └───┘              └───┘
                       ╱╲                 ╱╲
                      ╱  ╲               ╱  ╲
                     ╱    ╲             ╱    ╲
                  ┌───┐  ┌───┐      ┌───┐   ┌───┐
                  │ + │  │ C │  ==  │ A │   │ + │
                  └───┘  └───┘      └───┘   └───┘
                    ╱╲                        ╱╲
                   ╱  ╲                      ╱  ╲
                  ╱    ╲                    ╱    ╲
              ┌───┐   ┌───┐              ┌───┐  ┌───┐
              │ A │   │ B │              │ B │  │ C │
              └───┘   └───┘              └───┘  └───┘
             */
            if let l = lhs as? AddSubPolynomialExpr,
               let or = other.rhs as? AddSubPolynomialExpr
            {
                if l.op == .add {
                    return l.lhs == other.lhs &&
                        l.rhs == or.lhs &&
                        rhs == or.rhs
                }
            }
            /*
                  ┌───┐                  ┌───┐
                  │ + │                  │ + │
                  └───┘                  └───┘
                    ╱╲                     ╱╲
                   ╱  ╲                   ╱  ╲
                  ╱    ╲                 ╱    ╲
              ┌───┐   ┌───┐           ┌───┐  ┌───┐
              │ A │   │ + │     ==    │ + │  │ C │
              └───┘   └───┘           └───┘  └───┘
                        ╱╲              ╱╲
                       ╱  ╲            ╱  ╲
                      ╱    ╲          ╱    ╲
                   ┌───┐  ┌───┐   ┌───┐   ┌───┐
                   │ B │  │ C │   │ A │   │ B │
                   └───┘  └───┘   └───┘   └───┘

             */
            if let r = rhs as? AddSubPolynomialExpr,
               let ol = other.lhs as? AddSubPolynomialExpr
            {
                if r.op == .add {
                    return lhs == ol.lhs &&
                        r.lhs == ol.rhs &&
                        r.rhs == rhs
                }
            }
        }
        return false
    }

    override func normalized() -> Polynomial {
        if lhs.maxDegree() > rhs.maxDegree() {
            return self
        }
        if lhs.maxDegree() == rhs.maxDegree() {
            return op == .add ? lhs + rhs : lhs - rhs
        }
        // lhs.maxDegree() < rhs.maxDegree()
        if op == .add {
            return rhs + lhs
        }
        //  subtraction so we need to invert rhs and add
        return rhs * negationPolynomial - lhs
    }
}

// MARK: - Mult Polynomial

enum MultPolynomialOperator: String {
    case multiply = "*"
    case divide = "/"
}

class MultPolynomialExpr: Polynomial {
    let lhs: Polynomial
    let op: MultPolynomialOperator
    let rhs: Polynomial
    init(_ lhs: Polynomial, _ op: MultPolynomialOperator, _ rhs: Polynomial) {
        self.lhs = lhs
        self.op = op
        self.rhs = rhs
    }

    override func normalized() -> Polynomial {
        // TODO:
        return self
    }
}

//    static func * (lhs: SingleTermPolynomialExpr, rhs: SingleTermPolynomialExpr) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func / (lhs: SingleTermPolynomialExpr, rhs: SingleTermPolynomialExpr) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func * (lhs: SingleTermPolynomialExpr, rhs: Polynomial) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func / (lhs: SingleTermPolynomialExpr, rhs: Polynomial) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func + (lhs: SingleTermPolynomialExpr, rhs: Polynomial) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func * (lhs: Polynomial, rhs: SingleTermPolynomialExpr) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func / (lhs: Polynomial, rhs: SingleTermPolynomialExpr) -> Polynomial {
//        return lhs // TODO:
//    }
//
//    static func + (lhs: Polynomial, rhs: SingleTermPolynomialExpr) -> Polynomial {
//        return lhs // TODO:
//    }
