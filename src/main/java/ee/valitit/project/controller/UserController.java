package ee.valitit.project.controller;

import ee.valitit.project.domain.User;
import ee.valitit.project.exception.UserException;
import ee.valitit.project.exception.UserExceptionsResponse;
import ee.valitit.project.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@AllArgsConstructor
@RestController
@RequestMapping("/users")
public class UserController {

    private UserService userService;

    @GetMapping({"/", ""})
    public List<User> getUsers() {
        return userService.getUsersList();
    }

    @GetMapping("/{userId}")
    public ResponseEntity<?> getUser(@PathVariable String userId) throws UserException {
        return new ResponseEntity<>(userService.getUser(userId), HttpStatus.OK);
    }

    @DeleteMapping({"/", ""})
    public ResponseEntity<?> deleteCompany(@RequestBody User user) {
        ResponseEntity<?> responseEntity;
        if (user != null && user.getId() != null) {
            if (userService.isUserExistsById(user.getId())) {
                userService.deleteUser(user.getId());
                responseEntity = new ResponseEntity<>("User deleted!", HttpStatus.OK);
            } else {
                responseEntity = new ResponseEntity<>("User with id " + user.getId() + " not found!", HttpStatus.NOT_FOUND);
            }
        } else {
            responseEntity = new ResponseEntity<>("User or id can't be null!", HttpStatus.BAD_REQUEST);
        }
        return responseEntity;
    }

    @DeleteMapping({"/{userId}"})
    public ResponseEntity<?> deleteCompanyById(@PathVariable Long userId) {
        ResponseEntity<?> responseEntity;
        if (userId != null && userService.isUserExistsById(userId)) {
          userService.deleteUser(userId);
          responseEntity = new ResponseEntity<>("User deleted!", HttpStatus.OK);
        } else {
            responseEntity = new ResponseEntity<>("User with id " + userId + " not found!", HttpStatus.NOT_FOUND);
        }
        return responseEntity;
    }






}
