package ru.marilka.sweetwall.models;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    ROLE_USER, ROLE_ADMIN;

    @Override
    public String getAuthority() {//возвращает роли в строковом виде
        return name();
    }
}
