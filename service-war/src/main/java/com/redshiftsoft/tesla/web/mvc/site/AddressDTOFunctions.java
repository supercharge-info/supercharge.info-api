package com.redshiftsoft.tesla.web.mvc.site;

import com.redshiftsoft.tesla.dao.site.Address;

import java.util.function.Function;

public class AddressDTOFunctions {

    private static final AddressFunction ADDRESS_FUNCTION = new AddressFunction();
    private static final AddressDTOFunction ADDRESS_DTO_FUNCTION = new AddressDTOFunction();

    public static Address transform(AddressDTO addressDTO) {
        return ADDRESS_FUNCTION.apply(addressDTO);
    }

    public static AddressDTO transform(Address address) {
        return ADDRESS_DTO_FUNCTION.apply(address);
    }

    private static class AddressDTOFunction implements Function<Address, AddressDTO> {

        @Override
        public AddressDTO apply(Address address) {
            AddressDTO addressDTO = new AddressDTO();

            addressDTO.setId(address.getId());
            addressDTO.setStreet(address.getStreet());
            addressDTO.setCity(address.getCity());
            addressDTO.setState(address.getState());
            addressDTO.setZip(address.getZip());
            addressDTO.setCountryId(address.getCountryId());
            addressDTO.setCountry(address.getCountry());
            addressDTO.setRegionId(address.getRegionId());
            addressDTO.setRegion(address.getRegion());

            return addressDTO;
        }
    }

    private static class AddressFunction implements Function<AddressDTO, Address> {

        @Override
        public Address apply(AddressDTO addressDTO) {
            Address address = new Address();

            address.setId(addressDTO.getId());
            address.setStreet(addressDTO.getStreet());
            address.setCity(addressDTO.getCity());
            address.setState(addressDTO.getState());
            address.setZip(addressDTO.getZip());
            address.setCountryId(addressDTO.getCountryId());
            address.setCountry(addressDTO.getCountry());
            address.setRegion(addressDTO.getRegion());
            address.setRegionId(addressDTO.getRegionId());

            return address;
        }
    }

}