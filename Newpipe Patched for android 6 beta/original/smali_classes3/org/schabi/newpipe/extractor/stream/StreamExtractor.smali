.class public abstract Lorg/schabi/newpipe/extractor/stream/StreamExtractor;
.super Lorg/schabi/newpipe/extractor/Extractor;
.source "StreamExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/extractor/Extractor;-><init>(Lorg/schabi/newpipe/extractor/StreamingService;Lorg/schabi/newpipe/extractor/linkhandler/LinkHandler;)V

    return-void
.end method


# virtual methods
.method public getAgeLimit()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getAudioStreams()Ljava/util/List;
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 491
    const-string v0, ""

    return-object v0
.end method

.method public getContentAvailability()Lorg/schabi/newpipe/extractor/stream/ContentAvailability;
    .locals 1

    .line 593
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/ContentAvailability;->UNKNOWN:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    return-object v0
.end method

.method public getDashMpdUrl()Ljava/lang/String;
    .locals 1

    .line 279
    const-string v0, ""

    return-object v0
.end method

.method public abstract getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
.end method

.method public getDislikeCount()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFrames()Ljava/util/List;
    .locals 1

    .line 397
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getHlsUrl()Ljava/lang/String;
    .locals 1

    .line 292
    const-string v0, ""

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 471
    const-string v0, ""

    return-object v0
.end method

.method public getLanguageInfo()Ljava/util/Locale;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLength()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLicence()Ljava/lang/String;
    .locals 1

    .line 502
    const-string v0, ""

    return-object v0
.end method

.method public getLikeCount()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getMetaInfo()Ljava/util/List;
    .locals 1

    .line 568
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 1

    .line 480
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;->PUBLIC:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0
.end method

.method public getRelatedItems()Lorg/schabi/newpipe/extractor/InfoItemsCollector;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStreamSegments()Ljava/util/List;
    .locals 1

    .line 551
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public abstract getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
.end method

.method public getSubChannelAvatars()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getSubChannelName()Ljava/lang/String;
    .locals 1

    .line 247
    const-string v0, ""

    return-object v0
.end method

.method public getSubChannelUrl()Ljava/lang/String;
    .locals 1

    .line 236
    const-string v0, ""

    return-object v0
.end method

.method public getSubtitles(Lorg/schabi/newpipe/extractor/MediaFormat;)Ljava/util/List;
    .locals 0

    .line 348
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method public getSubtitlesDefault()Ljava/util/List;
    .locals 1

    .line 335
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getSupportInfo()Ljava/lang/String;
    .locals 1

    .line 540
    const-string v0, ""

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1

    .line 526
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getThumbnails()Ljava/util/List;
.end method

.method public getTimeStamp()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getTimestampSeconds(Ljava/lang/String;)J
    .locals 8

    .line 422
    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/schabi/newpipe/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/utils/Parser$RegexException; {:try_start_0 .. :try_end_0} :catch_4

    .line 431
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 437
    :try_start_1
    const-string v1, "(\\d+)s"

    invoke-static {v1, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    :try_start_2
    const-string v2, "(\\d+)m"

    invoke-static {v2, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 439
    :try_start_3
    const-string v3, "(\\d+)h"

    invoke-static {v3, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_0
    move-object v2, v0

    goto :goto_0

    :catch_1
    move-object v1, v0

    move-object v2, v1

    .line 442
    :catch_2
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 444
    const-string v1, "t=(\\d+)"

    invoke-static {v1, p1}, Lorg/schabi/newpipe/extractor/utils/Parser;->matchGroup1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_5

    .line 448
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 449
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 450
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_4
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    int-to-long v4, p1

    const-wide/16 v6, 0x3c

    int-to-long v0, v1

    mul-long v0, v0, v6

    add-long/2addr v4, v0

    const-wide/16 v0, 0xe10

    int-to-long v2, v3

    mul-long v2, v2, v0

    add-long/2addr v4, v2

    return-wide v4

    .line 454
    :goto_5
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;

    const-string v1, "Could not get timestamp."

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    const-wide/16 v0, 0x0

    return-wide v0

    :catch_4
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 1

    .line 0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public abstract getUploaderName()Ljava/lang/String;
.end method

.method public getUploaderSubscriberCount()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract getUploaderUrl()Ljava/lang/String;
.end method

.method public abstract getVideoOnlyStreams()Ljava/util/List;
.end method

.method public abstract getVideoStreams()Ljava/util/List;
.end method

.method public getViewCount()J
    .locals 2

    .line 0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public isShortFormContent()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isUploaderVerified()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method
