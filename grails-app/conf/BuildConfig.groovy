grails.servlet.version = "2.5" // Change depending on target container compliance (2.5 or 3.0)
grails.project.class.dir = "target/classes"
grails.project.test.class.dir = "target/test-classes"
grails.project.test.reports.dir = "target/test-reports"
grails.project.target.level = 1.6
grails.project.source.level = 1.6
grails.project.war.file = "target/ROOT.war"

// uncomment (and adjust settings) to fork the JVM to isolate classpaths
//grails.project.fork = [
//   run: [maxMemory:1024, minMemory:64, debug:false, maxPerm:256]
//]

grails.project.dependency.resolution = {
    // inherit Grails' default dependencies
    inherits("global") {
        // specify dependency exclusions here; for example, uncomment this to disable ehcache:
        // excludes 'ehcache'
    }
    log "warn" // log level of Ivy resolver, either 'error', 'warn', 'info', 'debug' or 'verbose'
    checksums true // Whether to verify checksums on resolve
    legacyResolve false // whether to do a secondary resolve on plugin installation, not advised and here for backwards compatibility

    repositories {
        inherits true // Whether to inherit repository definitions from plugins

        grailsPlugins()
        grailsHome()
        grailsCentral()
        mavenRepo "http://repo.grails.org/grails/plugins"
        mavenLocal()
        mavenCentral()
        mavenRepo "http://repository.springsource.com/maven/bundles/release"
        mavenRepo "http://repository.springsource.com/maven/bundles/external"

        // uncomment these (or add new ones) to enable remote dependency resolution from public Maven repositories
        //mavenRepo "http://snapshots.repository.codehaus.org"
        //mavenRepo "http://repository.codehaus.org"
        //mavenRepo "http://download.java.net/maven/2/"
        //mavenRepo "http://repository.jboss.com/maven2/"
    }

    dependencies {
        // specify dependencies here under either 'build', 'compile', 'runtime', 'test' or 'provided' scopes e.g.
        runtime: 'postgresql:postgresql:9.1-902.jdbc4'
        compile: 'javax.mail:mail:1.4'
        compile 'org.apache.httpcomponents:httpcore:4.3.2'
        compile 'org.apache.httpcomponents:httpclient:4.3.3'
        compile 'org.codehaus.jackson:jackson-core-asl:1.8.7'
        compile 'org.codehaus.jackson:jackson-mapper-asl:1.8.1'
        compile 'com.amazonaws:aws-java-sdk:1.5.0'
        compile 'commons-codec:commons-codec:1.6'
        compile 'joda-time:joda-time:2.3'
        compile 'commons-logging:commons-logging:1.1.3'
        compile('org.codehaus.groovy.modules.http-builder:http-builder:0.5.2') {
            excludes "commons-logging", "xml-apis", "groovy","httpclient","httpcore"
        }
        // runtime 'mysql:mysql-connector-java:5.1.20'
    }


    plugins {
        runtime ":hibernate:$grailsVersion"
        runtime ":jquery:1.8.3"
        runtime ":resources:1.2.1"

        // Uncomment these (or add new ones) to enable additional resources capabilities
        //runtime ":zipped-resources:1.0"
        //runtime ":cached-resources:1.0"
        //runtime ":yui-minify-resources:0.1.4"

        build ":tomcat:$grailsVersion"

        runtime ":database-migration:1.2.1"
        compile ':cache:1.0.1'
        /*compile ":heroku:1.0.1"
        compile ':cloud-support:1.0.8'*/
        compile ':spring-security-core:1.2.7.3'
        compile ":spring-security-facebook:0.14.5"
        compile ":mail:1.0.1", {
            excludes 'spring-test'
        }
        compile ":qrcode:0.3"


    }
}
