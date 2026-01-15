.class public abstract Lorg/schabi/newpipe/settings/tabs/Tab;
.super Ljava/lang/Object;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/tabs/Tab$Type;,
        Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;,
        Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;,
        Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;,
        Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;,
        Lorg/schabi/newpipe/settings/tabs/Tab$DefaultKioskTab;,
        Lorg/schabi/newpipe/settings/tabs/Tab$HistoryTab;,
        Lorg/schabi/newpipe/settings/tabs/Tab$BookmarksTab;,
        Lorg/schabi/newpipe/settings/tabs/Tab$FeedTab;,
        Lorg/schabi/newpipe/settings/tabs/Tab$SubscriptionsTab;,
        Lorg/schabi/newpipe/settings/tabs/Tab$BlankTab;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->readDataFromJson(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method private static from(ILcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/settings/tabs/Tab;
    .locals 2

    .line 82
    invoke-static {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;->typeFrom(I)Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_5

    .line 89
    sget-object v0, Lorg/schabi/newpipe/settings/tabs/Tab$1;->$SwitchMap$org$schabi$newpipe$settings$tabs$Tab$Type:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    new-instance p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object p0

    .line 95
    :cond_2
    new-instance p0, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$PlaylistTab;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object p0

    .line 93
    :cond_3
    new-instance p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object p0

    .line 91
    :cond_4
    new-instance p0, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$KioskTab;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-object p0

    .line 101
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTab()Lorg/schabi/newpipe/settings/tabs/Tab;

    move-result-object p0

    return-object p0
.end method

.method public static from(Lcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/settings/tabs/Tab;
    .locals 2

    .line 56
    const-string v0, "tab_id"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_0
    invoke-static {v0, p0}, Lorg/schabi/newpipe/settings/tabs/Tab;->from(ILcom/grack/nanojson/JsonObject;)Lorg/schabi/newpipe/settings/tabs/Tab;

    move-result-object p0

    return-object p0
.end method

.method public static typeFrom(I)Lorg/schabi/newpipe/settings/tabs/Tab$Type;
    .locals 5

    .line 72
    invoke-static {}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->values()[Lorg/schabi/newpipe/settings/tabs/Tab$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 73
    invoke-virtual {v3}, Lorg/schabi/newpipe/settings/tabs/Tab$Type;->getTabId()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 121
    instance-of v0, p1, Lorg/schabi/newpipe/settings/tabs/Tab;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    check-cast p1, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 125
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public abstract getFragment(Landroid/content/Context;)Landroidx/fragment/app/Fragment;
.end method

.method public abstract getTabIconRes(Landroid/content/Context;)I
.end method

.method public abstract getTabId()I
.end method

.method public abstract getTabName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 1

    .line 130
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected readDataFromJson(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected writeDataToJson(Lcom/grack/nanojson/JsonStringWriter;)V
    .locals 0

    .line 0
    return-void
.end method

.method public writeJsonOn(Lcom/grack/nanojson/JsonStringWriter;)V
    .locals 2

    .line 138
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonStringWriter;->object()Lcom/grack/nanojson/JsonWriterBase;

    .line 140
    const-string v0, "tab_id"

    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    .line 141
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->writeDataToJson(Lcom/grack/nanojson/JsonStringWriter;)V

    .line 143
    invoke-virtual {p1}, Lcom/grack/nanojson/JsonStringWriter;->end()Lcom/grack/nanojson/JsonWriterBase;

    return-void
.end method
