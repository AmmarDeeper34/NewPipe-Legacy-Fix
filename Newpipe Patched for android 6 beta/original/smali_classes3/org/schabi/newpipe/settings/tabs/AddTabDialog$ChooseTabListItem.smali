.class final Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;
.super Ljava/lang/Object;
.source "AddTabDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/tabs/AddTabDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ChooseTabListItem"
.end annotation


# instance fields
.field final itemIcon:I

.field final itemName:Ljava/lang/String;

.field final tabId:I


# direct methods
.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->tabId:I

    .line 47
    iput-object p2, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->itemName:Ljava/lang/String;

    .line 48
    iput p3, p0, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;->itemIcon:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/schabi/newpipe/settings/tabs/Tab;)V
    .locals 2

    .line 41
    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    move-result v0

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabIconRes(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lorg/schabi/newpipe/settings/tabs/AddTabDialog$ChooseTabListItem;-><init>(ILjava/lang/String;I)V

    return-void
.end method
