package ru.marilka.sweetwall.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.marilka.sweetwall.models.SweetPost;

import java.util.List;

public interface PostRepository extends JpaRepository<SweetPost, Long> {
    List <SweetPost> findByTitle(String title);
    //ТУТ БУДУТ ОПЕРАЦИИ С ЛИСТОМ ПОСТОВ
}
