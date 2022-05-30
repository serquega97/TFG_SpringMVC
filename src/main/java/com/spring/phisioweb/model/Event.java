package com.spring.phisioweb.model;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.data.relational.core.mapping.Table;


@Entity
@Table
public class Event {
    
    @Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Long id;
    String text;
    LocalDateTime start;
    LocalDateTime end;
    String resource;
    Integer servDuration;
    LocalDateTime bookingTime;

    /*****************Class constructors*************/
    public Event() {

    }

    public Event(Long id) {
        this.id = id;
    }

    public Event(Long id, String text, LocalDateTime start, LocalDateTime end, String resource, Integer duration, LocalDateTime bookingTime) {
        this.id = id;
        this.text = text;
        this.start = start;
        this.end = end;
        this.resource = resource;
        this.servDuration = duration;
        this.bookingTime = bookingTime;
    }

    /*****************Getter's & setter's*************/
    public Long getId() {
        return this.id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getText() {
        return this.text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public LocalDateTime getStart() {
        return this.start;
    }

    public void setStart(LocalDateTime start) {
        this.start = start;
    }

    public LocalDateTime getEnd() {
        return this.end;
    }

    public void setEnd(LocalDateTime end) {
        this.end = end;
    }

    public String getResource() {
        return this.resource;
    }

    public void setResource(String resource) {
        this.resource = resource;
    }

    public Integer getServDuration() {
        return this.servDuration;
    }

    public void setServDuration(Integer servDuration) {
        this.servDuration = servDuration;
    }

    public LocalDateTime getBookingTime() {
        return this.bookingTime;
    }

    public void setBookingTime(LocalDateTime bookingTime) {
        this.bookingTime = bookingTime;
    }
}
