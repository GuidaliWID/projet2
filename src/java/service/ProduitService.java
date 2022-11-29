/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package service;
import dao.IDao;
import entities.Cart;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import util.HibernateUtil;
import entities.Produit;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Query;

/**
 *
 * @author hp
 */
public class ProduitService implements IDao<Produit>  {
    
     @Override
    public boolean create(Produit o) {
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.save(o);
            tx.commit();
            return true;
        } catch (HibernateException e) {
            if(tx != null)
                tx.rollback();
        } finally {
            session.close();
        }
        return false;
    }
    
    

    @Override
    public boolean delete(Produit o) {
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.delete(o);
            tx.commit();
            return true;
        } catch (HibernateException e) {
            if(tx != null)
                tx.rollback();
        } finally {
            session.close();
        }
        return false;
    }

    @Override
    public boolean update(Produit o)  {
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            session.update(o);
            tx.commit();
            return true;
        } catch (HibernateException e) {
            if(tx != null)
                tx.rollback();
        } finally {
            session.close();
        }
        return false;
    }

    @Override
    public Produit getById(int id)  {
        Produit produit = null;
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            produit  = (Produit) session.get(Produit.class, id);
            tx.commit();
        } catch (HibernateException e) {
            if(tx != null)
                tx.rollback();
        } finally {
            session.close();
        }
        return produit;
    }

    @Override
    public List<Produit> getAll() {
        List<Produit> produits = null;
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            produits  =  session.createQuery("from Produit").list();
            tx.commit();
        } catch (HibernateException e) {
            if(tx != null)
                tx.rollback();
        } finally {
            session.close();
        }
        return produits;
    }

   public Produit findByNom(String nom) { {
        Produit produit = null;
        Session session = null;
        Transaction tx = null;
        try {
            session = HibernateUtil.getSessionFactory().openSession();
            tx = session.beginTransaction();
            //String sql="from Professeur where nom = ?";
            Query a=session.createQuery("from Produit where nom = ?");
            a.setString(0, nom);
            produit  =(Produit) a.uniqueResult();
            tx.commit();
        } catch (HibernateException e) {
            if(tx != null)
                tx.rollback();
        } finally {
            session.close();
        }
        return produit;
  }}
   
    public List<Cart> getCartProducts(ArrayList<Cart> cartList)  {
        List<Cart> products = new ArrayList<Cart>();
         Connection con;
         PreparedStatement pst;
         ResultSet rs;
        try {
            if(cartList.size()>0){
                for(Cart item:cartList){
           String query="select * from Produit where id = ?";
           pst=Connexion.getInstance().getConnection().prepareStatement(query);
                   
           pst.setInt(1,item.getId());
           rs=pst.executeQuery();
            while(rs.next()){
                Cart row=new Cart();
                row.setId(rs.getInt("id"));
                row.setNom(rs.getString("nom"));
                row.setPrix(rs.getDouble("prix"));
                row.setQuantity(item.getQuantity());
                products.add(row);
            }
        } 
        } 
            
        
  
        }catch (Exception e){
    } 
        
        return products;
}
    
}