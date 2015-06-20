package csa.spring.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

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
import csa.spring.model.CattleDetails;
import csa.spring.model.ColorType;
import csa.spring.model.Festivity;
import csa.spring.model.GenType;
import csa.spring.model.Member;
import csa.spring.model.StatusNo;
import csa.spring.model.Type;
import csa.spring.service.ColorTypeService;
import csa.spring.service.FestivityService;
import csa.spring.service.GenTypeService;
import csa.spring.service.MemberService;
import csa.spring.service.StatusNoService;
import csa.spring.service.TypeService;



@Controller
public class MainController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	FestivityService festivityService;
	
	@Autowired
	StatusNoService statusnoService;
	
	@Autowired
	TypeService typeService;
	
	@Autowired
	ColorTypeService colorTypeService;
	
	@Autowired
	GenTypeService genTypeService;
	
	
	MD5 md5=new MD5();
	
	@RequestMapping("/edit_profile")//เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�เธ�เน€เธ�เธ�เน€เธ�เธ…เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�โ€ขเน€เธ�เธ‘เน€เธ�เธ�
	public ModelAndView member(Map<String, Object> map) {
		Member member = new Member();//เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�โ�ฌเน€เธ�โ€�เน€เธ�เธ…เน€เธ�๏ฟฝเน€เธ�๏ฟฝ
		map.put("member", member);
		map.put("adminlist",memberService.getAdmin()); //เน€เธ�โ€ขเน€เธ�เธ‘เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ�adminlistเน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’jspedit_profile
		
		ModelAndView model = new ModelAndView("/csa/admin/edit_profile");
		return model;
	}
	
	@RequestMapping("/")
	public ModelAndView home(Map<String, Object> map) {
		Member member = new Member();//เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�โ�ฌเน€เธ�โ€�เน€เธ�เธ…เน€เธ�๏ฟฝเน€เธ�๏ฟฝ
		map.put("member", member);
		ModelAndView model = new ModelAndView("index");
		return model;
		
	}
	
	@RequestMapping("/index")
	public ModelAndView index(Map<String, Object> map) {
		Member member = new Member();
		map.put("member", member);//เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝ commandName
		ModelAndView model = new ModelAndView("index");
		return model;
		
	}
	
	
	@RequestMapping("/news")///เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�เธ�
	public ModelAndView news() {
		ModelAndView model = new ModelAndView("news");
		return model;
	}
	
	@RequestMapping("/home_report")///เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�เธ�เน€เธ�เธ’เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ…
	public ModelAndView homereport() {
		ModelAndView model = new ModelAndView("home_report");
		return model;
	}
	
	@RequestMapping("/about")///เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�โ�ฌเน€เธ�๏ฟฝเน€เธ�เธ•เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�เธ‘เน€เธ�๏ฟฝเน€เธ�โ�ฌเน€เธ�เธ�เน€เธ�เธ’
	public ModelAndView abouthome() {
		ModelAndView model = new ModelAndView("about");
		return model;
	}
	
	
	
	///////////////////////////mapเน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’admin//////////////////////////////
	
	@RequestMapping("/setlist")///เน€เธ�โ€ขเน€เธ�เธ‘เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’
	public ModelAndView setlist(Map<String, Object> map) {
		
		ColorType colorType = new ColorType();
		map.put("colorType", colorType);
		map.put("colortypelist",colorTypeService.getAllColorType());
		
		GenType genType = new GenType();
		map.put("genType", genType);
		map.put("genTypelist",genTypeService.getAllGenType());
		
		
		ModelAndView model = new ModelAndView("/csa/admin/setlist");
		return model;
	}
	
	@RequestMapping(value="/api/addGen",method=RequestMethod.POST)
	@ResponseBody
	public String addGen(HttpSession session,@ModelAttribute GenType genType) {				
		genTypeService.add(genType);			
		return "success";
	}
	@RequestMapping(value = "/api/deleteGen", method = RequestMethod.POST) 
	@ResponseBody  
	public  String deleteGen(@RequestParam("id") Integer id) 
	{	
		genTypeService.delete(id);		
        return "success";  
	}
	
	@RequestMapping(value="/api/addColor",method=RequestMethod.POST)
	@ResponseBody
	public String addColor(HttpSession session,@ModelAttribute ColorType colorType) {				
		colorTypeService.add(colorType);			
		return "success";
	}
	
	@RequestMapping(value = "/api/deleteColor", method = RequestMethod.POST) 
	@ResponseBody  
	public  String deleteColor(@RequestParam("id") Integer id) 
	{	
		colorTypeService.delete(id);		
        return "success";  
	}
	
	// Begin user menu 
	@RequestMapping("/user")/////เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�เธ�เน€เธ�เธ�เน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�เธ”เน€เธ�๏ฟฝ
	public ModelAndView user(Map<String, Object> map){
		
		Member member = new Member();//เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�โ�ฌเน€เธ�โ€�เน€เธ�เธ…เน€เธ�๏ฟฝเน€เธ�๏ฟฝ
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
	
	@RequestMapping("/work")///เน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�๏ฟฝ
	public ModelAndView festivity(Map<String, Object> map) {
		Festivity festivity = new Festivity();//เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�โ�ฌเน€เธ�โ€�เน€เธ�เธ…เน€เธ�๏ฟฝเน€เธ�๏ฟฝ
		map.put("festivity", festivity);
		map.put("festivitylist",festivityService.getAllFestivity());
		
		Map<String,String> genList = new TreeMap<String, String>();
		Map<String,String> sexList = new TreeMap<String, String>();	
		Map<String,String> typeList = new TreeMap<String, String>();
		
		List _type = typeService.getAllType();
		List _gen = genTypeService.getAllGenType();
		
		typeList.put("0","");
		for(int i=0;i<_type.size();i++)
		{
			Type t = new Type();
			t = (Type) _type.get(i);
			typeList.put(t.getIdtype().toString(),t.getName());
		}
		
		genList.put("","");
		
		for(int i=0;i<_gen.size();i++)
		{
			GenType g = new GenType();
			g = (GenType) _gen.get(i);
			genList.put(g.getGenName(),g.getGenName());
		}
		
		sexList.put("เพศผู้","เพศผู้");
		sexList.put("เพศเมีย","เพศเมีย");
		
		map.put("festivity",festivity);
		map.put("genList",genList);
		map.put("sexList",sexList);
		map.put("typeList",typeList);
		
		ModelAndView model = new ModelAndView("/csa/admin/festivity");
		return model;
	}
	
	
	
	@RequestMapping("/admin_viewcowsh")////เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�โ€ขเน€เธ�เธ’เน€เธ�เธ�เน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�โ€�
	public ModelAndView avish(){
		ModelAndView model = new ModelAndView("/csa/admin/admin_viewcowsh");
		return model;
	}
	

	@RequestMapping("/admin_viewcow2")////เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�โ€ขเน€เธ�เธ’เน€เธ�เธ�เน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ‘เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�๏ฟฝ
	public ModelAndView avis(){
		ModelAndView model = new ModelAndView("/csa/admin/admin_viewcow2");
		return model;
	}
	
	@RequestMapping("/admin_viewcow3")////เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�โ€ขเน€เธ�เธ’เน€เธ�เธ�เน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�๏ฟฝ
	public ModelAndView avise(){
		ModelAndView model = new ModelAndView("/csa/admin/admin_viewcow3");
		return model;
	}
	
	@RequestMapping("/report")////เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�เธ�เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�เธ’เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�๏ฟฝ
	public ModelAndView avisea(){
		ModelAndView model = new ModelAndView("/csa/admin/report");
		return model;
	}
	
	@RequestMapping("/addfes_sh")////เน€เธ�๏ฟฝเน€เธ�เธ“เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�โ€�เน€เธ�โ�ฌเน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�๏ฟฝ
	public ModelAndView addfes(){
		ModelAndView model = new ModelAndView("/csa/admin/addfes_sh");
		return model;
	}
	
	@RequestMapping("/newfestivity")////เน€เธ�โ�ฌเน€เธ�๏ฟฝเน€เธ�เธ”เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�๏ฟฝ
	public ModelAndView newfestivity(Map<String, Object> map){
		//geneList
		Festivity festivity =new Festivity();
		Map<String,String> genList = new TreeMap<String, String>();
		Map<String,String> sexList = new TreeMap<String, String>();	
		Map<String,String> typeList = new TreeMap<String, String>();
		
		List _type = typeService.getAllType();
		List _gen = genTypeService.getAllGenType();
		
		typeList.put("0","");
		for(int i=0;i<_type.size();i++)
		{
			Type t = new Type();
			t = (Type) _type.get(i);
			typeList.put(t.getIdtype().toString(),t.getName());
		}
		
		genList.put("","");
		
		for(int i=0;i<_gen.size();i++)
		{
			GenType g = new GenType();
			g = (GenType) _gen.get(i);
			genList.put(g.getGenName(),g.getGenName());
		}
		
		sexList.put("เพศผู้","เพศผู้");
		sexList.put("เพศเมีย","เพศเมีย");
		
		map.put("festivity",festivity);
		map.put("genList",genList);
		map.put("sexList",sexList);
		map.put("typeList",typeList);
		
		ModelAndView model = new ModelAndView("/csa/admin/newfestivity");
		return model;
	}
	
	@RequestMapping(value="/api/addFestivity",method=RequestMethod.POST)
	@ResponseBody
	public String addFestivity(HttpSession session,@ModelAttribute Festivity festivity,@RequestParam("flg") Integer flg) {	
		Integer userid = (Integer) session.getAttribute("userid");		
		festivity.setMemberId(userid);
		festivity.setType(typeService.getType(flg));
		festivityService.add(festivity);			
		return "success";
	}
	
	@RequestMapping(value = "/api/deleteFestivity", method = RequestMethod.POST) 
	@ResponseBody  
	public  String deleteFestivity(@RequestParam("id") Integer id) 
	{	
		festivityService.delete(id);		
        return "success";  
	}
	
	@RequestMapping(value="/api/updateFestivity",method=RequestMethod.POST)
	@ResponseBody
	public String updateFestivity(HttpSession session,@ModelAttribute Festivity festivity,@RequestParam("flg") Integer flg) {	
		Integer userid = (Integer) session.getAttribute("userid");		
		festivity.setMemberId(userid);
		festivity.setType(typeService.getType(flg));
		festivityService.edit(festivity);			
		return "success";
	}
	
	@RequestMapping(value = "/api/getFestivity", method = RequestMethod.POST) 
	@ResponseBody  
	public  Map<String, ? extends Object> getFestivity(@RequestParam("id") Integer id) 
	{
		Map<String,Object> model = new HashMap<String, Object>();
		
		Festivity festivityResult=new Festivity();
		Festivity festivity =new Festivity();
		festivity = festivityService.getFestivity(id);
			
		festivityResult.setTitle(festivity.getTitle());
		festivityResult.setGene(festivity.getGene());
		festivityResult.setSWork(festivity.getSWork());
		festivityResult.setEWork(festivity.getEWork());
		festivityResult.setSData(festivity.getSData());
		festivityResult.setEData(festivity.getEData());		
		festivityResult.setLogo(festivity.getLogo());
		festivityResult.setLocation(festivity.getLocation());
		festivityResult.setDetails(festivity.getDetails());

		model.put("festivity", festivityResult);	
		
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
	@RequestMapping("/admin")///เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�๏ฟฝเน€เธ�เธ’เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�เธ�เน€เธ�๏ฟฝเน€เธ�เธ�เน€เธ�โ€�เน€เธ�เธ�เน€เธ�เธ”เน€เธ�๏ฟฝ
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
	
	@RequestMapping("/logout")///เธญเธญเธ�เธ�เธฒเธ�เธฃเธฐเธ�เธ�
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
				session.setAttribute("userid", checklogin.getId());
			}
			if(auth==2){
				link="index_official";
				session.setAttribute("status", checklogin.getStatusNo());
				session.setAttribute("name", checklogin.getName());
				session.setAttribute("userid", checklogin.getId());
			}
			if(auth==3){
				link="index_member";
				session.setAttribute("status", checklogin.getStatusNo());
				session.setAttribute("name", checklogin.getName());
				session.setAttribute("userid", checklogin.getId());
			}
			if(auth==4){
				link="ban";
				session.setAttribute("status", checklogin.getStatusNo());
				session.setAttribute("name", checklogin.getName());
				session.setAttribute("userid", checklogin.getId());
			}
			if(auth==5){
				link="pending";
				session.setAttribute("status", checklogin.getStatusNo());
				session.setAttribute("name", checklogin.getName());
				session.setAttribute("userid", checklogin.getId());
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
