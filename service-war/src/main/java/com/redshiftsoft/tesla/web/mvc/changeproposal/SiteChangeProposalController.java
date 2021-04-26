package com.redshiftsoft.tesla.web.mvc.changeproposal;

import com.google.common.collect.Lists;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.logging.Logger;

@Controller
@RequestMapping("/changeProposal")
public class SiteChangeProposalController {

    private static final Logger LOG = Logger.getLogger(SiteChangeProposalController.class.getName());

    private final List<SiteChangeProposalDTO> changes = Lists.newArrayList();

    @RequestMapping(method = RequestMethod.POST, value = "/submit")
    @ResponseBody
    public synchronized void submit(@RequestBody SiteChangeProposalDTO siteChangeProposalDTO) {
        LOG.info("siteChangeProposalDTO=" + siteChangeProposalDTO);
        changes.add(siteChangeProposalDTO);
    }

    @RequestMapping(method = RequestMethod.GET, value = "/list")
    @ResponseBody
    public synchronized List<SiteChangeProposalDTO> list() {
        return changes;
    }

    @RequestMapping(method = RequestMethod.GET, value = "/clear")
    @ResponseBody
    public synchronized List<SiteChangeProposalDTO> clear() {
        changes.clear();
        return changes;
    }

}
