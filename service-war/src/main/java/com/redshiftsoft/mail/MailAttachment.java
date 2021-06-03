package com.redshiftsoft.mail;

import java.io.Serializable;

public class MailAttachment implements Serializable {

    private final byte[] bytes;
    private final String mimeType;
    private final String fileName;

    public MailAttachment(final String fileName, final String mimeType, final byte[] bytes) {
        this.fileName = fileName;
        this.bytes = bytes;
        this.mimeType = mimeType;
    }

    public byte[] getBytes() {
        return bytes;
    }

    public String getMimeType() {
        return mimeType;
    }

    public String getFileName() {
        return fileName;
    }

}
