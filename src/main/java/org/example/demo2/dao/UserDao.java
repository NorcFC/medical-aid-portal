package org.example.demo2.dao;

import org.example.demo2.model.User;
import org.example.demo2.util.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
    public User findByEmailAndPassword(String email, String passwordPlain) throws Exception {
        // TEMP: compare plain text (replace with BCrypt later)
        String sql = "SELECT id, email, full_name, role, password_hash FROM users WHERE email = ?";
        try (Connection c = DB.get();
             PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setString(1, email);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    String stored = rs.getString("password_hash");
                    if (stored.equals(passwordPlain)) {
                        User u = new User();
                        u.setId(rs.getLong("id"));
                        u.setEmail(rs.getString("email"));
                        u.setFullName(rs.getString("full_name"));
                        u.setRole(rs.getString("role"));
                        return u;
                    }
                }
                return null;
            }
        }
    }
}
