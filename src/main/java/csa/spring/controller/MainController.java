package csa.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	@RequestMapping("/edit_profile")//เน�เธ�เน�เน�เธ�เธ�เน�เธญเธกเธนเธฅเธชเน�เธงเธ�เธ•เธฑเธง
	public ModelAndView member(Map<String, Object> map) {
		Member member = new Member();//เธชเน�เธ�เธ�เน�เธฒเน�เธกเน€เธ”เธฅเน�เธ�
		map.put("member", member);
		map.put("adminlist",memberService.getAdmin()); //เธ•เธฑเธงเน�เธ�เธฃadminlistเธชเน�เธ�เน�เธ�เธซเธ�เน�เธฒjspedit_profile
		
		ModelAndView model = new ModelAndView("/csa/admin/edit_profile");
		return model;
	}
	
	@RequestMapping("/")
	public ModelAndView home(Map<String, Object> map) {
		Member member = new Member();//เธชเน�เธ�เธ�เน�เธฒเน�เธกเน€เธ”เธฅเน�เธ�
		map.put("member", member);
		ModelAndView model = new ModelAndView("index");
		return model;
		
	}
	
	@RequestMapping("/index")
	public ModelAndView index(Map<String, Object> map) {
		Member member = new Member();
		map.put("member", member);//เธชเน�เธ�เธ�เน�เธฒเน�เธ�เน�เธ�เน� commandName
		ModelAndView model = new ModelAndView("index");
		return model;
		
	}
	
	
	@RequestMapping("/news")///เธ�เน�เธฒเธงเธ�เธฃเธฐเธ�เธฒเธจ
	public ModelAndView news() {
		ModelAndView model = new ModelAndView("news");
		return model;
	}
	
	@RequestMapping("/home_report")///เธซเธ�เน�เธฒเธฃเธฒเธขเธ�เธฒเธ�เธ�เธฅ
	public ModelAndView homereport() {
		ModelAndView model = new ModelAndView("home_report");
		return model;
	}
	
	@RequestMapping("/about")///เธซเธ�เน�เธฒเน€เธ�เธตเน�เธขเธงเธ�เธฑเธ�เน€เธฃเธฒ
	public ModelAndView abouthome() {
		ModelAndView model = new ModelAndView("about");
		return model;
	}
	
	
	
	///////////////////////////mapเธซเธ�เน�เธฒadmin//////////////////////////////
	
	@RequestMapping("/setlist")///เธ•เธฑเน�เธ�เธ�เน�เธฒ
	public ModelAndView setlist() {
		ModelAndView model = new ModelAndView("/csa/admin/setlist");
		return model;
	}
	
	// Begin user menu 
	@RequestMapping("/user")/////เธซเธ�เน�เธฒเธชเธกเธฒเธ�เธดเธ�
	public ModelAndView user(Map<String, Object> map){
		
		Member member = new Member();//เธชเน�เธ�เธ�เน�เธฒเน�เธกเน€เธ”เธฅเน�เธ�
		map.put("member", member);
		map.put("memberlist",memberService.getAllMember());
		
		
		Map<String,String> statusNoList = new HashMap<String, String>();		
		List statusNoResult;
		statusNoResult = statusnoService.getAllStatusNo();		
		for(int i = 0;i<statusNoResult.size();i++)
		{	
			StatusNo statusNo =  (StatusNo) statusNoResult.get(i);
			statusNoList.put(statusNo.getIdstatusNo().toString(), statusNo.getStatusName());
		}	
		map.put("statusNoList",statusNoList);
		
		ModelAndView model = new ModelAndView("/csa/admin/user");
		return model;
	}
	
	
	
	// End user menu
	
	@RequestMapping("/festivity")///เธ�เธฒเธ�เธ�เธฒเน�เธ�
	public ModelAndView festivity(Map<String, Object> map) {
		Festivity festivity = new Festivity();//เธชเน�เธ�เธ�เน�เธฒเน�เธกเน€เธ”เธฅเน�เธ�
		map.put("festivity", festivity);
		map.put("festivitylist",festivityService.getAdmin1());
		
		ModelAndView model = new ModelAndView("/csa/admin/festivity");
		return model;
	}
	
	
	
	@RequestMapping("/admin_viewcowsh")////เธซเธ�เน�เธฒเธ•เธฒเธฃเธฒเธ�เน�เธ�เธ�เธฃเธฐเธ�เธงเธ”
	public ModelAndView avish(){
		ModelAndView model = new ModelAndView("/csa/admin/admin_viewcowsh");
		return model;
	}
	

	@RequestMapping("/admin_viewcow2")////เธซเธ�เน�เธฒเธ•เธฒเธฃเธฒเธ�เน�เธ�เธ�เธฑเธ�เธ�เธธเน�
	public ModelAndView avis(){
		ModelAndView model = new ModelAndView("/csa/admin/admin_viewcow2");
		return model;
	}
	
	@RequestMapping("/admin_viewcow3")////เธซเธ�เน�เธฒเธ•เธฒเธฃเธฒเธ�เน�เธ�เธ�เธธเธ�
	public ModelAndView avise(){
		ModelAndView model = new ModelAndView("/csa/admin/admin_viewcow3");
		return model;
	}
	
	@RequestMapping("/report")////เธซเธ�เน�เธฒเธญเธญเธ�เธฃเธฒเธขเธ�เธฒเธ�
	public ModelAndView avisea(){
		ModelAndView model = new ModelAndView("/csa/admin/report");
		return model;
	}
	
	@RequestMapping("/addfes_sh")////เธ�เธณเน�เธ�เธ�เธฃเธฐเธ�เธงเธ”เน€เธ�เน�เธฒเธฃเน�เธงเธกเธ�เธฒเธ�
	public ModelAndView addfes(){
		ModelAndView model = new ModelAndView("/csa/admin/addfes_sh");
		return model;
	}
	
	@RequestMapping("/newfestivity")////เน€เธ�เธดเน�เธกเธ�เธฒเธ�เน�เธ�
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
		 String message="yes";
		 if (n>0){
			 message="no"; 
		 }
		 return message;
	}
	


	//test method
	@RequestMapping("/admin")///เธซเธ�เน�เธฒเน�เธฎเธกเน�เธญเธ”เธกเธดเธ�
	public ModelAndView admin(HttpServletRequest request){
		if(request.getAttribute("auth")==null){
			ModelAndView model = new ModelAndView("/csa/admin/index_admin");
			return model;
		}
		else{
			ModelAndView model = new ModelAndView("/csa/admin/report");
			return model;
		}
	}
	
	@RequestMapping("/logout")///ออกจากระบบ
	public String logout(HttpServletRequest request){		
			request.removeAttribute("auth");
			return "redirect:index";
	}
	
	@RequestMapping("/login")
	public String login(HttpSession session,@RequestParam("username") String username,@RequestParam("password") String password) {
		String link="index";
		String newpass = md5.getMD5(password);
		List userlist = memberService.login(username, newpass);
		
		int count = userlist.size();		 
		 if (count>0)
		 {
			Member checklogin = (Member)userlist.get(0);
			int auth = checklogin.getStatusNo().getIdstatusNo();
			if(auth==1){
				link="index_admin";
				session.setAttribute("status", checklogin.getStatusNo());
				session.setAttribute("name", checklogin.getName());
			}
			if(auth==2){
				link="index_official";
				session.setAttribute("status", checklogin.getStatusNo());
				session.setAttribute("name", checklogin.getName());
			}
			if(auth==3){
				link="index_member";
				session.setAttribute("status", checklogin.getStatusNo());
				session.setAttribute("name", checklogin.getName());
			}
			if(auth==4){
				link="ban";
				session.setAttribute("status", checklogin.getStatusNo());
				session.setAttribute("name", checklogin.getName());
			}
			if(auth==5){
				link="pending";
				session.setAttribute("status", checklogin.getStatusNo());
				session.setAttribute("name", checklogin.getName());
			}
			
		}
		
		 return "redirect:"+link;	
		
		
		 	 
	}
	
	@RequestMapping("/index_admin")
	public ModelAndView index_admin(){
		ModelAndView model = new ModelAndView("/csa/admin/index_admin");
		return model;
	}
	
	@RequestMapping("/ban")
	public ModelAndView ban(){
		ModelAndView model = new ModelAndView("ban");
		return model;
	}
	@RequestMapping("/pending")
	public ModelAndView pending(){
		ModelAndView model = new ModelAndView("pending");
		return model;
	}
	
	
}
