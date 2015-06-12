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

	@RequestMapping("/festivity_mem")////เธซเธ�เน�เธฒเธ�เธฒเธ�เน�เธ�member
	public ModelAndView festivity(Map<String, Object> map) {
		Festivity festivity = new Festivity();//เธชเน�เธ�เธ�เน�เธฒเน�เธกเน€เธ”เธฅเน�เธ�
		map.put("festivity", festivity);
		map.put("festivitylist",festivityService.getAdmin1());
		
		ModelAndView model = new ModelAndView("/csa/member/festivity_mem");
		return model;
	}
	
		
//new
	@RequestMapping("/index_member")////เธซเธ�เน�เธฒเน�เธฃเธ�เธชเธกเธฒเธ�เธดเธ�
	public ModelAndView inmem(){
		ModelAndView model = new ModelAndView("/csa/member/index_member");
		return model;
	}
		
	@RequestMapping("/cow_member")////เธซเธ�เน�เธฒเน�เธชเธ”เธ�เน�เธ�
	public ModelAndView cm(){
		ModelAndView model = new ModelAndView("/csa/member/cow_member");
		return model;
	}
	
	@RequestMapping("/mem_addfes_sh")////เธซเธ�เน�เธฒเธ�เธณเน�เธ�เธ�เธฃเธฐเธ�เธงเธ”เน€เธ�เน�เธฒเธฃเน�เธงเธกเธ�เธฒเธ�
	public ModelAndView mem_addfes_sh(){
		ModelAndView model = new ModelAndView("/csa/member/mem_addfes_sh");
		return model;
	}
	
	@RequestMapping("/mem_addfes_2")////เธซเธ�เน�เธฒเธ�เธณเน�เธ�เธ�เธฑเธ�เน€เธ�เน�เธฒเธฃเน�เธงเธกเธ�เธฒเธ�
	public ModelAndView mem_addfes_2(){
		ModelAndView model = new ModelAndView("/csa/member/mem_addfes_2");
		return model;
	}
	
	@RequestMapping("/mem_addfes_3")////เธซเธ�เน�เธฒเธ�เธณเน�เธ�เธ�เธธเธ�เน€เธ�เน�เธฒเธฃเน�เธงเธกเธ�เธฒเธ�
	public ModelAndView mem_addfes_3(){
		ModelAndView model = new ModelAndView("/csa/member/mem_addfes_3");
		return model;
	}
	
	@RequestMapping("/mem_addcow")////เธซเธ�เน�เธฒเน€เธ�เธดเน�เธกเน�เธ�เธ�เธฃเธฐเธ�เธงเธ”
	public ModelAndView mem_addcow(){
		ModelAndView model = new ModelAndView("/csa/member/mem_addcow");
		return model;
	}
	
	@RequestMapping("/mem_addcow2")////เธซเธ�เน�เธฒเน€เธ�เธดเน�เธกเน�เธ�เธ�เธฑเธ�
	public ModelAndView mem_addcow2(){
		ModelAndView model = new ModelAndView("/csa/member/mem_addcow2");
		return model;
	}
	
	@RequestMapping("/mem_addcow3")////เธซเธ�เน�เธฒเน€เธ�เธดเน�เธกเน�เธ�เธ�เธธเธ�
	public ModelAndView mem_addcow3(){
		ModelAndView model = new ModelAndView("/csa/member/mem_addcow3");
		return model;
	}
	
	@RequestMapping("/mem_edit_cowsh")////เธซเธ�เน�เธฒเน�เธ�เน�เน�เธ�เน�เธ�เธ�เธฃเธฐเธ�เธงเธ”
	public ModelAndView mem_edit_cowsh(){
		ModelAndView model = new ModelAndView("/csa/member/mem_edit_cowsh");
		return model;
	}
	
	@RequestMapping("/mem_edit_cow2")////เธซเธ�เน�เธฒเน�เธ�เน�เน�เธ�เน�เธ�เธ�เธฑเธ�
	public ModelAndView mem_edit_cow2(){
		ModelAndView model = new ModelAndView("/csa/member/mem_edit_cow2");
		return model;
	}
	
	@RequestMapping("/mem_edit_cow3")////เธซเธ�เน�เธฒเน�เธ�เน�เน�เธ�เน�เธ�เธ�เธฑเธ�
	public ModelAndView mem_edit_cow3(){
		ModelAndView model = new ModelAndView("/csa/member/mem_edit_cow3");
		return model;
	}
	
	
	
}
