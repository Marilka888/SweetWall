package ru.marilka.sweetwall.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import ru.marilka.sweetwall.models.SweetPost;
import ru.marilka.sweetwall.services.PostService;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class SweetController {
    private final PostService postService;

    @GetMapping("/")
    public String sweetPost(){
        return "home";
    }

    @PostMapping("/sweetPost/{id}")
    public String sweetPosts (@PathVariable Long id, Model model) {
        model.addAttribute("post", postService.getPostById(id));
        return "sweetPost-info";
    }

    @PostMapping("/sweetPost")
    public String createPost(@RequestParam(name = "title", required = false) String title, SweetPost sweetPost, Principal principal, Model model) {
        model.addAttribute("posts", postService.listPosts(title));
        model.addAttribute("user", postService.getUserByPrincipal(principal));
        postService.savePost(principal,sweetPost);
        return "redirect:/";
    }

    @PostMapping("/sweetPost/delete/{id}")
    public String deleteProduct(@PathVariable Long id) {
        postService.deletePost(id);
        return "redirect:/";
    }
}
