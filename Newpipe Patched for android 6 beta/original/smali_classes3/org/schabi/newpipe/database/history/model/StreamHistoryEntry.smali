.class public final Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;
.super Ljava/lang/Object;
.source "StreamHistoryEntry.kt"


# instance fields
.field private final accessDate:Lj$/time/OffsetDateTime;

.field private final repeatCount:J

.field private final streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

.field private final streamId:J


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JLj$/time/OffsetDateTime;J)V
    .locals 1

    const-string v0, "streamEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessDate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 14
    iput-wide p2, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamId:J

    .line 17
    iput-object p4, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->accessDate:Lj$/time/OffsetDateTime;

    .line 20
    iput-wide p5, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->repeatCount:J

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;

    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    iget-object v3, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamId:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->accessDate:Lj$/time/OffsetDateTime;

    iget-object v3, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->accessDate:Lj$/time/OffsetDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->repeatCount:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->repeatCount:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;
    .locals 1

    .line 12
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    return-object v0
.end method

.method public final getStreamId()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamId:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->accessDate:Lj$/time/OffsetDateTime;

    invoke-virtual {v1}, Lj$/time/OffsetDateTime;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->repeatCount:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
    .locals 5

    .line 34
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 35
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    move-result v1

    .line 36
    iget-object v2, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 37
    iget-object v3, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 38
    iget-object v4, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v4}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v4

    .line 34
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    .line 40
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setDuration(J)V

    .line 41
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderName(Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderUrl(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->dbUrlToImageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/InfoItem;->setThumbnails(Ljava/util/List;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    iget-wide v1, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->streamId:J

    iget-object v3, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->accessDate:Lj$/time/OffsetDateTime;

    iget-wide v4, p0, Lorg/schabi/newpipe/database/history/model/StreamHistoryEntry;->repeatCount:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StreamHistoryEntry(streamEntity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", streamId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", accessDate="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", repeatCount="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
