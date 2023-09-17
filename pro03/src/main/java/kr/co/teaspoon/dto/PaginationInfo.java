package kr.co.teaspoon.dto;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class PaginationInfo {
    private int currentPage;       // 현재 페이지 번호
    private int perPageCount;      // 페이지당 게시물 수
    private int totalPageCount;    // 전체 페이지 수
    private int totalBoardCount;   // 전체 게시물 수
    private int startPage;         // 시작 페이지 번호 (페이징 바에서 표시되는)
    private int endPage;           // 끝 페이지 번호 (페이징 바에서 표시되는)

}
