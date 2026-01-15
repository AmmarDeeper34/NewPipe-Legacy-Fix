.class public final synthetic Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;

.field public final synthetic f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;

    iput-object p2, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;

    iget-object v1, p0, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder$$ExternalSyntheticLambda0;->f$1:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {v0, v1, p1, p2}, Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;->$r8$lambda$4nz15XJB5kZmtN040qxwjikapoQ(Lorg/schabi/newpipe/settings/tabs/ChooseTabsFragment$SelectedTabsAdapter$TabViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
