package com.redshiftsoft.tesla.web.mvc.site;

import com.redshiftsoft.tesla.dao.site.Stalls;

import java.util.function.Function;

public class StallsDTOFunctions {

    private static final StallsFunction STALLS_FUNCTION = new StallsFunction();
    private static final StallsDTOFunction STALLS_DTO_FUNCTION = new StallsDTOFunction();

    public static Stalls transform(StallsDTO stallsDTO) {
        return STALLS_FUNCTION.apply(stallsDTO);
    }

    public static StallsDTO transform(Stalls stalls) {
        return STALLS_DTO_FUNCTION.apply(stalls);
    }

    private static class StallsDTOFunction implements Function<Stalls, StallsDTO> {

        @Override
        public StallsDTO apply(Stalls stalls) {
            if (stalls == null) return null;

            StallsDTO stallsDTO = new StallsDTO();

            stallsDTO.setUrban(stalls.getUrban());
            stallsDTO.setV2(stalls.getV2());
            stallsDTO.setV3(stalls.getV3());
            stallsDTO.setV4(stalls.getV4());
            stallsDTO.setOther(stalls.getOther());
            stallsDTO.setAccessible(stalls.getAccessible());
            stallsDTO.setTrailerFriendly(stalls.getTrailerFriendly());

            return stallsDTO.nullIfEmpty();
        }
    }

    private static class StallsFunction implements Function<StallsDTO, Stalls> {

        @Override
        public Stalls apply(StallsDTO stallsDTO) {
            if (stallsDTO == null) return null;

            Stalls stalls = new Stalls();

            stalls.setUrban(stallsDTO.getUrban());
            stalls.setV2(stallsDTO.getV2());
            stalls.setV3(stallsDTO.getV3());
            stalls.setV4(stallsDTO.getV4());
            stalls.setOther(stallsDTO.getOther());
            stalls.setAccessible(stallsDTO.getAccessible());
            stalls.setTrailerFriendly(stallsDTO.getTrailerFriendly());

            return stalls.nullIfEmpty();
        }
    }

}