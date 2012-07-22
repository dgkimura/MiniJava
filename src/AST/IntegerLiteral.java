package AST;
import AST.Visitor.Visitor;

public class IntegerLiteral extends Exp {
  public int i;

  public IntegerLiteral(int ai, int ln) {
    super(ln);
    i=ai;
  }

  public void accept(Visitor v) {
    v.visit(this);
  }
}
