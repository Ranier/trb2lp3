/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lp3.modelo;

import br.cesjf.lp3.exceptions.NonexistentEntityException;
import br.cesjf.lp3.exceptions.RollbackFailureException;
import br.cesjf.lp3.modelo.DAOtrb2lp3;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.transaction.UserTransaction;

/**
 *
 * @author Ranier
 */
public class DAOtrb2lp3JpaController implements Serializable {

    public DAOtrb2lp3JpaController(UserTransaction utx, EntityManagerFactory emf) {
        this.utx = utx;
        this.emf = emf;
    }
    private UserTransaction utx = null;
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(DAOtrb2lp3 DAOtrb2lp3) throws RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            em.persist(DAOtrb2lp3);
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(DAOtrb2lp3 DAOtrb2lp3) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            DAOtrb2lp3 = em.merge(DAOtrb2lp3);
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Long id = DAOtrb2lp3.getId();
                if (findDAOtrb2lp3(id) == null) {
                    throw new NonexistentEntityException("The dAOtrb2lp3 with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Long id) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            DAOtrb2lp3 DAOtrb2lp3;
            try {
                DAOtrb2lp3 = em.getReference(DAOtrb2lp3.class, id);
                DAOtrb2lp3.getId();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The DAOtrb2lp3 with id " + id + " no longer exists.", enfe);
            }
            em.remove(DAOtrb2lp3);
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<DAOtrb2lp3> findDAOtrb2lp3Entities() {
        return findDAOtrb2lp3Entities(true, -1, -1);
    }

    public List<DAOtrb2lp3> findDAOtrb2lp3Entities(int maxResults, int firstResult) {
        return findDAOtrb2lp3Entities(false, maxResults, firstResult);
    }

    private List<DAOtrb2lp3> findDAOtrb2lp3Entities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(DAOtrb2lp3.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public DAOtrb2lp3 findDAOtrb2lp3(Long id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(DAOtrb2lp3.class, id);
        } finally {
            em.close();
        }
    }

    public int getDAOtrb2lp3Count() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<DAOtrb2lp3> rt = cq.from(DAOtrb2lp3.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
