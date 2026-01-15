.class public final Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;
.super Ljava/lang/Object;
.source "PlaylistRemoteEntity.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity$Companion;


# instance fields
.field private displayIndex:J

.field private final orderingName:Ljava/lang/String;

.field private final serviceId:I

.field private final streamCount:Ljava/lang/Long;

.field private final thumbnailUrl:Ljava/lang/String;

.field private uid:J

.field private final uploader:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->Companion:Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity$Companion;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    .line 38
    iput p3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    .line 41
    iput-object p4, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    .line 47
    iput-object p6, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->thumbnailUrl:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uploader:Ljava/lang/String;

    .line 53
    iput-wide p8, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->displayIndex:J

    .line 56
    iput-object p10, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->streamCount:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p11, 0x1

    if-eqz v0, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p11, 0x2

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const/4 v3, -0x1

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p1, p11, 0x40

    if-eqz p1, :cond_2

    const-wide/16 p1, -0x1

    move-wide v8, p1

    :goto_1
    move-object v0, p0

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v10, p10

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p8

    goto :goto_1

    .line 33
    :goto_2
    invoke-direct/range {v0 .. v10}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)V
    .locals 14

    const-string v0, "playlistInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v4

    .line 62
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v6

    .line 65
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getThumbnails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderAvatars()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getThumbnails()Ljava/util/List;

    move-result-object v0

    .line 64
    :goto_0
    invoke-static {v0}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderName()Ljava/lang/String;

    move-result-object v8

    .line 72
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getStreamCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v12, 0x41

    const/4 v13, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v9, 0x0

    move-object v1, p0

    .line 60
    invoke-direct/range {v1 .. v13}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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
    instance-of v1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;

    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    iget v3, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->thumbnailUrl:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uploader:Ljava/lang/String;

    iget-object v3, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uploader:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->displayIndex:J

    iget-wide v5, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->displayIndex:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->streamCount:Ljava/lang/Long;

    iget-object p1, p1, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->streamCount:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public getDisplayIndex()Ljava/lang/Long;
    .locals 2

    .line 54
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->displayIndex:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLocalItemType()Lorg/schabi/newpipe/database/LocalItem$LocalItemType;
    .locals 1

    .line 76
    sget-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_REMOTE_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    return-object v0
.end method

.method public getOrderingName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

    return-object v0
.end method

.method public final getServiceId()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    return v0
.end method

.method public final getStreamCount()Ljava/lang/Long;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->streamCount:Ljava/lang/Long;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    return-wide v0
.end method

.method public final getUploader()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uploader:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    invoke-static {v0, v1}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

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

    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->thumbnailUrl:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uploader:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->displayIndex:J

    invoke-static {v3, v4}, Landroidx/work/impl/model/WorkSpec$$ExternalSyntheticBackport0;->m(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->streamCount:Ljava/lang/Long;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final isIdenticalTo(Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;)Z
    .locals 5

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getServiceId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->streamCount:Ljava/lang/Long;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getStreamCount()J

    move-result-wide v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getOrderingName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getThumbnails()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/schabi/newpipe/util/image/ImageStrategy;->imageListToDbUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uploader:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo;->getUploaderName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setDisplayIndex(J)V
    .locals 0

    .line 54
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->displayIndex:J

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 0
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uid:J

    iget v2, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->serviceId:I

    iget-object v3, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->orderingName:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->url:Ljava/lang/String;

    iget-object v5, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->thumbnailUrl:Ljava/lang/String;

    iget-object v6, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->uploader:Ljava/lang/String;

    iget-wide v7, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->displayIndex:J

    iget-object v9, p0, Lorg/schabi/newpipe/database/playlist/model/PlaylistRemoteEntity;->streamCount:Ljava/lang/Long;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PlaylistRemoteEntity(uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", serviceId="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", orderingName="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", url="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", thumbnailUrl="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", uploader="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", displayIndex="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", streamCount="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
