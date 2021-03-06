package com.carrot.bbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.carrot.bbs.service.BoardService;

@Controller
public class BoardController {
	@Inject
	BoardService service;
	
	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("list",service.selectAll());
		return "list";
	}
	
	
	
}
