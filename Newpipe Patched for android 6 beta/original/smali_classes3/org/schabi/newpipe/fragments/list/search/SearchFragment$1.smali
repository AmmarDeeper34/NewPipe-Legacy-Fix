.class Lorg/schabi/newpipe/fragments/list/search/SearchFragment$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->initViews(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 0

    .line 365
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getSuggestionMovementFlags(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result p1

    return p1
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 377
    iget-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    invoke-virtual {p2, p1}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->onSuggestionItemSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
