package com.spring.phisioweb.api.event;

import java.time.LocalDateTime;
import java.util.List;

import com.spring.phisioweb.model.Event;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

public interface CalendarRepository  extends CrudRepository<Event, Long>{
    
    @Query("from Event e where not(e.end < :from or e.start > :to)")
    public List<Event> findBetween(@Param("from") @DateTimeFormat(iso = ISO.DATE_TIME) LocalDateTime start, @Param("to") @DateTimeFormat(iso = ISO.DATE_TIME) LocalDateTime end);
}
