dataSource {
    pooled = true
    driverClassName = "org.h2.Driver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update"
            driverClassName = "org.postgresql.Driver"
            dialect = "org.hibernate.dialect.PostgreSQLDialect"
           url = "jdbc:postgresql://localhost:5432/newNest5DB2"
           // url = "jdbc:postgresql://192.168.1.76:5432/newNest5DB2" //oficina
            //url = "jdbc:postgresql://192.168.11.102:5432/newNest5DB2" //casa
            username = "postgres"
            password = "qtagtech"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            driverClassName = "org.postgresql.Driver"
            dialect = "org.hibernate.dialect.PostgreSQLDialect"
            url = "jdbc:postgresql://localhost:5432/newNest5DB2"
            username = "postgres"
            password = "qtagtech"
        }
    }
    /*production {
        dataSource {
            dbCreate = "update"
            driverClassName = "org.postgresql.Driver"
            dialect = org.hibernate.dialect.PostgreSQLDialect

            uri = new URI(System.env.DATABASE_URL?:"postgres://test:test@localhost/test")

            url = "jdbc:postgresql://"+uri.host+uri.path
            username = uri.userInfo.split(":")[0]
            password = uri.userInfo.split(":")[1]
        }
        *//*dataSource {
            //dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            //url = "jdbc:h2:mem:devDb;MVCC=TRUE"
            dbCreate = "update"
            driverClassName = "org.postgresql.Driver"
            dialect = "org.hibernate.dialect.PostgreSQLDialect"
            url = "jdbc:postgresql://localhost:5432/newNest5DB2"
            username = "postgres"
            password = "qtagtech"
        }*//*
    }*/
    production {
        dataSource {
            dbCreate = "update"
            driverClassName = "org.postgresql.Driver"
            dialect = org.hibernate.dialect.PostgreSQLDialect
            //uri = new URI(System.env.OPENSHIFT_POSTGRESQL_DB_URL?:"postgres://test:test@localhost/test")
            host = System.env.OPENSHIFT_POSTGRESQL_DB_HOST
            port = System.env.OPENSHIFT_POSTGRESQL_DB_PORT
            url = "jdbc:postgresql://"+host+":"+port+"/"+System.env.OPENSHIFT_APP_NAME
            username = System.env.OPENSHIFT_POSTGRESQL_DB_USERNAME
            password = System.env.OPENSHIFT_POSTGRESQL_DB_PASSWORD
        }
    }
}

