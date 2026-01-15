.class public Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;
.super Lorg/schabi/newpipe/settings/tabs/Tab;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/tabs/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelTab"
.end annotation


# instance fields
.field private channelName:Ljava/lang/String;

.field private channelServiceId:I

.field private channelUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 407
    const-string v0, "<no-url>"

    const-string v1, "<no-name>"

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0, v1}, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 411
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>()V

    .line 412
    iput p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    .line 413
    iput-object p2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    .line 414
    iput-object p3, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/settings/tabs/Tab-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 458
    instance-of v0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 461
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;

    .line 462
    invoke-super {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    iget v2, v0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    iget-object v2, v0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    .line 464
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    iget-object v0, v0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    .line 465
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getChannelServiceId()I
    .locals 1

    .line 474
    iget v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    return v0
.end method

.method public bridge synthetic getFragment(Landroid/content/Context;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 397
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->getFragment(Landroid/content/Context;)Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragment(Landroid/content/Context;)Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;
    .locals 2

    .line 439
    iget p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->getInstance(ILjava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    move-result-object p1

    return-object p1
.end method

.method public getTabIconRes(Landroid/content/Context;)I
    .locals 0

    .line 0
    const p1, 0x7f08015e

    return p1
.end method

.method public getTabId()I
    .locals 1

    .line 0
    const/4 v0, 0x6

    return v0
.end method

.method public getTabName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 428
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    return-object p1
.end method

.method public hashCode()I
    .locals 6

    .line 470
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->getTabId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    iget-object v3, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v3, v4, v0

    invoke-static {v4}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected readDataFromJson(Lcom/grack/nanojson/JsonObject;)V
    .locals 2

    .line 451
    const-string v0, "channel_service_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    .line 452
    const-string v0, "channel_url"

    const-string v1, "<no-url>"

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    .line 453
    const-string v0, "channel_name"

    const-string v1, "<no-name>"

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    return-void
.end method

.method protected writeDataToJson(Lcom/grack/nanojson/JsonStringWriter;)V
    .locals 2

    .line 444
    const-string v0, "channel_service_id"

    iget v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelServiceId:I

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v0, "channel_url"

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelUrl:Ljava/lang/String;

    .line 445
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v0, "channel_name"

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$ChannelTab;->channelName:Ljava/lang/String;

    .line 446
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    return-void
.end method
