.class public final synthetic Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;

.field public final synthetic f$1:Lcom/xwray/groupie/viewbinding/GroupieViewHolder;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;Lcom/xwray/groupie/viewbinding/GroupieViewHolder;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;

    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem$$ExternalSyntheticLambda0;->f$1:Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;

    iget-object v1, p0, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem$$ExternalSyntheticLambda0;->f$1:Lcom/xwray/groupie/viewbinding/GroupieViewHolder;

    invoke-static {v0, v1, p1, p2}, Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;->$r8$lambda$fEfdMM74nBGlUCd7j-Ska5dwaQE(Lorg/schabi/newpipe/local/subscription/item/FeedGroupReorderItem;Lcom/xwray/groupie/viewbinding/GroupieViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
