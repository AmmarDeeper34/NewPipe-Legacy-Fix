.class public final Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;
.super Ljava/lang/Object;
.source "PlaylistEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity$Companion;


# instance fields
.field private displayIndex:J

.field private isThumbnailPermanent:Z

.field private name:Ljava/lang/String;

.field private thumbnailStreamId:J

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->Companion:Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ZJJ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

    .line 21
    iput-object p3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    .line 24
    iput-boolean p4, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    .line 27
    iput-wide p5, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    .line 30
    iput-wide p7, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->displayIndex:J

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;ZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 16
    invoke-direct/range {v0 .. v8}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;-><init>(JLjava/lang/String;ZJJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJJ)V
    .locals 11

    .line 0
    const/4 v9, 0x1

    const/4 v10, 0x0

    const-wide/16 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v10}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;-><init>(JLjava/lang/String;ZJJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;)V
    .locals 10

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getUid()J

    move-result-wide v2

    .line 37
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getOrderingName()Ljava/lang/String;

    move-result-object v4

    .line 38
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->isThumbnailPermanent()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 39
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getThumbnailStreamId()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 40
    invoke-virtual {p1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->getDisplayIndex()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v1, p0

    .line 35
    invoke-direct/range {v1 .. v9}, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;-><init>(JLjava/lang/String;ZJJ)V

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    iget-boolean v3, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->displayIndex:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->displayIndex:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getDisplayIndex()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->displayIndex:J

    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getThumbnailStreamId()J
    .locals 2

    .line 28
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    return-wide v0
.end method

.method public final getUid()J
    .locals 2

    .line 19
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    invoke-static {v1}, Landroidx/work/Constraints$ContentUriTrigger$$ExternalSyntheticBackport0;->m(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->displayIndex:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isThumbnailPermanent()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    return v0
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    return-void
.end method

.method public final setThumbnailPermanent(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    return-void
.end method

.method public final setThumbnailStreamId(J)V
    .locals 0

    .line 28
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->uid:J

    iget-object v2, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->name:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->isThumbnailPermanent:Z

    iget-wide v4, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->thumbnailStreamId:J

    iget-wide v6, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistEntity;->displayIndex:J

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PlaylistEntity(uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", name="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", isThumbnailPermanent="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", thumbnailStreamId="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", displayIndex="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
