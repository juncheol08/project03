package kr.co.teaspoon.dto;

import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Board {
    private int seq;
    private String title;
    private String content;
    private String nickname;
    private String regdate;
    private int visited;
}
