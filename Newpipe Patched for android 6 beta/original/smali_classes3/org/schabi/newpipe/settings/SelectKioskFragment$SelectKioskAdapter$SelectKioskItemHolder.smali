.class public Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SelectKioskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectKioskItemHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;

.field final thumbnailView:Landroid/widget/ImageView;

.field final titleView:Landroid/widget/TextView;

.field public final view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;Landroid/view/View;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;->this$1:Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter;

    .line 158
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 159
    iput-object p2, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;->view:Landroid/view/View;

    const p1, 0x7f0a01e6

    .line 160
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;->thumbnailView:Landroid/widget/ImageView;

    const p1, 0x7f0a01e7

    .line 161
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/schabi/newpipe/settings/SelectKioskFragment$SelectKioskAdapter$SelectKioskItemHolder;->titleView:Landroid/widget/TextView;

    return-void
.end method
