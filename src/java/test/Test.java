/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import entities.Admin;
import org.hibernate.Hibernate;
import service.ClientService;
import util.HibernateUtil;
import entities.Client;
import entities.Categorie;
import entities.Commande;
import entities.Marque;
import entities.Produit;
import entities.User;
import service.AdminService;
import service.CategorieService;
import service.CommandeService;
import service.MarqueService;
import service.ProduitService;
import service.UserService;

/**
 *
 * @author a
 */
public class Test {
    public static void main(String[] args) {
        //HibernateUtil.getSessionFactory().openSession();
        //ClientService ss=new ClientService();
        //System.out.println(cs.getByEmail("oumaima@gmail.com"));
        //Client m= cs.getByEmail("oumaima@gmail.com");
		//m.setEmail("oumi@gmail.com");
		//cs.update(m);
        //UserService as=new UserService();
        //System.out.println(as.getByEmail("ad@gmail.com"));
        //User c = as.getByEmail("ad@gmail.com");
        //System.out.println(c);
        //CommandeService cs = new CommandeService();
        //cs.create(new Commande("Annulée",ss.getById(3)));
        //Commande e= cs.getById(2);
        //System.out.println(e.getClient().getNom());
        //cs.create(new Commande("Livré",ss.getById(1)));
        
        //System.out.println(cs.findByNom("NIKE"));
        //MarqueService ms = new MarqueService();
        //ms.delete(ms.findByNom("PUMA"));
        //System.out.println(ms.findByNom("PUMA"));
        //ss.create(new User("Livré",cs.getById(1)));
        //ClientService ps = new ClientService();
        
        
        //String pro = request.getParameter("e.getNom()");
         //int id = Integer.parseInt(request.getParameter("id"));
        //s.delete(s.getById(id));
         
         //ps.delete(ps.findByNom("ZAHIR"));
        ProduitService ps=new ProduitService();
        ps.create(new Produit("Banane",10,"Banana.jpg"));
        
    }
}
