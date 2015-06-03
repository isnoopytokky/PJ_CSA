package csa.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;













import csa.myapp.MD5;
import csa.spring.model.Festivity;
import csa.spring.model.Member;
import csa.spring.model.StatusNo;
import csa.spring.service.FestivityService;
import csa.spring.service.MemberService;
import csa.spring.service.StatusNoService;



@Controller
public class MainController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	FestivityService festivityService;
	
	@Autowired
	StatusNoService statusnoService;
	
	MD5 md5=new MD5();
	
	@RequestMapping("/edit_profile")//แก้ไขข้อมูลส่วนตัว
	public ModelAndView member(Map<String, Object> map) {
		Member member = new Member();//ส่งค่าโมเดลไป
		map.put("member", member);
		map.put("adminlist",memberService.getAdmin()); //ตัวแปรadminlistส่งไปหน้าjspedit_profile
		
		ModelAndView model = new ModelAndView("/csa/admin/edit_profile");
		return model;
	}
	
	@RequestMapping("/")
	public ModelAndView home(Map<String, Object> map) {
		Member member = new Member();//ส่งค่าโมเดลไป
		map.put("member", member);
		ModelAndView model = new ModelAndView("index");
		return model;
		
	}
	
	@RequestMapping("/index")
	public ModelAndView index(Map<String, Object> map) {
		Member member = new Member();
		map.put("member", member);//ส่งค่าไปใช้ commandName
		ModelAndView model = new ModelAndView("index");
		return model;
		
	}
	
	
	@RequestMapping("/news")///ข่าวประกาศ
	public ModelAndView news() {
		ModelAndView model = new ModelAndView("news");
		return model;
	}
	
	@RequestMapping("/home_report")///หน้ารายงานผล
	public ModelAndView homereport() {
		ModelAndView model = new ModelAndView("home_report");
		return model;
	}
	
	@RequestMapping("/about")///หน้าเกี่ยวกับเรา
	public ModelAndView abouthome() {
		ModelAndView model = new ModelAndView("about");
		return model;
	}
	
	
	
	///////////////////////////mapหน้าadmin//////////////////////////////
	
	@RequestMapping("/setlist")///ตั้งค่า
	public ModelAndView setlist() {
		ModelAndView model = new ModelAndView("/csa/admin/setlist");
		return model;
	}
	
	@RequestMapping("/user")/////หน้าสมาชิก
	public ModelAndView user(){
		ModelAndView model = new ModelAndView("/csa/admin/user");
		return model;
	}
	
	@RequestMapping("/festivity")///งานงาโค
	public ModelAndView festivity(Map<String, Object> map) {
		Festivity festivity = new Festivity();//ส่งค่าโมเดลไป
		map.put("festivity", festivity);
		map.put("festivitylist",festivityService.getAdmin1());
		
		ModelAndView model = new ModelAndView("/csa/admin/festivity");
		return model;
	}
	
	@RequestMapping("/index_admin")///หน้าโฮมแอดมิน
	public ModelAndView ind(){
		ModelAndView model = new ModelAndView("/csa/admin/index_admin");
		return model;
	}
	
	@RequestMapping("/admin_viewcowsh")////หน้าตารางโคประกวด
	public ModelAndView avish(){
		ModelAndView model = new ModelAndView("/csa/admin/admin_viewcowsh");
		return model;
	}
	

	@RequestMapping("/admin_viewcow2")////หน้าตารางโคพันธุ์
	public ModelAndView avis(){
		ModelAndView model = new ModelAndView("/csa/admin/admin_viewcow2");
		return model;
	}
	
	@RequestMapping("/admin_viewcow3")////หน้าตารางโคขุน
	public ModelAndView avise(){
		ModelAndView model = new ModelAndView("/csa/admin/admin_viewcow3");
		return model;
	}
	
	@RequestMapping("/report")////หน้าออกรายงาน
	public ModelAndView avisea(){
		ModelAndView model = new ModelAndView("/csa/admin/report");
		return model;
	}
	
	@RequestMapping("/addfes_sh")////นำโคประกวดเข้าร่วมงาน
	public ModelAndView addfes(){
		ModelAndView model = new ModelAndView("/csa/admin/addfes_sh");
		return model;
	}
	
	@RequestMapping("/newfestivity")////เพิ่มงานโค
	public ModelAndView newfestivity(){
		ModelAndView model = new ModelAndView("/csa/admin/newfestivity");
		return model;
	}
	
	
	@RequestMapping(value="register",method=RequestMethod.POST)
	public String reg(@ModelAttribute Member member, BindingResult result, Map<String, Object>map) {
		Member memberResult=new Member();
		String newpass = md5.getMD5(member.getPass());
		member.setPass(newpass);
		memberService.add(member);
		memberResult=member;
		map.put("member", memberResult);
		return "redirect:festivity";
	}
	
	@ResponseBody
	@RequestMapping(value="checkuser")
	public String check(@RequestParam("username") String username) {
		 int n=memberService.getchkuser(username).size();
		 String mseeage="yes";
		 if (n>0){
			 mseeage="no"; 
		 }
		 return mseeage;
	}

}
