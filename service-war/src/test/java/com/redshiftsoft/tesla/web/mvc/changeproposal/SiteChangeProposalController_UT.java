package com.redshiftsoft.tesla.web.mvc.changeproposal;

import org.junit.Test;

import java.util.List;

import static org.junit.Assert.assertEquals;

public class SiteChangeProposalController_UT {

    private final SiteChangeProposalController controller = new SiteChangeProposalController();

    @Test
    public void submit_list_clear() {

        SiteChangeProposalDTO dto1 = new SiteChangeProposalDTO();
        SiteChangeProposalDTO dto2 = new SiteChangeProposalDTO();

        // when - submit
        controller.submit(dto1);
        controller.submit(dto2);

        // when - list
        List<SiteChangeProposalDTO> list = controller.list();
        assertEquals(2, list.size());

        // when - clear
        controller.clear();
        list = controller.list();
        assertEquals(0, list.size());
    }

}