.class public final Lorg/schabi/newpipe/database/stream/model/StreamEntity;
.super Ljava/lang/Object;
.source "StreamEntity.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/stream/model/StreamEntity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/stream/model/StreamEntity$Companion;


# instance fields
.field private duration:J

.field private isUploadDateApproximation:Ljava/lang/Boolean;

.field private serviceId:I

.field private streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

.field private textualUploadDate:Ljava/lang/String;

.field private thumbnailUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uid:J

.field private uploadDate:Lj$/time/OffsetDateTime;

.field private uploader:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private viewCount:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->Companion:Lorg/schabi/newpipe/database/stream/model/StreamEntity$Companion;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "streamType"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploader"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    .line 31
    iput p3, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    .line 34
    iput-object p4, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    .line 37
    iput-object p5, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    .line 43
    iput-wide p7, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    .line 46
    iput-object p9, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    .line 49
    iput-object p10, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    .line 52
    iput-object p11, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    .line 55
    iput-object p12, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    .line 58
    iput-object p13, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    .line 61
    iput-object p14, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    move-object/from16 p1, p15

    .line 64
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object/from16 v13, p10

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    move-object v14, v2

    goto :goto_2

    :cond_2
    move-object/from16 v14, p11

    :goto_2
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3

    move-object v15, v2

    goto :goto_3

    :cond_3
    move-object/from16 v15, p12

    :goto_3
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    move-object/from16 v16, v2

    goto :goto_4

    :cond_4
    move-object/from16 v16, p13

    :goto_4
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    move-object/from16 v17, v2

    goto :goto_5

    :cond_5
    move-object/from16 v17, p14

    :goto_5
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_6

    move-object/from16 v18, v2

    :goto_6
    move-object/from16 v3, p0

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-object/from16 v12, p9

    goto :goto_7

    :cond_6
    move-object/from16 v18, p15

    goto :goto_6

    .line 26
    :goto_7
    invoke-direct/range {v3 .. v18}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 19

    const-string v0, "info"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v4

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v0, "getUrl(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v0, "getName(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v7

    const-string v0, "getStreamType(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getDuration()J

    move-result-wide v8

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v10

    const-string v0, "getUploaderName(...)"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderUrl()Ljava/lang/String;

    move-result-object v11

    .line 82
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getViewCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 83
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Lj$/time/OffsetDateTime;

    move-result-object v0

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object v15, v2

    .line 84
    :goto_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->isApproximation()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_1
    move-object/from16 v16, v2

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    .line 78
    invoke-direct/range {v1 .. v18}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 19

    const-string v0, "item"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v4

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v0, "getUrl(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v0, "getName(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v7

    const-string v0, "getStreamType(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    move-result-wide v8

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object v10

    const-string v0, "getUploaderName(...)"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderUrl()Ljava/lang/String;

    move-result-object v11

    .line 72
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getViewCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 73
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getTextualUploadDate()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->offsetDateTime()Lj$/time/OffsetDateTime;

    move-result-object v0

    move-object v15, v0

    goto :goto_0

    :cond_0
    move-object v15, v2

    .line 74
    :goto_0
    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;->isApproximation()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :cond_1
    move-object/from16 v16, v2

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    .line 68
    invoke-direct/range {v1 .. v18}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V
    .locals 19

    const-string v0, "item"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result v4

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    const-string v0, "getUrl(...)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    const-string v0, "getTitle(...)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v7

    const-string v0, "getStreamType(...)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getDuration()J

    move-result-wide v8

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploader()Ljava/lang/String;

    move-result-object v10

    const-string v0, "getUploader(...)"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploaderUrl()Ljava/lang/String;

    move-result-object v11

    .line 92
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    const/16 v17, 0x1e01

    const/16 v18, 0x0

    const-wide/16 v2, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    .line 88
    invoke-direct/range {v1 .. v18}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lj$/time/OffsetDateTime;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    iget v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    iget-object p1, p1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final getDuration()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    return-wide v0
.end method

.method public final getServiceId()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    return v0
.end method

.method public final getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    return-object v0
.end method

.method public final getTextualUploadDate()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUid()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    return-wide v0
.end method

.method public final getUploadDate()Lj$/time/OffsetDateTime;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public final getUploader()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    return-object v0
.end method

.method public final getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final getViewCount()Ljava/lang/Long;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lj$/time/OffsetDateTime;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public final isUploadDateApproximation()Ljava/lang/Boolean;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final setDuration(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    return-void
.end method

.method public final setTextualUploadDate(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    return-void
.end method

.method public final setUid(J)V
    .locals 0

    .line 29
    iput-wide p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    return-void
.end method

.method public final setUploadDate(Lj$/time/OffsetDateTime;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    return-void
.end method

.method public final setUploadDateApproximation(Ljava/lang/Boolean;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    return-void
.end method

.method public final toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
    .locals 5

    .line 96
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    iget v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    iget-object v2, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    iget-object v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    .line 97
    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setDuration(J)V

    .line 98
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderName(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderUrl(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->dbUrlToImageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V

    .line 102
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v2, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setViewCount(J)V

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setTextualUploadDate(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    if-eqz v1, :cond_2

    .line 105
    new-instance v2, Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    iget-object v3, p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v2, v1, v3}, Lorg/schabi/newpipe/extractor/localization/DateWrapper;-><init>(Lj$/time/OffsetDateTime;Z)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 104
    :goto_1
    invoke-virtual {v0, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .line 0
    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uid:J

    iget v3, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->serviceId:I

    iget-object v4, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->url:Ljava/lang/String;

    iget-object v5, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->title:Ljava/lang/String;

    iget-object v6, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->streamType:Lorg/schabi/newpipe/extractor/stream/StreamType;

    iget-wide v7, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->duration:J

    iget-object v9, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploader:Ljava/lang/String;

    iget-object v10, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploaderUrl:Ljava/lang/String;

    iget-object v11, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->thumbnailUrl:Ljava/lang/String;

    iget-object v12, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->viewCount:Ljava/lang/Long;

    iget-object v13, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->textualUploadDate:Ljava/lang/String;

    iget-object v14, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->uploadDate:Lj$/time/OffsetDateTime;

    iget-object v15, v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->isUploadDateApproximation:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v15

    const-string v15, "StreamEntity(uid="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", serviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", streamType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uploader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uploaderUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnailUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", viewCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textualUploadDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", uploadDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isUploadDateApproximation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
