package com.redshiftsoft.tesla_web_scrape.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.redshiftsoft.util.NumberUtils;

import java.util.List;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@JsonIgnoreProperties(ignoreUnknown = true)
public class TeslaSite {

    private static final Pattern STALL_COUNT_PATTERN = Pattern.compile("(\\d+)\\s+Supercharg[er|ing]", Pattern.CASE_INSENSITIVE);
    private static final Pattern DIGITS_PATTERN = Pattern.compile(" (\\d+)", Pattern.CASE_INSENSITIVE);

    @JsonProperty("nid")
    private long id;

    @JsonProperty("location_id")
    private String locationId;

    @JsonProperty("title")
    private String title;

    @JsonProperty("common_name")
    private String commonName;

    @JsonProperty("location_type")
    private List<LocationType> locationTypes;

    @JsonProperty("is_gallery")
    private boolean gallery;

    @JsonProperty("open_soon")
    private int openSoon;

    @JsonProperty("address")
    private String address;
    @JsonProperty("address_line_1")
    private String addressLine1;
    @JsonProperty("address_line_2")
    private String addressLine2;
    @JsonProperty("address_notes")
    private String addressNotes;
    @JsonProperty("province_state")
    private String state;
    @JsonProperty("city")
    private String city;
    @JsonProperty("postal_code")
    private String postalCode;
    @JsonProperty("country")
    private String country;
    @JsonProperty("region")
    private String region;
    @JsonProperty("sub_region")
    private String subRegion;

    @JsonProperty("hours")
    private String hours;

    @JsonProperty("geocode")
    private String geoCode;

    private double latitude;
    private double longitude;

    @JsonProperty("baidu_lat")
    private double baiduLat;
    @JsonProperty("baidu_lng")
    private double baiduLng;

    @JsonProperty("chargers")
    private String chargersText;

    @JsonProperty("directions_link")
    private String directionsLink;

    @JsonProperty("sales_representative")
    private String salesRepresentative;

    @JsonProperty("trt_id")
    private String trtId;

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // derived properties
    //
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    public int getStallCount() {
        Integer number = getStallCount(getChargersText());
        if (number == null) {
            number = getStallCount(getHours());
        }
        return number == null ? 0 : number > 2000 ? 0 : number;
    }

    private static Integer getStallCount(String sourceText) {
        if (sourceText != null) {
            Matcher matcher1 = STALL_COUNT_PATTERN.matcher(sourceText);
            if (matcher1.find()) {
                String group = matcher1.group(1);
                return NumberUtils.parse(group, Integer.class);
            }
            Matcher matcher2 = DIGITS_PATTERN.matcher(sourceText);
            if (matcher2.find()) {
                String group = matcher2.group(1);
                return NumberUtils.parse(group, Integer.class);
            }
        }
        return null;
    }

    public String getLatLngString() {
        return String.format("%,.9f,%,.9f", getLatitude(), getLongitude());
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    // java.lang.Object
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

    @Override
    public boolean equals(Object object) {
        return object instanceof TeslaSite && Objects.equals(this.locationId, ((TeslaSite) object).locationId);
    }

    @Override
    public int hashCode() {
        return Objects.hashCode(this.locationId);
    }

    @Override
    public String toString() {
        return "Location{" +
                "id=" + id +
                ", locationId='" + locationId + '\'' +
                ", title='" + title + '\'' +
                ", locationTypes=" + locationTypes +
                ", openSoon=" + openSoon +
                ", address='" + address + '\'' +
                ", state='" + state + '\'' +
                ", city='" + city + '\'' +
                ", country='" + country + '\'' +
                ", region='" + region + '\'' +
                ", hours='" + hours + '\'' +
                ", geoCode='" + geoCode + '\'' +
                ", latitude=" + latitude +
                ", longitude=" + longitude +
                ", chargersText='" + chargersText + '\'' +
                '}';
    }

    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    //
    // - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


    public List<LocationType> getLocationTypes() {
        return locationTypes;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public String getTitle() {
        return title;
    }

    public long getId() {
        return id;
    }

    public String getLocationId() {
        return locationId;
    }

    public void setLocationId(String locationId) {
        this.locationId = locationId;
    }

    public int isOpenSoon() {
        return openSoon;
    }

    public void setOpenSoon(int openSoon) {
        this.openSoon = openSoon;
    }

    public String getAddress() {
        return address;
    }

    public String getState() {
        return state;
    }

    public String getCity() {
        return city;
    }

    public String getCountry() {
        return country;
    }

    public String getRegion() {
        return region;
    }

    public String getHours() {
        return hours;
    }

    public void setHours(String hours) {
        this.hours = hours;
    }

    public String getGeoCode() {
        return geoCode;
    }

    public String getChargersText() {
        return chargersText;
    }

    public void setChargersText(String chargersText) {
        this.chargersText = chargersText;
    }

    public String getCommonName() {
        return commonName;
    }

    public boolean isGallery() {
        return gallery;
    }

    public int getOpenSoon() {
        return openSoon;
    }

    public String getAddressLine1() {
        return addressLine1;
    }

    public String getAddressLine2() {
        return addressLine2;
    }

    public String getAddressNotes() {
        return addressNotes;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public String getSubRegion() {
        return subRegion;
    }

    public double getBaiduLat() {
        return baiduLat;
    }

    public double getBaiduLng() {
        return baiduLng;
    }

    public String getDirectionsLink() {
        return directionsLink;
    }

    public String getSalesRepresentative() {
        return salesRepresentative;
    }

    public String getTrtId() {
        return trtId;
    }
}
