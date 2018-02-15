package br.com.casadocodigo.loja.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Repository;

import br.com.casadocodigo.loja.models.Usuario;

@Repository
public class UsuarioDAO implements UserDetailsService {
	@PersistenceContext
	private EntityManager manager;
	

	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		List<Usuario> usuarios= manager.createQuery
				("select u from Usuario u where u.email = :email", Usuario.class)
				.setParameter("email", email)
				.getResultList();
		

	    if(usuarios.isEmpty()){
	        throw new RuntimeException("O usuário "+ email +" não foi encontrado");
	    }

	    return usuarios.get(0);
	}

}
