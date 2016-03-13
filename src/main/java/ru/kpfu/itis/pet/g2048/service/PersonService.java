package ru.kpfu.itis.pet.g2048.service;

import java.util.List;

import ru.kpfu.itis.pet.g2048.model.Person;

public interface PersonService {

	public void addPerson(Person p);
	public void updatePerson(Person p);
	public List<Person> listPersons();
	public Person getPersonById(int id);
	public void removePerson(int id);
	
}
