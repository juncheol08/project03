package kr.co.teaspoon.dto;

import lombok.Data;

@Data
public class Board {
    private int bno;
    private String title;
    private String content;
    private String author;
    private String resdate;
    private int cnt;
    private int lev;
    private int par;
}