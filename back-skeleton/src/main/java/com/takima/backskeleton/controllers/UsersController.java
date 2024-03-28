package com.takima.backskeleton.controllers;

import com.takima.backskeleton.DTO.StudentDto;
import com.takima.backskeleton.models.Users;
import com.takima.backskeleton.services.UsersService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin
@RequestMapping("users")
@RestController
@RequiredArgsConstructor
public class UsersController {
    private final UsersService usersService;

    @GetMapping("")
    public List<Users> getAllUsers() {
        return usersService.findAll();
    }

    @DeleteMapping("/{id}")
    public void deleteUsers(@PathVariable Long id) {
        usersService.deleteById(id);
    }

    @PostMapping("")
    public void addStudent(@RequestBody Users users) {
        usersService.addUsers(users);
    }
}
