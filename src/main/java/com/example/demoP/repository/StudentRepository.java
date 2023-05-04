package com.example.demoP.repository;

import org.springframework.data.repository.CrudRepository;

import com.example.demoP.entity.Student;

public interface StudentRepository extends CrudRepository<Student, Integer>{

}
