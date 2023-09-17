package kr.co.teaspoon.service;

import kr.co.teaspoon.dao.NoticeDAO;
import kr.co.teaspoon.dto.Notice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class NoticeServiceImpl implements NoticeService {

    @Autowired
    private NoticeDAO noticeDAO;

    @Override
    public List<Notice> noticeList() throws Exception {
        return noticeDAO.noticeList();
    }

    @Override
    public Notice noticeDetail(int seq) throws Exception {
        return noticeDAO.noticeDetail(seq);
    }

    @Override
    public void noticeInsert(Notice dto) throws Exception {
        noticeDAO.noticeInsert(dto);
    }

    @Override
    public void noticeDelete(int seq) throws Exception {
        noticeDAO.noticeDelete(seq);
    }

    @Override
    public void noticeEdit(Notice dto) throws Exception {
        noticeDAO.noticeEdit(dto);
    }
}
