.class public final Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;
.super Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;
.source "PlaylistDuplicatesEntry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry$Companion;


# instance fields
.field private displayIndex:Ljava/lang/Long;

.field private final isThumbnailPermanent:Ljava/lang/Boolean;

.field private final orderingName:Ljava/lang/String;

.field private final streamCount:J

.field private final thumbnailStreamId:Ljava/lang/Long;

.field private final thumbnailUrl:Ljava/lang/String;

.field private final timesStreamIsContained:J

.field private final uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->Companion:Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;JLjava/lang/String;J)V
    .locals 10

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v5, p6

    move-wide/from16 v8, p7

    move-object/from16 v3, p9

    .line 18
    invoke-direct/range {v0 .. v9}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;J)V

    .line 19
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

    .line 22
    iput-object p3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailUrl:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    .line 28
    iput-object p5, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailStreamId:Ljava/lang/Long;

    .line 31
    iput-object v5, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    .line 34
    iput-wide v8, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->streamCount:J

    .line 37
    iput-object v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->orderingName:Ljava/lang/String;

    move-wide/from16 p1, p10

    .line 40
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailUrl:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailStreamId:Ljava/lang/Long;

    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailStreamId:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->streamCount:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->streamCount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->orderingName:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->orderingName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getDisplayIndex()Ljava/lang/Long;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    return-object v0
.end method

.method public getOrderingName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->orderingName:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamCount()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->streamCount:J

    return-wide v0
.end method

.method public getThumbnailStreamId()Ljava/lang/Long;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailStreamId:Ljava/lang/Long;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimesStreamIsContained()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

    return-wide v0
.end method

.method public getUid()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 5

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailUrl:Ljava/lang/String;

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

    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailStreamId:Ljava/lang/Long;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->streamCount:J

    invoke-static {v3, v4}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->orderingName:Ljava/lang/String;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isThumbnailPermanent()Ljava/lang/Boolean;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDisplayIndex(Ljava/lang/Long;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->uid:J

    iget-object v2, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailUrl:Ljava/lang/String;

    iget-object v3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    iget-object v4, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->thumbnailStreamId:Ljava/lang/Long;

    iget-object v5, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->displayIndex:Ljava/lang/Long;

    iget-wide v6, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->streamCount:J

    iget-object v8, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->orderingName:Ljava/lang/String;

    iget-wide v9, p0, Lorg/schabi/newpipe/database/playlist/PlaylistDuplicatesEntry;->timesStreamIsContained:J

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PlaylistDuplicatesEntry(uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", thumbnailUrl="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isThumbnailPermanent="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", thumbnailStreamId="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", displayIndex="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", streamCount="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", orderingName="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", timesStreamIsContained="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
