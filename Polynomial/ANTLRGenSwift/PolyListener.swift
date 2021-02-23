// Generated from Polynomial/ANTLR/Poly.g4 by ANTLR 4.9
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link PolyParser}.
 */
public protocol PolyListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link PolyParser#polys}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPolys(_ ctx: PolyParser.PolysContext)
	/**
	 * Exit a parse tree produced by {@link PolyParser#polys}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPolys(_ ctx: PolyParser.PolysContext)
	/**
	 * Enter a parse tree produced by {@link PolyParser#fullPExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFullPExpr(_ ctx: PolyParser.FullPExprContext)
	/**
	 * Exit a parse tree produced by {@link PolyParser#fullPExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFullPExpr(_ ctx: PolyParser.FullPExprContext)
	/**
	 * Enter a parse tree produced by the {@code parenPExpr}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterParenPExpr(_ ctx: PolyParser.ParenPExprContext)
	/**
	 * Exit a parse tree produced by the {@code parenPExpr}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitParenPExpr(_ ctx: PolyParser.ParenPExprContext)
	/**
	 * Enter a parse tree produced by the {@code addSub}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterAddSub(_ ctx: PolyParser.AddSubContext)
	/**
	 * Exit a parse tree produced by the {@code addSub}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitAddSub(_ ctx: PolyParser.AddSubContext)
	/**
	 * Enter a parse tree produced by the {@code pTerm}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPTerm(_ ctx: PolyParser.PTermContext)
	/**
	 * Exit a parse tree produced by the {@code pTerm}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPTerm(_ ctx: PolyParser.PTermContext)
	/**
	 * Enter a parse tree produced by the {@code mulDiv}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterMulDiv(_ ctx: PolyParser.MulDivContext)
	/**
	 * Exit a parse tree produced by the {@code mulDiv}
	 * labeled alternative in {@link PolyParser#pExpr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitMulDiv(_ ctx: PolyParser.MulDivContext)
	/**
	 * Enter a parse tree produced by the {@code cvdTerm}
	 * labeled alternative in {@link PolyParser#term}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCvdTerm(_ ctx: PolyParser.CvdTermContext)
	/**
	 * Exit a parse tree produced by the {@code cvdTerm}
	 * labeled alternative in {@link PolyParser#term}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCvdTerm(_ ctx: PolyParser.CvdTermContext)
	/**
	 * Enter a parse tree produced by the {@code vdTerm}
	 * labeled alternative in {@link PolyParser#term}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVdTerm(_ ctx: PolyParser.VdTermContext)
	/**
	 * Exit a parse tree produced by the {@code vdTerm}
	 * labeled alternative in {@link PolyParser#term}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVdTerm(_ ctx: PolyParser.VdTermContext)
	/**
	 * Enter a parse tree produced by the {@code cvTerm}
	 * labeled alternative in {@link PolyParser#term}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCvTerm(_ ctx: PolyParser.CvTermContext)
	/**
	 * Exit a parse tree produced by the {@code cvTerm}
	 * labeled alternative in {@link PolyParser#term}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCvTerm(_ ctx: PolyParser.CvTermContext)
	/**
	 * Enter a parse tree produced by the {@code cTerm}
	 * labeled alternative in {@link PolyParser#term}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCTerm(_ ctx: PolyParser.CTermContext)
	/**
	 * Exit a parse tree produced by the {@code cTerm}
	 * labeled alternative in {@link PolyParser#term}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCTerm(_ ctx: PolyParser.CTermContext)
	/**
	 * Enter a parse tree produced by {@link PolyParser#degree}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDegree(_ ctx: PolyParser.DegreeContext)
	/**
	 * Exit a parse tree produced by {@link PolyParser#degree}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDegree(_ ctx: PolyParser.DegreeContext)
	/**
	 * Enter a parse tree produced by {@link PolyParser#coefficient}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterCoefficient(_ ctx: PolyParser.CoefficientContext)
	/**
	 * Exit a parse tree produced by {@link PolyParser#coefficient}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitCoefficient(_ ctx: PolyParser.CoefficientContext)
}