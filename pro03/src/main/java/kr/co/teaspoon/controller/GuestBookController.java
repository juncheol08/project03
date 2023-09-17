package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.FileInfo;
import kr.co.teaspoon.dto.GuestBook;
import kr.co.teaspoon.dto.Member;
import kr.co.teaspoon.service.FileInfoService;
import kr.co.teaspoon.service.GuestBookService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
@RequestMapping("/guestbook/*")
public class GuestBookController {

    @Resource(name="uploadPath")
    String uploadPath;

    @Autowired
    HttpSession session;

    @Autowired
    private GuestBookService guestBookService;
    @Autowired
    private FileInfoService fileInfoService;


    @GetMapping("list.do")		//board/list.do
    public String getBoardList(Model model) throws Exception {
        List<GuestBook> boardList = guestBookService.fileList();
        model.addAttribute("boardList", boardList);
        return "/guestbook/guestBookList";
    }

    @GetMapping("detail.do")	//board/detail.do?seq=1
    public String getBoardDetail(HttpServletRequest request, Model model) throws Exception {
        int articleno = Integer.parseInt(request.getParameter("articleno"));
        GuestBook dto = guestBookService.fileDetail(articleno);
        FileInfo dto2 = fileInfoService.fileInfoDetail(articleno);
        model.addAttribute("dto", dto);
        model.addAttribute("dto2",dto2);
        return "/guestbook/guestBookDetail";
    }

    @RequestMapping(value = "insert.do", method = RequestMethod.GET)
    public String write() {
        return "/guestbook/guestBookInsert";
    }

    @RequestMapping(value = "insert.do", method = RequestMethod.POST)
    public String write(GuestBook guestBookDto, @RequestParam("upfile") MultipartFile[] files, Model model, HttpServletRequest req) throws IllegalStateException, IOException {
//        Member member = (Member) session.getAttribute("member");
        String id = (String) session.getAttribute("sid");
        if (id != null) {
            //String realPath = req.getRealPath("/pro3_war/resources/upload");
            String realPath = req.getSession().getServletContext().getRealPath("/resources/upload/");
            System.out.println("path : " + realPath);
            String today = new SimpleDateFormat("yyMMdd").format(new Date());
            String saveFolder = realPath + today;
            System.out.println(saveFolder);
            File folder = new File(saveFolder);
            if(!folder.exists())
                folder.mkdirs();
            List<FileInfo> fileInfos = new ArrayList<FileInfo>();
            for (MultipartFile mfile : files) {
                FileInfo fileInfoDto = new FileInfo();
                String originalFileName = mfile.getOriginalFilename();
                if (!originalFileName.isEmpty()) {
                    String saveFileName = UUID.randomUUID().toString() + originalFileName.substring(originalFileName.lastIndexOf('.'));
                    fileInfoDto.setSaveFolder(today);
                    fileInfoDto.setOriginFile(originalFileName);
                    fileInfoDto.setSaveFile(saveFileName);
                    System.out.println(mfile.getOriginalFilename() + "   " + saveFileName);
                    mfile.transferTo(new File(folder, saveFileName));
                }
                fileInfos.add(fileInfoDto);
            }
            guestBookDto.setFileInfos(fileInfos);
            guestBookDto.setUserid(id);
            try {
                guestBookService.writeArticle(guestBookDto);
                List<GuestBook> boardList = guestBookService.fileList();
                model.addAttribute("boardList", boardList);
                System.out.println("writeArticle success");
                return "/guestbook/guestBookList";
            } catch (Exception e) {
                e.printStackTrace();
                model.addAttribute("msg", "글 작성중 문제가 발생했습니다.");
                return "/error/error";
            }
        } else {
            model.addAttribute("msg", "로그인 후 사용 가능한 페이지입니다.");
            return "/error/error";
        }
    }

    @RequestMapping(value="/download", method=RequestMethod.GET)
    public ModelAndView downloadFile(@RequestParam("sfolder") String sfolder, @RequestParam("ofile") String ofile,
                                     @RequestParam("sfile") String sfile, HttpSession session) {
        Member member = (Member) session.getAttribute("userinfo");
        if(member != null) {
            Map<String, Object> fileInfo = new HashMap<String, Object>();
            fileInfo.put("sfolder", sfolder);
            fileInfo.put("ofile", ofile);
            fileInfo.put("sfile", sfile);
            System.out.println(sfolder + " " + ofile + " " + sfile);
            return new ModelAndView("fileDownLoadView", "downloadFile", fileInfo);
        } else {
            return new ModelAndView("redirect:/");
        }
    }


}