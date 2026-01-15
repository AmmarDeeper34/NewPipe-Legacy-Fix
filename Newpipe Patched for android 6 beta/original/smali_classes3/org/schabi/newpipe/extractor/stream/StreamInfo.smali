.class public Lorg/schabi/newpipe/extractor/stream/StreamInfo;
.super Lorg/schabi/newpipe/extractor/Info;
.source "StreamInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/extractor/stream/StreamInfo$StreamExtractException;
    }
.end annotation


# instance fields
.field private ageLimit:I

.field private audioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/AudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private category:Ljava/lang/String;

.field private contentAvailability:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

.field private dashMpdUrl:Ljava/lang/String;

.field private description:Lorg/schabi/newpipe/extractor/stream/Description;

.field private dislikeCount:J

.field private duration:J

.field private hlsUrl:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private language:Ljava/util/Locale;

.field private licence:Ljava/lang/String;

.field private likeCount:J

.field private metaInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/MetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private previewFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/Frameset;",
            ">;"
        }
    .end annotation
.end field

.field private privacy:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

.field private relatedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private shortFormContent:Z

.field private startPosition:J

.field private streamSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/StreamSegment;",
            ">;"
        }
    .end annotation
.end field

.field private streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private subChannelAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private subChannelName:Ljava/lang/String;

.field private subChannelUrl:Ljava/lang/String;

.field private subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/SubtitlesStream;",
            ">;"
        }
    .end annotation
.end field

.field private supportInfo:Ljava/lang/String;

.field private tags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textualUploadDate:Ljava/lang/String;

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderSubscriberCount:J

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z

.field private videoOnlyStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private videoStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/stream/VideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private viewCount:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v2, p5

    move-object v5, p6

    .line 61
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/extractor/Info;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 345
    iput-object p1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->thumbnails:Ljava/util/List;

    const-wide/16 p2, -0x1

    .line 348
    iput-wide p2, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->duration:J

    .line 352
    iput-wide p2, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->viewCount:J

    .line 353
    iput-wide p2, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->likeCount:J

    .line 354
    iput-wide p2, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dislikeCount:J

    .line 356
    const-string p5, ""

    iput-object p5, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;

    .line 357
    iput-object p5, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;

    .line 359
    iput-object p1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderAvatars:Ljava/util/List;

    const/4 p6, 0x0

    .line 360
    iput-boolean p6, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderVerified:Z

    .line 361
    iput-wide p2, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderSubscriberCount:J

    .line 363
    iput-object p5, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelName:Ljava/lang/String;

    .line 364
    iput-object p5, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelUrl:Ljava/lang/String;

    .line 366
    iput-object p1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelAvatars:Ljava/util/List;

    .line 368
    iput-object p1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    .line 369
    iput-object p1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    .line 370
    iput-object p1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    .line 372
    iput-object p5, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    .line 373
    iput-object p5, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    .line 374
    iput-object p1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->relatedItems:Ljava/util/List;

    const-wide/16 p2, 0x0

    .line 376
    iput-wide p2, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->startPosition:J

    .line 377
    iput-object p1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    .line 379
    iput-object p5, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->host:Ljava/lang/String;

    .line 381
    iput-object p5, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->category:Ljava/lang/String;

    .line 382
    iput-object p5, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->licence:Ljava/lang/String;

    .line 383
    iput-object p5, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->supportInfo:Ljava/lang/String;

    const/4 p2, 0x0

    .line 384
    iput-object p2, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->language:Ljava/util/Locale;

    .line 385
    iput-object p1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->tags:Ljava/util/List;

    .line 386
    iput-object p1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamSegments:Ljava/util/List;

    .line 387
    iput-object p1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->metaInfo:Ljava/util/List;

    .line 388
    iput-boolean p6, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->shortFormContent:Z

    .line 389
    sget-object p2, Lorg/schabi/newpipe/extractor/stream/ContentAvailability;->AVAILABLE:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    iput-object p2, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->contentAvailability:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    .line 395
    iput-object p1, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->previewFrames:Ljava/util/List;

    .line 62
    iput-object p4, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 63
    iput p7, v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->ageLimit:I

    return-void
.end method

