.class Lorg/schabi/newpipe/fragments/list/BaseListFragment$DefaultItemListOnScrolledDownListener;
.super Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;
.source "BaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/fragments/list/BaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultItemListOnScrolledDownListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$DefaultItemListOnScrolledDownListener;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    invoke-direct {p0}, Lorg/schabi/newpipe/fragments/OnScrollBelowItemsListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolledDown(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 372
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$DefaultItemListOnScrolledDownListener;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    invoke-virtual {p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->onScrollToBottom()V

    return-void
.end method
