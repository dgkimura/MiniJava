package AST;

import java.util.Vector;

public class VarDeclList extends ASTNode {
   private Vector list;

   public VarDeclList(int ln) {
      super(ln);
      list = new Vector();
   }

   public void addElement(VarDecl n) {
      list.addElement(n);
   }

   public VarDecl elementAt(int i)  { 
      return (VarDecl)list.elementAt(i); 
   }

   public int size() { 
      return list.size(); 
   }
}
