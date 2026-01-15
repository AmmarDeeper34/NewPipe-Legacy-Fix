.class public Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;
.super Ljava/lang/Object;
.source "StreamDialogEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;
    }
.end annotation


# instance fields
.field public final action:Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;

.field public final resource:I


# direct methods
.method public constructor <init>(ILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;->resource:I

    .line 21
    iput-object p2, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;->action:Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;

    return-void
.end method


# virtual methods
.method public getString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 25
    iget v0, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;->resource:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
