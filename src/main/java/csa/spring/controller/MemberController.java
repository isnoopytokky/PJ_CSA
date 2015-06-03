package csa.spring.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import csa.spring.model.Festivity;
import csa.spring.service.FestivityService;


@Controller
public class MemberController {

	@Autowired
	FestivityService festivityService;
	
	@RequestMapping("/index_member")////หน้าแรกสมาชิก
	public ModelAndView inmem(){
		ModelAndView model = new ModelAndView("/csa/member/index_member");
		return model;
	}
	
	@RequestMapping("/cow_member")////หน้าแรกจัดการโค
	public ModelAndView cm(){
		ModelAndView model = new ModelAndView("/csa/member/cow_member");
		return model;
	}
	
	@RequestMapping("/festivity_mem")////หน้างานโคmember
	public ModelAndView festivity(Map<String, Object> map) {
		Festivity festivity = new Festivity();//ส่งค่าโมเดลไป
		map.put("festivity", festivity);
		map.put("festivitylist",festivityService.getAdmin1());
		
		ModelAndView model = new ModelAndView("/csa/member/festivity_mem");
		return model;
	}
	
}
