package ru.simple.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.simple.domain.User;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUserName(String userName);
}
