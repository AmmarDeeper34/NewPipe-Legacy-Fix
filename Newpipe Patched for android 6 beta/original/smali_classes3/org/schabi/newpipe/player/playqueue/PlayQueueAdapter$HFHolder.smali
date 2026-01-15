.class public Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$HFHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PlayQueueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HFHolder"
.end annotation


# instance fields
.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 225
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$HFHolder;->view:Landroid/view/View;

    return-void
.end method
