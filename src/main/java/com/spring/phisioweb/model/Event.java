package com.spring.phisioweb.model;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Event {
    
    @Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Long id;
	String text;
	LocalDateTime start;
	LocalDateTime end;
    String resource;

    /********************************Constructors */
    public Event() {

    }

    public Event(Long id) {
        this.id = id;
    }

    public Event(Long id, String text, LocalDateTime start, LocalDateTime end, String resource) {
        this.id = id;
        this.text = text;
        this.start = start;
        this.end = end;
        this.resource = resource;
    }
}
