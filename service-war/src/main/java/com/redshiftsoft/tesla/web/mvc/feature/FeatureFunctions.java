package com.redshiftsoft.tesla.web.mvc.feature;

import com.redshiftsoft.tesla.dao.feature.Feature;

import java.util.function.Function;

public class FeatureFunctions {

    public static final FeatureFunction TO_DTO = new FeatureFunction();
    public static final FeatureDTOFunction FROM_DTO = new FeatureDTOFunction();

    public static class FeatureFunction implements Function<Feature, FeatureDTO> {
        @Override
        public FeatureDTO apply(Feature feature) {
            FeatureDTO featureDTO = new FeatureDTO();
            featureDTO.setId(feature.getId());
            featureDTO.setModifiedDate(feature.getModifiedDate());
            featureDTO.setAddedDate(feature.getAddedDate());
            featureDTO.setDescription(feature.getDescription());
            featureDTO.setTitle(feature.getTitle());
            return featureDTO;
        }
    }

    public static class FeatureDTOFunction implements Function<FeatureDTO, Feature> {
        @Override
        public Feature apply(FeatureDTO featureDTO) {
            Feature feature = new Feature();
            feature.setId(featureDTO.getId());
            feature.setModifiedDate(feature.getModifiedDate());
            feature.setAddedDate(featureDTO.getAddedDate());
            feature.setDescription(featureDTO.getDescription());
            feature.setTitle(featureDTO.getTitle());
            return feature;
        }
    }

}
