.class public interface abstract Lorg/schabi/newpipe/extractor/stream/StreamInfoItemExtractor;
.super Ljava/lang/Object;
.source "StreamInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/InfoItemExtractor;


# virtual methods
.method public abstract getContentAvailability()Lorg/schabi/newpipe/extractor/stream/ContentAvailability;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getShortDescription()Ljava/lang/String;
.end method

.method public abstract getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
.end method

.method public abstract getTextualUploadDate()Ljava/lang/String;
.end method

.method public abstract getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
.end method

.method public abstract getUploaderAvatars()Ljava/util/List;
.end method

.method public abstract getUploaderName()Ljava/lang/String;
.end method

.method public abstract getUploaderUrl()Ljava/lang/String;
.end method

.method public abstract getViewCount()J
.end method

.method public abstract isAd()Z
.end method

.method public abstract isShortFormContent()Z
.end method

.method public abstract isUploaderVerified()Z
.end method
