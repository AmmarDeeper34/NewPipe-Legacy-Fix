.class public final Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$getItemTouchCallback$1;
.super Lcom/xwray/groupie/TouchCallback;
.source "FeedGroupReorderDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->getItemTouchCallback()Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$getItemTouchCallback$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    .line 101
    invoke-direct {p0}, Lcom/xwray/groupie/TouchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public isItemViewSwipeEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    .line 109
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    .line 111
    iget-object p3, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$getItemTouchCallback$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    invoke-static {p3}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->access$getGroupAdapter$p(Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;)Lcom/xwray/groupie/GroupieAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 112
    iget-object p3, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog$getItemTouchCallback$1;->this$0:Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;

    iget-object p3, p3, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupReorderDialog;->groupOrderedIdList:Ljava/util/ArrayList;

    invoke-static {p3, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 0
    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
