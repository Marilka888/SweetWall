package ru.marilka.sweetwall.services;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import ru.marilka.sweetwall.models.SweetPost;
import ru.marilka.sweetwall.models.User;
import ru.marilka.sweetwall.repo.PostRepository;
import ru.marilka.sweetwall.repo.UserRepository;

import java.security.Principal;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class PostService {
    private final PostRepository postRepository;
    private final UserRepository userRepository;

    public List<SweetPost> listPosts (String title){
        if (title != null) return postRepository.findByTitle(title);
        return postRepository.findAll();
    }

    public void savePost(Principal principal, SweetPost sweetPost){
        sweetPost.setUser(getUserByPrincipal(principal));
        log.info("Saving new Post. Title: {}; Author email: {}", sweetPost.getTitle(), sweetPost.getUser().getEmail());
        SweetPost productFromDb = postRepository.save(sweetPost);
        postRepository.save(sweetPost);
        log.info("Saving new {}", sweetPost);
        postRepository.save(sweetPost);
    }
    public User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    public void deletePost(Long id) {
        postRepository.deleteById(id);
    }

    public SweetPost getPostById(Long id) {
        return postRepository.findById(id).orElse(null);
    }
}
