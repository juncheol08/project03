package kr.co.teaspoon.service;

import kr.co.teaspoon.dto.GuestBook;

import java.util.List;

public interface GuestBookService {
    public void writeArticle(GuestBook guestBookDto) throws Exception;
    public void fileRegister(GuestBook guestBookDto) throws Exception;
    public List<GuestBook> guestbookList() throws Exception;
}
