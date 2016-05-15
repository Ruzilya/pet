package ru.kpfu.itis.pet.g2048.service;

public interface SecurityService {
    String findLoggedInUsername();

    void autologin(String username, String password);
}
