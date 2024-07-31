package org.example.controller;

import jakarta.servlet.http.HttpSession;
import lombok.AllArgsConstructor;
import org.example.entity.OrderEntity;
import org.example.entity.ReservationEntity;
import org.example.entity.RestaurantEntity;
import org.example.entity.UserEntity;
import org.example.service.ReservationService;
import org.example.service.RestaurantService;
import org.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@Controller
@AllArgsConstructor
public class BookingTableController {

    @Autowired
    private ReservationService reservationService;
    @Autowired
    private RestaurantService restaurantService;

    @Autowired
    private UserService userService;


    //   @GetMapping("/booking-table")
    //    public String showBookingForm(@RequestParam("id") UUID id, HttpSession session, Model model) {
    //        UserEntity user = (UserEntity) session.getAttribute("loggedInUser");
    //        if (user == null) {
    //            model.addAttribute("message", "Please register or log in to book a table.");
    //            return "redirect:/registration";
    //        }
    //        model.addAttribute("restaurantId", id);
    //        model.addAttribute("reservation", new ReservationEntity());
    //        return "booking-form";
    //    }
    //
    //    @PostMapping(value = "/booking-table")
    //    public String bookTable(@ModelAttribute("reservation") ReservationEntity reservation, @RequestParam("restaurantId") UUID restaurantId, HttpSession session) {
    //        UserEntity user = (UserEntity) session.getAttribute("loggedInUser");
    //        if (user == null) {
    //            return "redirect:/registration";
    //        }
    //        reservation.setUser(user);
    //        RestaurantEntity restaurant = restaurantService.findById(restaurantId);
    //        reservation.setRestaurant(restaurant);
    //
    //        reservationService.save(reservation);
    //        return "redirect:/confirmation";
    //    }
    //@RequestMapping(value = "/booking-table", method = RequestMethod.GET)
    //public String showBookingForm(@RequestParam("id") UUID restaurantId, HttpSession session, Model model) {
    //    UserEntity user = (UserEntity) session.getAttribute("userId");
    //    if (user == null) {
    //        model.addAttribute("message", "Please register or log in to book a table.");
    //        return "redirect:/register";
    //    }
    //    model.addAttribute("restaurantId", restaurantId);
    //    model.addAttribute("reservation", new ReservationEntity());
    //    return "booking-form";
    //}
    //
    //    @RequestMapping("/booking-table")
    //    public String bookTable(@ModelAttribute("reservation") ReservationEntity reservation,
    //                            @RequestParam("restaurantId") UUID restaurantId, HttpSession session) {
    //        UserEntity user = (UserEntity) session.getAttribute("userId");
    //        if (user == null) {
    //            return "redirect:/register";
    //        }
    //        reservation.setUser(user);
    //        RestaurantEntity restaurant = restaurantService.findById(restaurantId);
    //        reservation.setRestaurant(restaurant);
    //
    //        reservationService.save(reservation);
    //        return "redirect:/confirmation"; // Ensure this corresponds to your JSP file name
    //    }

    @RequestMapping(value = "/booking-table", method = RequestMethod.GET)
    public String showBookingForm(@RequestParam("id") UUID restaurantId, HttpSession session, Model model) {
        UUID userId = (UUID) session.getAttribute("userId");
        if (userId == null) {
            model.addAttribute("message", "Please register or log in to book a table.");
            return "404";
        }
        UserEntity user = userService.findById(userId);
        if (user == null) {
            model.addAttribute("message", "User not found.");
            return "404";
        }
        model.addAttribute("restaurantId", restaurantId);
        model.addAttribute("reservation", new ReservationEntity());
        return "booking-form";
    }

    //    @RequestMapping(value = "/booking-table", method = RequestMethod.POST)
    //    public String bookTable(@ModelAttribute("reservation") ReservationEntity reservation,
    //                            @RequestParam("restaurantId") UUID restaurantId, HttpSession session) {
    //        UUID userId = (UUID) session.getAttribute("userId");
    //        if (userId == null) {
    //            return "redirect:/register";
    //        }
    //
    //        UserEntity user = userService.findById(userId);
    //        if (user == null) {
    //            return "redirect:/register";
    //        }
    //
    //        reservation.setUser(user);
    //        RestaurantEntity restaurant = restaurantService.findById(restaurantId);
    //        reservation.setRestaurant(restaurant);
    //
    //        reservationService.save(reservation);
    //        return "main";
    //    }

    @RequestMapping(value = "/booking-table", method = RequestMethod.POST)
    public String bookTable(@ModelAttribute("reservation") ReservationEntity reservation,
                            @RequestParam("restaurantId") UUID restaurantId, HttpSession session) {
        UUID userId = (UUID) session.getAttribute("userId");
        if (userId == null) {
            return "404";
        }
        UserEntity user = userService.findById(userId);
        reservation.setUser(user);
        RestaurantEntity restaurant = restaurantService.findById(restaurantId);
        reservation.setRestaurant(restaurant);
        reservationService.save(reservation);
        return "main";
    }


    @RequestMapping(value = "/show-restaurant-reservation-order", method = RequestMethod.GET)
    public String showRestaurantReservations(HttpSession session, Model model) {
        UUID userId = (UUID) session.getAttribute("userId");
        if (userId == null) {
            return "redirect:/login";
        }

        UserEntity user = userService.findById(userId);
        if (user == null) {
            model.addAttribute("message", "User not found");
            return "404";
        }
        List<ReservationEntity> reservations = reservationService.findReservationsByUser(user);
        model.addAttribute("reservations", reservations);
        return "show-reservation-orders";
    }

    @RequestMapping("/view-own-reservation-restaurant")
    public String showRestaurantOwnOrder(@RequestParam("restaurantId")UUID restaurantId, Model model,HttpSession session){
        UUID userId = (UUID) session.getAttribute("userId");

        if (userId == null) {
            return "redirect:/login";
        }
        List<ReservationEntity> reservations = reservationService.findByRestaurantId(restaurantId);
        model.addAttribute("reservations",reservations);
        return "users-restaurant-reservations";
    }

}
