package com.cykj.net.controller.admin;

import com.cykj.net.javabean.LayuiData;
import com.cykj.net.service.admin.AdminJournalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/adminJournal")
public class AdminJournalController {

    @Autowired
    private AdminJournalService adminJournalService;

    @RequestMapping(value = "/table/journal")
    @ResponseBody
    public LayuiData journal(String account, int page, int limit){
        return adminJournalService.journal(account,page,limit);
    }


}
