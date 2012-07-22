import Scanner.*;
import Parser.sym;
import Throwables.*;
import java_cup.runtime.Symbol;

public class TestScanner {
    public static void main(String [] args) {
        try {
            // create a scanner on the input file
            scanner s = new scanner(System.in);
                Symbol t = s.next_token();
                while (t.sym != sym.EOF){ 
                    // print each token that we scan
                    System.out.print(s.symbolToString(t) + " ");
                    t = s.next_token(); 
                }
            System.out.print("\nLexical analysis successfull"); 
        } catch (CompilerException e) {
            // an error in the user's arguments or input, or some
            // other kind of error that we've already handled in the
            // appropriate way (not a bug that the error got here)
            System.err.println(e.getMessage());
        } catch (Exception e) {
            // yuck: some kind of error in the compiler implementation
            // that we're not expecting (a bug!)
            System.err.println("Unexpected internal compiler error: " + 
                        e.toString());
            // print out a stack dump
            e.printStackTrace();
        }
   }
}


