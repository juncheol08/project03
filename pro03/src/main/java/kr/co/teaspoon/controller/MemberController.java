package kr.co.teaspoon.controller;

import kr.co.teaspoon.dto.Board;
import kr.co.teaspoon.dto.Member;
import kr.co.teaspoon.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/member/*")
public class MemberController {
    @Autowired
    private MemberService memberService;

    @Autowired
    HttpSession session;

//    관리자가 볼 수 있는 회원 목록
    @RequestMapping(value = "list.do",method = RequestMethod.GET)
    public String memberList(Model model) throws Exception{
        List<Member> memberList = memberService.memberList();
        model.addAttribute("memberList",memberList);
        return "/member/memberList";
    }

//    관리자가 회원의 상세 정보 보기
    @GetMapping(value = "detail.do")
    public String getMember(@RequestParam String id, Model model) throws Exception{
        Member member = memberService.getMember(id);
        model.addAttribute("member", member);

        return "/member/memberDetail";
    }

    // 로그인한 사용자
    @GetMapping("mypage.do")
    public String mypage(Model model) throws Exception{
        String id = (String) session.getAttribute("sid");
        Member member = memberService.getMember(id);
        model.addAttribute("member", member);

        return "/member/mypage";
    }


    @GetMapping("edit.do")
    public String editForm(Model model) throws Exception{
        String id = (String) session.getAttribute("sid");
        Member member = memberService.getMember(id);
        model.addAttribute("member", member);

        return "/member/memberEdit";
    }

    @PostMapping("edit.do")
    public String memberEdit(Model model) throws Exception {
        String id = (String) session.getAttribute("sid");
        Member member = memberService.getMember(id);

        memberService.memberEdit(member);
        return "redirect:mypage.do";
    }


    @RequestMapping(value = "insert.do", method = RequestMethod.POST)
    public String memberWrite(Member member,Model model) throws Exception{
        return "redirect:/";
    }

    @RequestMapping("login.do")
    public String memberLoginForm(Model model) throws Exception{
        return "/member/loginForm";
    }
}