.method private static extractImportantData(Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 8

    .line 108
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v4

    .line 110
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getId()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getName()Ljava/lang/String;

    move-result-object v6

    .line 112
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getAgeLimit()I

    move-result v7

    .line 116
    sget-object v0, Lorg/schabi/newpipe/extractor/stream/StreamType;->NONE:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq v4, v0, :cond_0

    .line 117
    invoke-static {v2}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-static {v5}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v6, :cond_0

    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 124
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getServiceId()I

    move-result v1

    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v0 .. v7}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 121
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v0, "Some important stream information was not given."

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static extractOptionalData(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)V
    .locals 2

    .line 185
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setThumbnails(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 187
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 190
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getLength()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setDuration(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 192
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 195
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploaderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploaderName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 197
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 200
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploaderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploaderUrl(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 202
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 205
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploaderAvatars()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploaderAvatars(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 207
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 210
    :goto_4
    :try_start_5
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->isUploaderVerified()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploaderVerified(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 212
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 215
    :goto_5
    :try_start_6
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploaderSubscriberCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploaderSubscriberCount(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v0

    .line 217
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 221
    :goto_6
    :try_start_7
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getSubChannelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setSubChannelName(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    .line 223
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 226
    :goto_7
    :try_start_8
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getSubChannelUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setSubChannelUrl(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v0

    .line 228
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 231
    :goto_8
    :try_start_9
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getSubChannelAvatars()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setSubChannelAvatars(Ljava/util/List;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v0

    .line 233
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 237
    :goto_9
    :try_start_a
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getDescription()Lorg/schabi/newpipe/extractor/stream/Description;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v0

    .line 239
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 242
    :goto_a
    :try_start_b
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getViewCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setViewCount(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v0

    .line 244
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 247
    :goto_b
    :try_start_c
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setTextualUploadDate(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v0

    .line 249
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 252
    :goto_c
    :try_start_d
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v0

    .line 254
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 257
    :goto_d
    :try_start_e
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getTimeStamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setStartPosition(J)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v0

    .line 259
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 262
    :goto_e
    :try_start_f
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getLikeCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setLikeCount(J)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v0

    .line 264
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 267
    :goto_f
    :try_start_10
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getDislikeCount()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setDislikeCount(J)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v0

    .line 269
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 272
    :goto_10
    :try_start_11
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getSubtitlesDefault()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setSubtitles(Ljava/util/List;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    .line 274
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 279
    :goto_11
    :try_start_12
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setHost(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    .line 281
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 284
    :goto_12
    :try_start_13
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setPrivacy(Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    .line 286
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 289
    :goto_13
    :try_start_14
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setCategory(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_14

    goto :goto_14

    :catch_14
    move-exception v0

    .line 291
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 294
    :goto_14
    :try_start_15
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getLicence()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setLicence(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_15

    :catch_15
    move-exception v0

    .line 296
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 299
    :goto_15
    :try_start_16
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getLanguageInfo()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setLanguageInfo(Ljava/util/Locale;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_16

    goto :goto_16

    :catch_16
    move-exception v0

    .line 301
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 304
    :goto_16
    :try_start_17
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getTags()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setTags(Ljava/util/List;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_17

    goto :goto_17

    :catch_17
    move-exception v0

    .line 306
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 309
    :goto_17
    :try_start_18
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getSupportInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setSupportInfo(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_18

    goto :goto_18

    :catch_18
    move-exception v0

    .line 311
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 314
    :goto_18
    :try_start_19
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getStreamSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setStreamSegments(Ljava/util/List;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19

    goto :goto_19

    :catch_19
    move-exception v0

    .line 316
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 319
    :goto_19
    :try_start_1a
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getMetaInfo()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setMetaInfo(Ljava/util/List;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1a

    goto :goto_1a

    :catch_1a
    move-exception v0

    .line 321
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 324
    :goto_1a
    :try_start_1b
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getFrames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setPreviewFrames(Ljava/util/List;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_1b

    goto :goto_1b

    :catch_1b
    move-exception v0

    .line 326
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 329
    :goto_1b
    :try_start_1c
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->isShortFormContent()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setShortFormContent(Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_1c

    goto :goto_1c

    :catch_1c
    move-exception v0

    .line 331
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 334
    :goto_1c
    :try_start_1d
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getContentAvailability()Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setContentAvailability(Lorg/schabi/newpipe/extractor/stream/ContentAvailability;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_1d

    goto :goto_1d

    :catch_1d
    move-exception v0

    .line 336
    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 339
    :goto_1d
    invoke-static {p0, p1}, Lorg/schabi/newpipe/extractor/utils/ExtractorHelper;->getRelatedItemsOrLogError(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setRelatedItems(Ljava/util/List;)V

    return-void
.end method

.method private static extractStreams(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)V
    .locals 3

    .line 137
    :try_start_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getDashMpdUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setDashMpdUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get DASH manifest"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 143
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getHlsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setHlsUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 145
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get HLS manifest"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 149
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getAudioStreams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setAudioStreams(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/schabi/newpipe/extractor/exceptions/ContentNotSupportedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 153
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get audio streams"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 157
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getVideoStreams()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setVideoStreams(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 159
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v2, "Couldn\'t get video streams"

    invoke-direct {v1, v2, v0}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 163
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->setVideoOnlyStreams(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 165
    new-instance v0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    const-string v1, "Couldn\'t get video only streams"

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/extractor/Info;->addError(Ljava/lang/Throwable;)V

    .line 170
    :goto_4
    iget-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_5

    .line 171
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo$StreamExtractException;

    const-string p1, "Could not get any stream. See error variable to get further details."

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo$StreamExtractException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_5
    return-void

    :catch_5
    move-exception p0

    .line 151
    throw p0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 0

    .line 72
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getStreamExtractor(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/stream/StreamExtractor;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getInfo(Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getInfo(Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;
    .locals 2

    .line 77
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/Extractor;->fetchPage()V

    .line 80
    :try_start_0
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->extractImportantData(Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    move-result-object v0

    .line 81
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->extractStreams(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)V

    .line 82
    invoke-static {v0, p0}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->extractOptionalData(Lorg/schabi/newpipe/extractor/stream/StreamInfo;Lorg/schabi/newpipe/extractor/stream/StreamExtractor;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {p0}, Lorg/schabi/newpipe/extractor/stream/StreamExtractor;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-static {p0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    throw v0

    .line 97
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;

    invoke-direct {v1, p0, v0}, Lorg/schabi/newpipe/extractor/exceptions/ContentNotAvailableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getAgeLimit()I
    .locals 1

    .line 454
    iget v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->ageLimit:I

    return v0
.end method

.method public getAudioStreams()Ljava/util/List;
    .locals 1

    .line 578
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 666
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getDashMpdUrl()Ljava/lang/String;
    .locals 1

    .line 594
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 1

    .line 462
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object v0
.end method

.method public getDislikeCount()J
    .locals 2

    .line 496
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dislikeCount:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 446
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->duration:J

    return-wide v0
.end method

.method public getHlsUrl()Ljava/lang/String;
    .locals 1

    .line 602
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 650
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageInfo()Ljava/util/Locale;
    .locals 1

    .line 682
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->language:Ljava/util/Locale;

    return-object v0
.end method

.method public getLicence()Ljava/lang/String;
    .locals 1

    .line 674
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->licence:Ljava/lang/String;

    return-object v0
.end method

.method public getLikeCount()J
    .locals 2

    .line 483
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->likeCount:J

    return-wide v0
.end method

.method public getMetaInfo()Ljava/util/List;
    .locals 1

    .line 727
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->metaInfo:Ljava/util/List;

    return-object v0
.end method

.method public getPreviewFrames()Ljava/util/List;
    .locals 1

    .line 718
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->previewFrames:Ljava/util/List;

    return-object v0
.end method

.method public getPrivacy()Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;
    .locals 1

    .line 658
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->privacy:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-object v0
.end method

.method public getRelatedItems()Ljava/util/List;
    .locals 1

    .line 610
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->relatedItems:Ljava/util/List;

    return-object v0
.end method

.method public getStartPosition()J
    .locals 2

    .line 634
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->startPosition:J

    return-wide v0
.end method

.method public getStreamSegments()Ljava/util/List;
    .locals 1

    .line 706
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamSegments:Ljava/util/List;

    return-object v0
.end method

.method public getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public getSubChannelAvatars()Ljava/util/List;
    .locals 1

    .line 562
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getSubChannelName()Ljava/lang/String;
    .locals 1

    .line 545
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubChannelUrl()Ljava/lang/String;
    .locals 1

    .line 553
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubtitles()Ljava/util/List;
    .locals 1

    .line 642
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    return-object v0
.end method

.method public getSupportInfo()Ljava/lang/String;
    .locals 1

    .line 702
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->supportInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/List;
    .locals 1

    .line 690
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->tags:Ljava/util/List;

    return-object v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->textualUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1

    .line 417
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 1

    .line 521
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 504
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderSubscriberCount()J
    .locals 2

    .line 537
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderSubscriberCount:J

    return-wide v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 512
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoOnlyStreams()Ljava/util/List;
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    return-object v0
.end method

.method public getVideoStreams()Ljava/util/List;
    .locals 1

    .line 570
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    return-object v0
.end method

.method public getViewCount()J
    .locals 2

    .line 470
    iget-wide v0, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->viewCount:J

    return-wide v0
.end method

.method public setAudioStreams(Ljava/util/List;)V
    .locals 0

    .line 582
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->audioStreams:Ljava/util/List;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->category:Ljava/lang/String;

    return-void
.end method

.method public setContentAvailability(Lorg/schabi/newpipe/extractor/stream/ContentAvailability;)V
    .locals 0

    .line 744
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->contentAvailability:Lorg/schabi/newpipe/extractor/stream/ContentAvailability;

    return-void
.end method

.method public setDashMpdUrl(Ljava/lang/String;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dashMpdUrl:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0

    .line 466
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->description:Lorg/schabi/newpipe/extractor/stream/Description;

    return-void
.end method

.method public setDislikeCount(J)V
    .locals 0

    .line 500
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->dislikeCount:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 450
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->duration:J

    return-void
.end method

.method public setHlsUrl(Ljava/lang/String;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->hlsUrl:Ljava/lang/String;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .line 654
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->host:Ljava/lang/String;

    return-void
.end method

.method public setLanguageInfo(Ljava/util/Locale;)V
    .locals 0

    .line 686
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->language:Ljava/util/Locale;

    return-void
.end method

.method public setLicence(Ljava/lang/String;)V
    .locals 0

    .line 678
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->licence:Ljava/lang/String;

    return-void
.end method

.method public setLikeCount(J)V
    .locals 0

    .line 487
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->likeCount:J

    return-void
.end method

.method public setMetaInfo(Ljava/util/List;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->metaInfo:Ljava/util/List;

    return-void
.end method

.method public setPreviewFrames(Ljava/util/List;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->previewFrames:Ljava/util/List;

    return-void
.end method

.method public setPrivacy(Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;)V
    .locals 0

    .line 662
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->privacy:Lorg/schabi/newpipe/extractor/stream/StreamExtractor$Privacy;

    return-void
.end method

.method public setRelatedItems(Ljava/util/List;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->relatedItems:Ljava/util/List;

    return-void
.end method

.method public setShortFormContent(Z)V
    .locals 0

    .line 735
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->shortFormContent:Z

    return-void
.end method

.method public setStartPosition(J)V
    .locals 0

    .line 638
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->startPosition:J

    return-void
.end method

.method public setStreamSegments(Ljava/util/List;)V
    .locals 0

    .line 710
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->streamSegments:Ljava/util/List;

    return-void
.end method

.method public setSubChannelAvatars(Ljava/util/List;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelAvatars:Ljava/util/List;

    return-void
.end method

.method public setSubChannelName(Ljava/lang/String;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelName:Ljava/lang/String;

    return-void
.end method

.method public setSubChannelUrl(Ljava/lang/String;)V
    .locals 0

    .line 557
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subChannelUrl:Ljava/lang/String;

    return-void
.end method

.method public setSubtitles(Ljava/util/List;)V
    .locals 0

    .line 646
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->subtitles:Ljava/util/List;

    return-void
.end method

.method public setSupportInfo(Ljava/lang/String;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->supportInfo:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/util/List;)V
    .locals 0

    .line 694
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->tags:Ljava/util/List;

    return-void
.end method

.method public setTextualUploadDate(Ljava/lang/String;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->textualUploadDate:Ljava/lang/String;

    return-void
.end method

.method public setThumbnails(Ljava/util/List;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->thumbnails:Ljava/util/List;

    return-void
.end method

.method public setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    return-void
.end method

.method public setUploaderAvatars(Ljava/util/List;)V
    .locals 0

    .line 525
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderAvatars:Ljava/util/List;

    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public setUploaderSubscriberCount(J)V
    .locals 0

    .line 541
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderSubscriberCount:J

    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderUrl:Ljava/lang/String;

    return-void
.end method

.method public setUploaderVerified(Z)V
    .locals 0

    .line 533
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->uploaderVerified:Z

    return-void
.end method

.method public setVideoOnlyStreams(Ljava/util/List;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoOnlyStreams:Ljava/util/List;

    return-void
.end method

.method public setVideoStreams(Ljava/util/List;)V
    .locals 0

    .line 574
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->videoStreams:Ljava/util/List;

    return-void
.end method

.method public setViewCount(J)V
    .locals 0

    .line 474
    iput-wide p1, p0, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->viewCount:J

    return-void
.end method
