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
		
	@RequestMapping("/cow_member")////เธซเธ�เน�เธฒเน�เธฃเธ�เธ�เธฑเธ”เธ�เธฒเธฃเน�เธ�
	public ModelAndView cm(){
		ModelAndView model = new ModelAndView("/csa/member/cow_member");
		return model;
	}
	
	@RequestMapping("/festivity_mem")////เธซเธ�เน�เธฒเธ�เธฒเธ�เน�เธ�member
	public ModelAndView festivity(Map<String, Object> map) {
		Festivity festivity = new Festivity();//เธชเน�เธ�เธ�เน�เธฒเน�เธกเน€เธ”เธฅเน�เธ�
		map.put("festivity", festivity);
		map.put("festivitylist",festivityService.getAdmin1());
		
		ModelAndView model = new ModelAndView("/csa/member/festivity_mem");
		return model;
	}
	
}
