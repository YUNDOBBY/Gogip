
package com.Gogip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class MainController {
@RequestMapping("/post_page.do")
public String post_page() {
	return "post_page";
}
@RequestMapping("/comment_page.do")
public String comment_page() {
	return "comment_page";
}
@RequestMapping("/member_page.do")
public String member_page() {
	return "member_page";
}
@RequestMapping("/company_page.do")
public String company_page() {
	return "company_page";
}
@RequestMapping("/report_page.do")
public String etc_page() {
	return "report_page";
}
}
