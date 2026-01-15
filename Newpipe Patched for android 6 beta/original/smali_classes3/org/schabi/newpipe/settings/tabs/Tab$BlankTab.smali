.class public Lorg/schabi/newpipe/settings/tabs/Tab$BlankTab;
.super Lorg/schabi/newpipe/settings/tabs/Tab;
.source "Tab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/tabs/Tab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlankTab"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Lorg/schabi/newpipe/settings/tabs/Tab;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getFragment(Landroid/content/Context;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/settings/tabs/Tab$BlankTab;->getFragment(Landroid/content/Context;)Lorg/schabi/newpipe/fragments/BlankFragment;

    move-result-object p1

    return-object p1
.end method

.method public getFragment(Landroid/content/Context;)Lorg/schabi/newpipe/fragments/BlankFragment;
    .locals 0

    .line 208
    new-instance p1, Lorg/schabi/newpipe/fragments/BlankFragment;

    invoke-direct {p1}, Lorg/schabi/newpipe/fragments/BlankFragment;-><init>()V

    return-object p1
.end method

.method public getTabIconRes(Landroid/content/Context;)I
    .locals 0

    .line 0
    const p1, 0x7f080102

    return p1
.end method

.method public getTabId()I
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public getTabName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 197
    const-string p1, "NewPipe"

    return-object p1
.end method
