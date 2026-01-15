.class public final Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;
.super Ljava/lang/Object;
.source "PlaylistStreamEntry.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/LocalItem;


# instance fields
.field private final joinIndex:I

.field private final progressMillis:J

.field private final streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

.field private final streamId:J


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/database/stream/model/StreamEntity;JJI)V
    .locals 1

    const-string v0, "streamEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 22
    iput-wide p2, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->progressMillis:J

    .line 25
    iput-wide p4, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamId:J

    .line 28
    iput p6, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->joinIndex:I

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;

    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->progressMillis:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->progressMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamId:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->joinIndex:I

    iget p1, p1, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->joinIndex:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getLocalItemType()Lorg/schabi/newpipe/database/LocalItem$LocalItemType;
    .locals 1

    .line 33
    sget-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_STREAM_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    return-object v0
.end method

.method public final getProgressMillis()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->progressMillis:J

    return-wide v0
.end method

.method public final getStreamEntity()Lorg/schabi/newpipe/database/stream/model/StreamEntity;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    return-object v0
.end method

.method public final getStreamId()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->progressMillis:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamId:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->joinIndex:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toStreamInfoItem()Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;
    .locals 5

    .line 37
    new-instance v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 38
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getServiceId()I

    move-result v1

    .line 39
    iget-object v2, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v2}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 40
    iget-object v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v3}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 41
    iget-object v4, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v4}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v4

    .line 37
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;-><init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/StreamType;)V

    .line 43
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setDuration(J)V

    .line 44
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderName(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;->getUploaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->setUploaderUrl(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

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
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamEntity:Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    iget-wide v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->progressMillis:J

    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->streamId:J

    iget v5, p0, Lorg/schabi/newpipe/database/playlist/PlaylistStreamEntry;->joinIndex:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PlaylistStreamEntry(streamEntity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", progressMillis="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", streamId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", joinIndex="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
