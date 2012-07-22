package AST;
import AST.Visitor.Visitor;

public class Program extends ASTNode {
  public MainClass m;
  public ClassDeclList cl;

  public Program(MainClass am, ClassDeclList acl, int ln) {
    super(ln);
    m=am; cl=acl; 
  }

  public void accept(Visitor v) {
    v.visit(this);
  }
}
