package com.redshiftsoft.tesla.web.mvc.site;

import com.redshiftsoft.tesla.dao.site.Plugs;

import java.util.function.Function;

public class PlugsDTOFunctions {

    private static final PlugsFunction PLUGS_FUNCTION = new PlugsFunction();
    private static final PlugsDTOFunction PLUGS_DTO_FUNCTION = new PlugsDTOFunction();

    public static Plugs transform(PlugsDTO plugsDTO) {
        return PLUGS_FUNCTION.apply(plugsDTO);
    }

    public static PlugsDTO transform(Plugs plugs) {
        return PLUGS_DTO_FUNCTION.apply(plugs);
    }

    private static class PlugsDTOFunction implements Function<Plugs, PlugsDTO> {

        @Override
        public PlugsDTO apply(Plugs plugs) {
            if (plugs == null) return null;

            PlugsDTO plugsDTO = new PlugsDTO();

            plugsDTO.setTPC(plugs.getTPC());
            plugsDTO.setNACS(plugs.getNACS());
            plugsDTO.setCCS1(plugs.getCCS1());
            plugsDTO.setCCS2(plugs.getCCS2());
            plugsDTO.setType2(plugs.getType2());
            plugsDTO.setGBT(plugs.getGBT());
            plugsDTO.setOther(plugs.getOther());
            plugsDTO.setMulti(plugs.getMulti());

            return plugsDTO.nullIfEmpty();
        }
    }

    private static class PlugsFunction implements Function<PlugsDTO, Plugs> {

        @Override
        public Plugs apply(PlugsDTO plugsDTO) {
            if (plugsDTO == null) return null;

            Plugs plugs = new Plugs();

            plugs.setTPC(plugsDTO.getTPC());
            plugs.setNACS(plugsDTO.getNACS());
            plugs.setCCS1(plugsDTO.getCCS1());
            plugs.setCCS2(plugsDTO.getCCS2());
            plugs.setType2(plugsDTO.getType2());
            plugs.setGBT(plugsDTO.getGBT());
            plugs.setOther(plugsDTO.getOther());
            plugs.setMulti(plugsDTO.getMulti());

            return plugs.nullIfEmpty();
        }
    }

}