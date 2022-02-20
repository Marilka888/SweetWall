package ru.marilka.sweetwall.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.marilka.sweetwall.models.User;
import ru.marilka.sweetwall.services.UserService;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }


    @PostMapping("/registration")
    public String createUser(User user, Model model, String err) {
        if (!userService.createUser(user)) {
            model.addAttribute("errorMessage", "Пользователь с таким email уже существует");
            return "registration";
        }
        return "redirect:/login";
    }

    @GetMapping("/thanks")
    public String securityUrl() {
        return "thanks";
    }

}
