/** This class is used to report errors with the input program during
 * lexical analysis a.k.a. scanning. */

package Throwables;

public class LexicalCompilerException extends CompilerException {
    /** A standard interface for reporting an error */
    public LexicalCompilerException(String message) {
	super("Lexical error: " + message);
    }

    /** An interface to use if the line of the input where the error
     * occurs is known */
    public LexicalCompilerException(String message, int line) {
	super("Lexical error: " + message, line);
    }

    /** An interface to use if the line and column of the input where
     * the error occurs is known */
    public LexicalCompilerException(String message, int line, int column) {
	super("Lexical error: " + message, line, column);
    }
}
