package ru.marilka.sweetwall.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.marilka.sweetwall.models.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
