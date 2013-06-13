JBUNDLER_CLASSPATH = []
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/org/apache/commons/commons-math3/3.0/commons-math3-3.0.jar'
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/mckoi/mckoi/0.93/mckoi-0.93.jar'
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/hsqldb/hsqldb/1.8.0.7/hsqldb-1.8.0.7.jar'
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/idb/idb/3.26/idb-3.26.jar'
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/org/xerial/sqlite-jdbc/3.7.2/sqlite-jdbc-3.7.2.jar'
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/postgresql/postgresql/9.1-901.jdbc4/postgresql-9.1-901.jdbc4.jar'
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/mysql/mysql-connector-java/5.1.6/mysql-connector-java-5.1.6.jar'
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/nz/ac/waikato/cms/weka/weka-stable/3.6.9/weka-stable-3.6.9.jar'
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/net/sf/squirrel-sql/thirdparty-non-maven/java-cup/0.11a/java-cup-0.11a.jar'
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/org/apache/commons/commons-math/2.0/commons-math-2.0.jar'
JBUNDLER_CLASSPATH << '/Users/arrigoni/.m2/repository/junit/junit/3.8.1/junit-3.8.1.jar'
JBUNDLER_CLASSPATH.freeze
JBUNDLER_CLASSPATH.each { |c| require c }
