package ru.simple.repository;

import org.springframework.data.repository.CrudRepository;
import ru.simple.domain.Message;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {

    List<Message> findByTag(String tag);

}
