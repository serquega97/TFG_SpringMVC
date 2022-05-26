package com.spring.phisioweb.api.event;

import java.time.LocalDateTime;

import javax.transaction.Transactional;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import com.spring.phisioweb.model.Event;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CalendarAPIRest {
    
    @Autowired
    EventRepository eventRepo;

    @GetMapping("/api/events")
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    Iterable<Event> events(@RequestParam("start") @DateTimeFormat(iso = ISO.DATE_TIME) LocalDateTime start, @RequestParam("end") @DateTimeFormat(iso = ISO.DATE_TIME) LocalDateTime end) {
        ResponseEntity<Iterable<Event>> response = loadEvents(start, end);
        if(response.getStatusCode() == HttpStatus.OK) {
            Iterable<Event> listEvent = response.getBody();
            return listEvent;
        }else {
            return null;
        }
    }

    @PostMapping("/api/events/create")
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    @Transactional
    Event createEvent(@RequestBody EventCreateParams params) {
        Event event = new Event();
        event.setStart(params.start);
        event.setEnd(params.start.plusMinutes(params.servDuration));
        event.setText(params.text);
        event.setResource(params.resource);
        event.setServDuration(params.servDuration);
        event.setBookingTime(LocalDateTime.now());              //Save booking time
        ResponseEntity<Boolean> response = checkEvent(event);
        if(response.getStatusCode() == HttpStatus.OK) {
            eventRepo.save(event);
            return event;
        }else {
            return null;
        }
    }

    @PostMapping("/api/events/delete")
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    @Transactional
    EventDeleteResponse deleteEvent(@RequestBody EventDeleteParams params) {
        ResponseEntity<Boolean> response = eventExists(params.id);
        if(response.getStatusCode() == HttpStatus.OK) {
            eventRepo.deleteById(params.id);
            return new EventDeleteResponse() {{
                message = "Event deleted";
            }};
        }else {
            return null;
        }
    }

    public ResponseEntity<Iterable<Event>> loadEvents(LocalDateTime start, LocalDateTime end) {
        Iterable<Event> listEvents = eventRepo.findBetween(start, end);
        if(listEvents == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }else {
            return ResponseEntity.status(HttpStatus.OK).body(listEvents);
        }
    }

    public ResponseEntity<Boolean> checkEvent(Event event) {
        if(eventIsOK(event)) {
            return ResponseEntity.status(HttpStatus.OK).body(true);
        }else {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).build();
        }
    }

    //Method to check mandatory Event fields before saving to DB
    public Boolean eventIsOK(Event event) {
        if(event.getStart() == null) return false;
        if(event.getEnd() == null) return false;
        if(event.getText() == null) return false;
        if(event.getServDuration() == null) return false;
        if(event.getBookingTime() == null) return false;
        return true;
    }

    //Check if an event exist in the DB
    public ResponseEntity<Boolean> eventExists(Long id) {
        if(!eventRepo.existsById(id)) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }else {
            return ResponseEntity.status(HttpStatus.OK).body(true);
        }
    }

    public static class EventCreateParams {

        public LocalDateTime start;
        public LocalDateTime end;
        public String text;
        public String resource;
        public Integer servDuration;
    }

    public static class EventDeleteParams {

        public Long id;
    }

    public static class EventDeleteResponse {

        public String message;
    }
}
