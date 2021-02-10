package org.bdg.springweb.controller;

import org.bdg.springweb.model.User;
import org.bdg.springweb.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.annotation.RequestScope;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping
public class UserController {
    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/users")
    public String findAll(Model model){
        List<User> users = userService.findAll();
        model.addAttribute("users", users);
        return "user-list";
    }

    @GetMapping("create-user")
    public String createUserForm(){
        return "create-user";
    }


    @RequestMapping(value = "create-user", method = RequestMethod.POST)
    public String createUser(User user){
         userService.saveUser(user);
        return "redirect:/users";
    }

    @GetMapping("/delete-user/{id}")
    public String deleteUser(@PathVariable("id") Long id){
        userService.deleteById(id);
        return "redirect:/users";
    }
    @GetMapping("edit-user/{id}")
    public String editUserForm(@PathVariable("id") Long id, Model model) {
        User user = userService.findById(id);
        model.addAttribute("user", user);
        return "/edit-user";

    }
    @PostMapping("edit-user")
    public String editUser(User user) {
        System.out.println(user.getFirstName());
        userService.saveUser(user);
        return "redirect:/users";
    }
}
