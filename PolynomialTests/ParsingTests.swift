//
//  ParsingTests.swift
//  PolynomialTests
//
//  Created by Mike Cargal on 2/20/21.
//

@testable import Polynomial
import XCTest

class ParsingTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testTermParse() throws {
        XCTAssertEqual(PolyParse.poly("2x^3"), SingleTermPolynomialExpr("x", coefficient: 2, degree: 3))
    }

    func testBadTerm() throws {
        let res = PolyParse.parsePoly("3x3")
        XCTAssertEqual(res, .failure(.invalidInput("col:2 extraneous input \'3\' expecting <EOF>")))
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
}
