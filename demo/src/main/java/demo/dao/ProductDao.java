package demo.dao;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import demo.pojo.*;
import demo.utl.*;
public class ProductDao {
	public static void addProduct(Product newProduct) {
		try {
			Session sess=HibernateUtils.getSessionFactory().openSession();
			sess.beginTransaction();
			sess.save(newProduct);
			sess.getTransaction().commit();
			
			sess.close();
		}catch (Exception e) {
			System.out.print("add product was failure!");
		}	
	}
	public static List<Product> getNikeProducts() {
	    try (Session session = HibernateUtils.getSessionFactory().openSession()) {
	        String hql = "FROM Product WHERE branch = :branch";
	        Query<Product> query = session.createQuery(hql, Product.class);
	        query.setParameter("branch", "Nike");
	        List<Product> nikeProducts = query.getResultList();
	        return nikeProducts;
	    }catch (Exception e) {
			System.out.print("load Nike failure!");
			return null;
		}
	}
	public static List<Product> getAllProduct(){
		List<Product> prList=null;
		try(Session sess=HibernateUtils.getSessionFactory().openSession()) {
			sess.beginTransaction();
			Query<Product> query = sess.createQuery("FROM Product", Product.class);
			prList = query.list();
			
			sess.close();
		}catch (Exception e) {
			System.out.print("loi: "+e);
		}
		
		return prList;
	}
	
	public static void deleteProduct(int _id) {
		try(Session sess=HibernateUtils.getSessionFactory().openSession()){
			sess.beginTransaction();
			Product pr=sess.get(Product.class, _id);
			if(pr!=null) {
				sess.delete(pr);
				sess.getTransaction().commit();
				sess.close();
			}
		}catch (Exception e) {
			System.out.print("delete failure!");
		}
	}
	
	
	public static List<Product> GetNewProduct(){
		List<Product> prs=null;
		try(Session sess=HibernateUtils.getSessionFactory().openSession()){
			sess.beginTransaction();
			 String hql = "FROM Product ORDER BY date_up DESC";
			 Query<Product> query = sess.createQuery(hql, Product.class);
			 query.setMaxResults(4);
			 prs = query.list();
			 
			sess.close();
		}catch (Exception e) {
			// TODO: handle exception
		}
		return prs;
	}
	public static Product getProductById(int id) {
		try (Session sess =HibernateUtils.getSessionFactory().openSession()){
			sess.beginTransaction();
			Product pr=sess.get(Product.class, id);
			return pr;
			
		}catch (Exception e) {
			return null;
		}
	}
	public static void add_favorite_pro(int id_pro, int id_cus) {
		try(Session sess=HibernateUtils.getSessionFactory().openSession()){
			sess.beginTransaction();
			Favorite_products FP=new Favorite_products(id_pro,id_cus);
			sess.save(FP);
			sess.getTransaction().commit();
			sess.close();
		}catch (Exception e) {
			System.out.print("failure");
		}
	}
	
	
}
