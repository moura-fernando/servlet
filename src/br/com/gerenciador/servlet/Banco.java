package br.com.gerenciador.servlet;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

	private static List<Empresa> lista = new ArrayList<>();
	private static Integer pk = 1;
	
	static {
	        Empresa empresa = new Empresa();
	        empresa.setNome("Skol");
	        empresa.setId(Banco.pk++);
	        Empresa empresa2 = new Empresa();
	        empresa2.setNome("Heineken");
	        empresa2.setId(Banco.pk++);
	        lista.add(empresa);
	        lista.add(empresa2);
	 }
		
	public void adiciona(Empresa empresa) {
		empresa.setId(Banco.pk++);
		Banco.lista.add(empresa);
	}
	
	public List<Empresa> getEmpresas() {
		return Banco.lista;
	}

	public void removeEmpresa(int id) {
		Iterator it = lista.iterator();
		
		while (it.hasNext()) {
			Empresa empresa = (Empresa) it.next();
			if (empresa.getId()==id) {
				it.remove();
			}
		}
		
	}

	public Empresa buscaEmpresa(Integer id) {
		for (Empresa empresa : lista) {
			if (empresa.getId()==id) {
				return empresa;
			}
		}
		return new Empresa();
	}
	
}
