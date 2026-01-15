.class public final Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;
.super Ljava/lang/Object;
.source "StreamStatisticsEntry.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/LocalItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry$Companion;


# instance fields
.field private final latestAccessDate:Lj$/time/OffsetDateTime;

.field private final progressMillis:J

.field private final streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

.field private final streamId:J

.field private final watchCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->Companion:Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JJLj$/time/OffsetDateTime;J)V
    .locals 1

    const-string v0, "streamEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "latestAccessDate"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 24
    iput-wide p2, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->progressMillis:J

    .line 27
    iput-wide p4, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamId:J

    .line 30
    iput-object p6, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->latestAccessDate:Lj$/time/OffsetDateTime;

    .line 33
    iput-wide p7, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->watchCount:J

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->progressMillis:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->progressMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamId:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->latestAccessDate:Lj$/time/OffsetDateTime;

    iget-object v3, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->latestAccessDate:Lj$/time/OffsetDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->watchCount:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->watchCount:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getLatestAccessDate()Lj$/time/OffsetDateTime;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->latestAccessDate:Lj$/time/OffsetDateTime;

    return-object v0
.end method

.method public getLocalItemType()Lorg/schabi/newpipe/database/LocalItem$LocalItemType;
    .locals 1

    .line 38
    sget-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->STATISTIC_STREAM_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    return-object v0
.end method

.method public final getProgressMillis()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->progressMillis:J

    return-wide v0
.end method

.method public final getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    return-object v0
.end method

.method public final getStreamId()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamId:J

    return-wide v0
.end method

.method public final getWatchCount()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->watchCount:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->progressMillis:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamId:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->latestAccessDate:Lj$/time/OffsetDateTime;

    invoke-virtual {v1}, Lj$/time/OffsetDateTime;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->watchCount:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
    .locals 5

    .line 42
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 43
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    move-result v1

    .line 44
    iget-object v2, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 45
    iget-object v3, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 46
    iget-object v4, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v4}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v4

    .line 42
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    .line 48
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setDuration(J)V

    .line 49
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderName(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderUrl(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->dbUrlToImageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    iget-wide v1, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->progressMillis:J

    iget-wide v3, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->streamId:J

    iget-object v5, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->latestAccessDate:Lj$/time/OffsetDateTime;

    iget-wide v6, p0, Lorg/schabi/newpipe/database/stream/StreamStatisticsEntry;->watchCount:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StreamStatisticsEntry(streamEntity="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", progressMillis="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", streamId="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", latestAccessDate="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", watchCount="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
