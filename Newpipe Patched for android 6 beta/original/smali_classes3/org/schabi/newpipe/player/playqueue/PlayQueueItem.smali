.class public Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;
.super Ljava/lang/Object;
.source "PlayQueueItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final duration:J

.field private error:Ljava/lang/Throwable;

.field private isAutoQueued:Z

.field private recoveryPosition:J

.field private final serviceId:I

.field private final streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private final thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final title:Ljava/lang/String;

.field private final uploader:Ljava/lang/String;

.field private final uploaderUrl:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$vA-o8T6BkmZw6CP1B3ol9GptCJ0(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->lambda$getStream$0(Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, ""

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->title:Ljava/lang/String;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    .line 63
    :goto_1
    iput-object p2, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->url:Ljava/lang/String;

    .line 64
    iput p3, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->serviceId:I

    .line 65
    iput-wide p4, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->duration:J

    .line 66
    iput-object p6, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->thumbnails:Ljava/util/List;

    if-eqz p7, :cond_2

    goto :goto_2

    :cond_2
    move-object p7, v0

    .line 67
    :goto_2
    iput-object p7, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->uploader:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->uploaderUrl:Ljava/lang/String;

    .line 69
    iput-object p9, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    const-wide/high16 p1, -0x8000000000000000L

    .line 71
    iput-wide p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->recoveryPosition:J

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 10

    .line 42
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v4

    .line 43
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v7

    .line 44
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v9

    move-object v0, p0

    .line 42
    invoke-direct/range {v0 .. v9}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    .line 46
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStartPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 47
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStartPosition()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {p0, v1, v2}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->setRecoveryPosition(J)V

    :cond_0
    return-void
.end method

.method constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 10

    .line 52
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    move-result-wide v4

    .line 53
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object v7

    .line 54
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v9

    move-object v0, p0

    .line 52
    invoke-direct/range {v0 .. v9}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;-><init>(Ljava/lang/String;Ljava/lang/String;IJLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    return-void
.end method

.method private synthetic lambda$getStream$0(Ljava/lang/Throwable;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->error:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->duration:J

    return-wide v0
.end method

.method public getRecoveryPosition()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->recoveryPosition:J

    return-wide v0
.end method

.method public getServiceId()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->serviceId:I

    return v0
.end method

.method public getStream()Lio/reactivex/rxjava3/core/Single;
    .locals 3

    .line 142
    iget v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->serviceId:I

    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->url:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 143
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 144
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    return-object v0
.end method

.method public getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUploader()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->uploader:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoQueued()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isAutoQueued:Z

    return v0
.end method

.method public isSameItem(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 86
    :cond_0
    iget v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->serviceId:I

    iget v2, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->serviceId:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->url:Ljava/lang/String;

    iget-object p1, p1, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->url:Ljava/lang/String;

    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public setAutoQueued(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->isAutoQueued:Z

    return-void
.end method

.method setRecoveryPosition(J)V
    .locals 0

    .line 132
    iput-wide p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->recoveryPosition:J

    return-void
.end method
