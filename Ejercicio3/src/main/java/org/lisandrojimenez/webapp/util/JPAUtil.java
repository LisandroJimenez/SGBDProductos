package org.lisandrojimenez.webapp.util;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class JPAUtil {

    private static final EntityManagerFactory emf = buildEntityManegerFactory();

    public static EntityManagerFactory buildEntityManegerFactory() {
        try {
            return Persistence.createEntityManagerFactory("SGBDProductos");
        } catch (Throwable e) {
            e.printStackTrace();
            throw new ExceptionInInitializerError(e);
        }

    }

    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    
    public static void close(){
        emf.close();
    }

}
