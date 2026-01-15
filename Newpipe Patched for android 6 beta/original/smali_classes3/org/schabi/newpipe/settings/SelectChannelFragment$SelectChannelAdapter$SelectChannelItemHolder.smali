.class public Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelectChannelFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectChannelItemHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;

.field final thumbnailView:Landroid/widget/ImageView;

.field final titleView:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;Landroid/view/View;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;->this$1:Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter;

    .line 206
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 207
    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;->view:Landroid/view/View;

    const p1, 0x7f0a01e6

    .line 208
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;->thumbnailView:Landroid/widget/ImageView;

    const p1, 0x7f0a01e7

    .line 209
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectChannelFragment$SelectChannelAdapter$SelectChannelItemHolder;->titleView:Landroid/widget/TextView;

    return-void
.end method
