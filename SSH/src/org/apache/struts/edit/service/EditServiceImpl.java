package org.apache.struts.edit.service;

import org.apache.struts.edit.model.Person;

public class EditServiceImpl implements EditService {
	private static Person person ;
	
	private static String [] carModels = {"Ford","Nissan"};
	

	static {
		person = new Person();
		person.setFirstName("Bruce");
		person.setLastName("Phillips");
		person.setEmail("bphillips@ku.edu");
		person.setSport("basketball");
		person.setGender("not sure");
		person.setResidency("KS");
		person.setOver21(true);		
		person.setCarModels( carModels);	
		person.setPhoneNumber("123-456-9999");
	}

	@Override
	public Person getPerson() {
		
		return EditServiceImpl.person;
	}

	@Override
	public void savePerson(Person personBean) {

		EditServiceImpl.person.setFirstName(personBean.getFirstName() );
		EditServiceImpl.person.setLastName(personBean.getLastName() );
		EditServiceImpl.person.setSport(personBean.getSport() );
		EditServiceImpl.person.setGender( personBean.getGender() );
		EditServiceImpl.person.setResidency( personBean.getResidency() );
		EditServiceImpl.person.setOver21( personBean.isOver21() );
		EditServiceImpl.person.setCarModels(personBean.getCarModels() );
		EditServiceImpl.person.setEmail( personBean.getEmail() );
		EditServiceImpl.person.setPhoneNumber( personBean.getPhoneNumber() );
	}

}
