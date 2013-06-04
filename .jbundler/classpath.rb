JBUNDLER_CLASSPATH = []
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/nz/ac/waikato/cms/weka/weka-stable/3.6.9/weka-stable-3.6.9.jar'
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/net/sf/squirrel-sql/thirdparty-non-maven/java-cup/0.11a/java-cup-0.11a.jar'
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/org/apache/commons/commons-math/2.0/commons-math-2.0.jar'
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/junit/junit/3.8.1/junit-3.8.1.jar'
JBUNDLER_CLASSPATH.freeze
JBUNDLER_CLASSPATH.each { |c| require c }
