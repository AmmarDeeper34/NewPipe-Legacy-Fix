.class public Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;
.super Lorg/schabi/newpipe/settings/tabs/Tab;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/tabs/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaylistTab"
.end annotation


# instance fields
.field private playlistId:J

.field private playlistName:Ljava/lang/String;

.field private playlistServiceId:I

.field private playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

.field private playlistUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 539
    const-string v2, "<no-name>"

    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;-><init>(JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 551
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>()V

    .line 552
    iput p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    .line 553
    iput-object p2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    .line 554
    iput-object p3, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 555
    sget-object p1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_REMOTE_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    const-wide/16 p1, -0x1

    .line 556
    iput-wide p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 542
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>()V

    .line 543
    iput-object p3, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 544
    iput-wide p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    .line 545
    sget-object p1, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    const/4 p1, -0x1

    .line 546
    iput p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    .line 547
    const-string p1, "<no-url>"

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 560
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/settings/tabs/Tab-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 612
    instance-of v0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 616
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;

    .line 618
    invoke-super {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    iget v2, v0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    if-ne p1, v2, :cond_1

    iget-wide v2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    iget-wide v4, v0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    iget-object v2, v0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    .line 621
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    iget-object v2, v0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 622
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    iget-object v0, v0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getFragment(Landroid/content/Context;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 581
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    sget-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    if-ne p1, v0, :cond_0

    .line 582
    iget-wide v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->getInstance(JLjava/lang/String;)Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    move-result-object p1

    return-object p1

    .line 585
    :cond_0
    iget p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->getInstance(ILjava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    move-result-object p1

    return-object p1
.end method

.method public getPlaylistServiceId()I
    .locals 1

    .line 639
    iget v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    return v0
.end method

.method public getTabIconRes(Landroid/content/Context;)I
    .locals 0

    .line 0
    const p1, 0x7f0800ea

    return p1
.end method

.method public getTabId()I
    .locals 1

    .line 0
    const/16 v0, 0x8

    return v0
.end method

.method public getTabName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 570
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    return-object p1
.end method

.method public hashCode()I
    .locals 8

    .line 629
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->getTabId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    .line 630
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    .line 631
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    iget-object v5, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    const/4 v0, 0x4

    aput-object v4, v6, v0

    const/4 v0, 0x5

    aput-object v5, v6, v0

    .line 628
    invoke-static {v6}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected readDataFromJson(Lcom/grack/nanojson/JsonObject;)V
    .locals 3

    .line 600
    const-string v0, "playlist_service_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    .line 601
    const-string v0, "playlist_url"

    const-string v2, "<no-url>"

    invoke-virtual {p1, v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    .line 602
    const-string v0, "playlist_name"

    const-string v2, "<no-name>"

    invoke-virtual {p1, v0, v2}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 603
    const-string v0, "playlist_id"

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    .line 604
    sget-object v0, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->PLAYLIST_LOCAL_ITEM:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 606
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    const-string v1, "playlist_type"

    invoke-virtual {p1, v1, v0}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 604
    invoke-static {p1}, Lorg/schabi/newpipe/database/LocalItem$LocalItemType;->valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    return-void
.end method

.method protected writeDataToJson(Lcom/grack/nanojson/JsonStringWriter;)V
    .locals 3

    .line 591
    const-string v0, "playlist_service_id"

    iget v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistServiceId:I

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v0, "playlist_url"

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistUrl:Ljava/lang/String;

    .line 592
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v0, "playlist_name"

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistName:Ljava/lang/String;

    .line 593
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v0, "playlist_id"

    iget-wide v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistId:J

    .line 594
    invoke-virtual {p1, v0, v1, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;J)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;->playlistType:Lorg/schabi/newpipe/database/LocalItem$LocalItemType;

    .line 595
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "playlist_type"

    invoke-virtual {p1, v1, v0}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    return-void
.end method
