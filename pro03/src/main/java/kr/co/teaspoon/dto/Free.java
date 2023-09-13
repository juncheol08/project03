package kr.co.teaspoon.dto;


import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Free {
    private int bno;
    private String title;
    private String content;
    private String regdate;
    private String id;
    private int visited;
    private int rec;

}
