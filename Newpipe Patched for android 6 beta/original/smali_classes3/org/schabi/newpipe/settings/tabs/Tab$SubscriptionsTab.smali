.class public Lorg/schabi/newpipe/settings/tabs/Tab$SubscriptionsTab;
.super Lorg/schabi/newpipe/settings/tabs/Tab;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/tabs/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionsTab"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 212
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getFragment(Landroid/content/Context;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 212
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$SubscriptionsTab;->getFragment(Landroid/content/Context;)Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragment(Landroid/content/Context;)Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;
    .locals 0

    .line 233
    new-instance p1, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    invoke-direct {p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;-><init>()V

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
    const/4 v0, 0x1

    return v0
.end method

.method public getTabName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f120482

    .line 222
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
