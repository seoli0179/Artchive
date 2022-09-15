package com.spring_boot_final.project.dao;

import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
public interface IAitemsDAO {
    ArrayList<String> selectItems(int num);
}
