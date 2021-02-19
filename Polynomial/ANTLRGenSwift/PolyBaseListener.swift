// Generated from Polynomial/ANTLR/Poly.g4 by ANTLR 4.9

import Antlr4


/**
 * This class provides an empty implementation of {@link PolyListener},
 * which can be extended to create a listener which only needs to handle a subset
 * of the available methods.
 */
open class PolyBaseListener: PolyListener {
     public init() { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPolys(_ ctx: PolyParser.PolysContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPolys(_ ctx: PolyParser.PolysContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterParenPExpr(_ ctx: PolyParser.ParenPExprContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitParenPExpr(_ ctx: PolyParser.ParenPExprContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterAddSub(_ ctx: PolyParser.AddSubContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitAddSub(_ ctx: PolyParser.AddSubContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterPTerm(_ ctx: PolyParser.PTermContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitPTerm(_ ctx: PolyParser.PTermContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterMulDiv(_ ctx: PolyParser.MulDivContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitMulDiv(_ ctx: PolyParser.MulDivContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCvdTerm(_ ctx: PolyParser.CvdTermContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCvdTerm(_ ctx: PolyParser.CvdTermContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterVdTerm(_ ctx: PolyParser.VdTermContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitVdTerm(_ ctx: PolyParser.VdTermContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCvTerm(_ ctx: PolyParser.CvTermContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCvTerm(_ ctx: PolyParser.CvTermContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCTerm(_ ctx: PolyParser.CTermContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCTerm(_ ctx: PolyParser.CTermContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterDegree(_ ctx: PolyParser.DegreeContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitDegree(_ ctx: PolyParser.DegreeContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterCoefficient(_ ctx: PolyParser.CoefficientContext) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitCoefficient(_ ctx: PolyParser.CoefficientContext) { }

	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func enterEveryRule(_ ctx: ParserRuleContext) throws { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func exitEveryRule(_ ctx: ParserRuleContext) throws { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func visitTerminal(_ node: TerminalNode) { }
	/**
	 * {@inheritDoc}
	 *
	 * <p>The default implementation does nothing.</p>
	 */
	open func visitErrorNode(_ node: ErrorNode) { }
}