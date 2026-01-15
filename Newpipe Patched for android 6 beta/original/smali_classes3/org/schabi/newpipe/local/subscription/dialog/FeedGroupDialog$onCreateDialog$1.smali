.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onCreateDialog$1;
.super Landroid/app/Dialog;
.source "FeedGroupDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;Landroidx/fragment/app/FragmentActivity;I)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onCreateDialog$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    .line 96
    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog$onCreateDialog$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialog;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    :cond_0
    return-void
.end method
