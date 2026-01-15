.class public Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PlayQueueItemHolder.java"


# instance fields
.field final itemAdditionalDetailsView:Landroid/widget/TextView;

.field public final itemDurationView:Landroid/widget/TextView;

.field final itemHandle:Landroid/widget/ImageView;

.field public final itemRoot:Landroid/view/View;

.field public final itemThumbnailView:Landroid/widget/ImageView;

.field public final itemVideoTitleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01e4

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemRoot:Landroid/view/View;

    const v0, 0x7f0a01e9

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemVideoTitleView:Landroid/widget/TextView;

    const v0, 0x7f0a01e1

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemDurationView:Landroid/widget/TextView;

    const v0, 0x7f0a01de

    .line 50
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemAdditionalDetailsView:Landroid/widget/TextView;

    const v0, 0x7f0a01e6

    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemThumbnailView:Landroid/widget/ImageView;

    const v0, 0x7f0a01e2

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueItemHolder;->itemHandle:Landroid/widget/ImageView;

    return-void
.end method
