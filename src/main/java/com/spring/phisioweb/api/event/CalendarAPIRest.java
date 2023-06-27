package com.spring.phisioweb.api.event;

import java.time.LocalDateTime;

import javax.transaction.Transactional;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import com.spring.phisioweb.model.Event;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CalendarAPIRest {
    
    @Autowired
    CalendarRepository eventRepo;

    @GetMapping("/api/events")
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    Iterable<Event> events(@RequestParam @DateTimeFormat(iso = ISO.DATE_TIME) LocalDateTime start, @RequestParam @DateTimeFormat(iso = ISO.DATE_TIME) LocalDateTime end) {
        Iterable<Event> listEvents = eventRepo.findBetween(start, end);
        return listEvents;
    }

    @PostMapping("/api/events/create")
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    @Transactional
    Event createEvent(@RequestBody EventCreateParams params) {
        Event eventToReturn;
        Event event = new Event();
        event.setStart(params.start);
        event.setEnd(params.start.plusMinutes(params.servDuration));
        event.setText(params.text);
        event.setResource(params.resource);
        event.setServDuration(params.servDuration);
        event.setBookingTime(LocalDateTime.now());              //Save booking time
        if(eventIsOK(event)) {
            eventRepo.save(event);
            eventToReturn = event;
        }else {
            eventToReturn = null;
        }

        return eventToReturn;
    }

    @PostMapping("/api/events/delete")
    @JsonSerialize(using = LocalDateTimeSerializer.class)
    @Transactional
    EventDeleteResponse deleteEvent(@RequestBody EventDeleteParams params) {
        EventDeleteResponse eventResponse;
        //Check if event exist in the database
        if(eventRepo.existsById(params.id)) {
            eventRepo.deleteById(params.id);
            eventResponse = new EventDeleteResponse() {{
                message = "Event deleted";
            }};
        }else {
            eventResponse = null;
        }

        return eventResponse;
    }

    //Method to check mandatory Event fields before saving to DB
    public Boolean eventIsOK(Event event) {
        Boolean eventOK = false;
        if((event.getStart() == null) || (event.getEnd() == null) || (event.getText() == null) ||
            (event.getServDuration() == null) || (event.getBookingTime() == null)) {
            eventOK = false;
        }else {
            eventOK = true;
        }

        return eventOK;
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
