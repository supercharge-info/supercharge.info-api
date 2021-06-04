package com.redshiftsoft.tesla.web.mvc.feature;

import com.redshiftsoft.tesla.dao.feature.Feature;
import com.redshiftsoft.tesla.dao.feature.FeatureDAO;
import com.redshiftsoft.tesla.web.mvc.JsonResponse;
import com.redshiftsoft.util.NumberUtils;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.interceptor.TransactionAspectSupport;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.stream.Collectors;

@Controller
@RequestMapping(value = "/feature")
public class FeatureController {

    private static final Logger LOG = Logger.getLogger(FeatureController.class.getName());

    @Resource
    private FeatureDAO featureDAO;

    // load a single site into the edit form
    @Transactional
    @ResponseBody
    @PreAuthorize("hasAnyRole('feature')")
    @RequestMapping(method = RequestMethod.GET, value = "/load/{featureId}")
    public FeatureDTO load(@PathVariable Integer featureId) {
        Feature feature = featureDAO.getById(featureId);
        return FeatureFunctions.TO_DTO.apply(feature);
    }

    @Transactional
    @ResponseBody
    @PreAuthorize("hasAnyRole('feature')")
    @RequestMapping(value = "/edit", method = {RequestMethod.POST})
    public JsonResponse edit(@RequestBody FeatureDTO featureDTO) {
        try {
            Feature feature = FeatureFunctions.FROM_DTO.apply(featureDTO);
            // NEW
            if (featureDTO.getId() == null) {
                featureDAO.insert(feature);
                String message = "Saved new feature " + feature.getId();
                return new FeatureEditResponse(feature.getId(), message);
            }
            // EDIT
            else {
                featureDAO.update(feature);
                String message = "Updated feature " + feature.getId();
                return new FeatureEditResponse(feature.getId(), message);
            }
        } catch (Exception e) {
            TransactionAspectSupport.currentTransactionStatus().setRollbackOnly();
            LOG.log(Level.SEVERE, "", e);
            return JsonResponse.error(e);
        }
    }

    @Transactional
    @ResponseBody
    @RequestMapping(method = RequestMethod.GET, value = "/list")
    public List<FeatureDTO> insert() {
        return featureDAO.list().stream().map(FeatureFunctions.TO_DTO).collect(Collectors.toList());
    }

    @Transactional
    @ResponseBody
    @PreAuthorize("hasAnyRole('admin')")
    @RequestMapping(method = RequestMethod.GET, value = "/delete/{featureId}")
    public JsonResponse deleteChange(@PathVariable Integer featureId) {
        featureDAO.delete(featureId);
        return JsonResponse.success();
    }

    @Transactional
    @ResponseBody
    @RequestMapping(method = RequestMethod.GET, value = "/check")
    public JsonResponse checkForNewFeatures(HttpServletResponse response,
                                            @CookieValue(name = FeatureCookie.COOKIE_NAME, required = false) String lastSeenFeatureId) {
        Integer lastSeenFeatureIdInt = NumberUtils.parse(lastSeenFeatureId, Integer.class);
        int latestFeatureId = featureDAO.getLatestFeatureId();

        // CASE 1: There is no feature cookie, or there is, but the last seen feature is OLD.
        if (lastSeenFeatureIdInt == null || (lastSeenFeatureIdInt < latestFeatureId)) {
            response.addCookie(new FeatureCookie(latestFeatureId));
            return JsonResponse.success("new features");
        }
        // CASE 2: They have already been notified of all the new features.
        else {
            return JsonResponse.success("up to date");
        }
    }

}