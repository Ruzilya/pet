package ru.kpfu.itis.pet.g2048.dao;

import java.util.List;

import ru.kpfu.itis.pet.g2048.model.Person;

public interface PersonDAO {

	public void addPerson(Person p);
	public void updatePerson(Person p);
	public List<Person> listPersons();
	public Person getPersonById(int id);
	public void removePerson(int id);
}