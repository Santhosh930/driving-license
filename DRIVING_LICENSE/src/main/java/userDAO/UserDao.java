package userDAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Persistence;
import javax.persistence.Query;

import userDTO.Person;

public class UserDao {
	public String licenceNumber(String name, int age) {
		String l_no = "";
		char[] ch = name.toCharArray();
		for (int i = 0; i < 3; i++) {
			l_no += (ch[i]);
		}
		double d = 999 * Math.random() + 999;
		int i = (int) d;
		return l_no.toUpperCase() + age + i;

	}

	public void saveUser(Person user) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("database");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		try {
			em.persist(user);
		} finally {
			et.commit();
		}

	}

	public Person getUserByEmail(String email) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("database");
		EntityManager em = emf.createEntityManager();
		Person person;
		Query query = em.createQuery("select p from Person p where p.email=:mail");
		query.setParameter("mail", email);
		try {
			person = (Person) query.getSingleResult();
		} catch (NoResultException e) {
			person = null;
		}
		return person;
	}

	public void updatePassword(String password, Person person) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("database");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		person.setPassword(password);
		et.begin();
		em.merge(person);
		et.commit();

	}

	public void deletePerson(Person person) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("database");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		et.begin();
		Person p1 = em.merge(person);
		em.remove(p1);
		et.commit();

	}

	public void updateName(String name, Person person) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("database");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		person.setName(name);
		et.begin();
		em.merge(person);
		et.commit();

	}

	public void updateAge(int age, Person person) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("database");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		person.setAge(age);
		et.begin();
		em.merge(person);
		et.commit();
	}

	public void updatePhoneNumber(long phone_no, Person person) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("database");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		person.setPhone_no(phone_no);
		et.begin();
		em.merge(person);
		et.commit();

	}

	public void updateAddress(String address, Person person) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("database");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		person.getDriving().setAddress(address.toUpperCase());
		et.begin();
		em.merge(person);
		et.commit();
	}

	public void updateVehicle(String vehicle, Person person) {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("database");
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();
		person.getDriving().setVehicle_type(vehicle.toUpperCase());
		et.begin();
		em.merge(person);
		et.commit();
	}

}
