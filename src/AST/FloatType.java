package AST;
import AST.Visitor.Visitor;

public class FloatType extends Type {
  public FloatType(int ln) {
    super(ln);
  }
  public void accept(Visitor v) {
    v.visit(this);
  }
}
