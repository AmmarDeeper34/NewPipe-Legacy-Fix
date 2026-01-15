.class public Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;
.super Lorg/schabi/newpipe/settings/tabs/Tab;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/tabs/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedGroupTab"
.end annotation


# instance fields
.field private feedGroupId:Ljava/lang/Long;

.field private feedGroupName:Ljava/lang/String;

.field private iconId:I


# direct methods
.method private constructor <init>()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 668
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "<no-name>"

    const v2, 0x7f0800e7

    invoke-direct {p0, v0, v1, v2}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;-><init>(Ljava/lang/Long;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .locals 0

    .line 680
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>(Lcom/grack/nanojson/JsonObject;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;I)V
    .locals 0

    .line 672
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>()V

    .line 673
    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    .line 674
    iput-object p2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    .line 675
    iput p3, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    return-void
.end method

.method synthetic constructor <init>(Lorg/schabi/newpipe/settings/tabs/Tab-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 720
    instance-of v0, p1, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 723
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;

    .line 724
    invoke-super {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    iget-object v2, v0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    .line 725
    invoke-virtual {p1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    iget-object v2, v0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    .line 726
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    iget v0, v0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getFeedGroupName()Ljava/lang/String;
    .locals 1

    .line 740
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getFragment(Landroid/content/Context;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 658
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->getFragment(Landroid/content/Context;)Lorg/schabi/newpipe/local/feed/FeedFragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragment(Landroid/content/Context;)Lorg/schabi/newpipe/local/feed/FeedFragment;
    .locals 2

    .line 701
    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/local/feed/FeedFragment;->newInstance(JLjava/lang/String;)Lorg/schabi/newpipe/local/feed/FeedFragment;

    move-result-object p1

    return-object p1
.end method

.method public getTabIconRes(Landroid/content/Context;)I
    .locals 0

    .line 696
    iget p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    return p1
.end method

.method public getTabId()I
    .locals 1

    .line 0
    const/16 v0, 0x9

    return v0
.end method

.method public getTabName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f1201e0

    .line 690
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 6

    .line 732
    invoke-virtual {p0}, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->getTabId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    iget-object v2, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    iget v3, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

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
    .locals 3

    .line 713
    const-string v0, "feed_group_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/grack/nanojson/JsonObject;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    .line 714
    const-string v0, "feed_group_name"

    const-string v1, "<no-name>"

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    .line 715
    const-string v0, "feed_group_icon"

    const v1, 0x7f0800e7

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonObject;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    return-void
.end method

.method protected writeDataToJson(Lcom/grack/nanojson/JsonStringWriter;)V
    .locals 2

    .line 706
    const-string v0, "feed_group_id"

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupId:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/Number;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v0, "feed_group_name"

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->feedGroupName:Ljava/lang/String;

    .line 707
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/grack/nanojson/JsonWriterBase;

    move-result-object p1

    check-cast p1, Lcom/grack/nanojson/JsonStringWriter;

    const-string v0, "feed_group_icon"

    iget v1, p0, Lorg/schabi/newpipe/settings/tabs/Tab$FeedGroupTab;->iconId:I

    .line 708
    invoke-virtual {p1, v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->value(Ljava/lang/String;I)Lcom/grack/nanojson/JsonWriterBase;

    return-void
.end method
