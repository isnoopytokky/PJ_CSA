package csa.spring.controller;

import java.util.List;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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
public class UserController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	StatusNoService statusNoService ;
		
	MD5 md5=new MD5();
	
	@RequestMapping("/user/view/{id}")
	public ModelAndView cm( @PathVariable Integer id){
		ModelAndView model = new ModelAndView("/csa/user/view");
		return model;
	}
	
	@RequestMapping(value = "/api/getUser", method = RequestMethod.POST) 
	@ResponseBody  
	public  Map<String, ? extends Object> getUser(@RequestParam("id") Integer id) 
	{
		Map<String,Object> model = new HashMap<String, Object>();
		
		Member userResult=new Member();
		Member user=new Member();
		user = memberService.getMember(id);
				
		//userResult.setStatusNo(user.getStatusNo());		
		userResult.setUser(user.getUser());
		userResult.setPass(user.getPass());
		userResult.setEmail(user.getEmail());
		userResult.setIdcard(user.getIdcard());
		userResult.setName(user.getName());
		userResult.setSurname(user.getSurname());
		userResult.setAddress(user.getAddress());
		userResult.setFarm(user.getFarm());
		userResult.setTel(user.getTel());

		model.put("user", userResult);
		model.put("statusNoName", user.getStatusNo().getStatusName());
		model.put("statusNoId", user.getStatusNo().getIdstatusNo());
		
        return model;  
	}
	
	@RequestMapping(value = "/api/deleteUser", method = RequestMethod.POST) 
	@ResponseBody  
	public  String deleteUser(@RequestParam("id") Integer id) 
	{	
		memberService.delete(id);		
        return "success";  
	}
	
	@RequestMapping(value="/api/updateUser",method=RequestMethod.POST)
	@ResponseBody
	public String updateUser(@ModelAttribute Member member) {		
		String newpass = md5.getMD5(member.getPass());		
		member.setPass(newpass);
		
		//if pass is empty get current pass 
		if(member.getPass().equals(""))
		{
			Member member_old = new Member();
			member_old = memberService.getMember(member.getId());
			member.setPass(member_old.getPass());  
		}
				
		memberService.edit(member);			
		return "success";
	}
	  
	
	@RequestMapping(value = "/api/getStatus", method = RequestMethod.GET) 
	@ResponseBody  
	public  Map<Integer, String> getStatus() 
	{
		Map<Integer,String> model = new HashMap<Integer, String>();
		
		List statusNoResult;
		statusNoResult = statusNoService.getAllStatusNo();		 
		
		for(int i = 0;i<statusNoResult.size();i++)
		{	
			StatusNo statusNo =  (StatusNo) statusNoResult.get(i);
			model.put(statusNo.getIdstatusNo(), statusNo.getStatusName());
		}	
		
        return model;  
	}
	
	
}
