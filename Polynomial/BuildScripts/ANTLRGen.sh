set -e

export CLASSPATH=".:/usr/local/lib/antlr-4.9-complete.jar:$CLASSPATH"
alias antlr4='java -Xmx500M -cp "/usr/local/lib/antlr-4.9-complete.jar:$CLASSPATH" org.antlr.v4.Tool'
export JAVA_HOME=$(/usr/libexec/java_home)%

echo "Generating Poly source..."
echo "$SRCROOT$/Polynomial/ANTLRGenSwift"
antlr4 -Dlanguage=Swift -message-format gnu -Xexact-output-dir -o Polynomial/ANTLRGenSwift Polynomial/ANTLR/Poly.g4
