.class public Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;
.super Ljava/lang/Object;
.source "PlaylistMetadataEntry.kt"

# interfaces
.implements Lorg/schabi/newpipe/database/playlist/PlaylistLocalItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry$Companion;


# instance fields
.field private displayIndex:Ljava/lang/Long;

.field private final isThumbnailPermanent:Ljava/lang/Boolean;

.field private final orderingName:Ljava/lang/String;

.field private final streamCount:J

.field private final thumbnailStreamId:Ljava/lang/Long;

.field private final thumbnailUrl:Ljava/lang/String;

.field private final uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->Companion:Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->uid:J

    .line 17
    iput-object p3, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->orderingName:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->thumbnailUrl:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->displayIndex:Ljava/lang/Long;

    .line 26
    iput-object p6, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    .line 29
    iput-object p7, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->thumbnailStreamId:Ljava/lang/Long;

    .line 32
    iput-wide p8, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->streamCount:J

    return-void
.end method


# virtual methods
.method public getDisplayIndex()Ljava/lang/Long;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->displayIndex:Ljava/lang/Long;

    return-object v0
.end method

.method public getLocalItemType()Lorg/schabi/newpipe/database/LocalItem$LocalItemType;
    .locals 1

    .line 37
    sget-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    return-object v0
.end method

.method public getOrderingName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->orderingName:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamCount()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->streamCount:J

    return-wide v0
.end method

.method public getThumbnailStreamId()Ljava/lang/Long;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->thumbnailStreamId:Ljava/lang/Long;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->thumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 15
    iget-wide v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->uid:J

    return-wide v0
.end method

.method public isThumbnailPermanent()Ljava/lang/Boolean;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->isThumbnailPermanent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDisplayIndex(Ljava/lang/Long;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lorg/schabi/newpipe/database/playlist/PlaylistMetadataEntry;->displayIndex:Ljava/lang/Long;

    return-void
.end method
