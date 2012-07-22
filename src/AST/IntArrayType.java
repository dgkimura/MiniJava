package AST;
import AST.Visitor.Visitor;

public class IntArrayType extends Type {
  public IntArrayType(int ln) {
    super(ln);
  }
  public void accept(Visitor v) {
    v.visit(this);
  }
}
