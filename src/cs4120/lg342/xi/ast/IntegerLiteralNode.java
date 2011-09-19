package cs4120.lg342.xi.ast;

import java.util.ArrayList;

import edu.cornell.cs.cs4120.util.VisualizableTreeNode;
import edu.cornell.cs.cs4120.xi.AbstractSyntaxNode;
import edu.cornell.cs.cs4120.xi.Position;

public class IntegerLiteralNode extends ExpressionNode {
	public int value;
	protected Position position;
	public IntegerLiteralNode(int value, Position position){
		this.value = value;
		this.position = position;
	}
	
	@Override
	public Position position() {
		return position;
	}

	@Override
	public Iterable<VisualizableTreeNode> children() {
		// EMPTY
		return new ArrayList<VisualizableTreeNode>();
		
	}

	@Override
	public String label() {
		return "" + value;
	}

}