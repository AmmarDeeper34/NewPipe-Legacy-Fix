.class public final Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;
.super Ljava/lang/Object;
.source "PlaylistStreamEntity.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/LocalItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity$Companion;


# instance fields
.field private final index:I

.field private final playlistUid:J

.field private final streamUid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->Companion:Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity$Companion;

    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->playlistUid:J

    .line 52
    iput-wide p3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->streamUid:J

    .line 55
    iput p5, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->index:I

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->playlistUid:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->playlistUid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->streamUid:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->streamUid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->index:I

    iget p1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->index:I

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->index:I

    return v0
.end method

.method public getLocalItemType()Lorg/schabi/newpipe/database/LocalItem$LocalItemType;
    .locals 1

    .line 60
    sget-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_STREAM_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    return-object v0
.end method

.method public final getPlaylistUid()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->playlistUid:J

    return-wide v0
.end method

.method public final getStreamUid()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->streamUid:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->playlistUid:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->streamUid:J

    invoke-static {v1, v2}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->index:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->playlistUid:J

    iget-wide v2, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->streamUid:J

    iget v4, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistStreamEntity;->index:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PlaylistStreamEntity(playlistUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", streamUid="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", index="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
