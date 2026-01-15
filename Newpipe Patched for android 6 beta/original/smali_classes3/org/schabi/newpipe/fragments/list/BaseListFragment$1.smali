.class Lorg/schabi/newpipe/fragments/list/BaseListFragment$1;
.super Ljava/lang/Object;
.source "BaseListFragment.java"

# interfaces
.implements Lorg/schabi/newpipe/util/OnClickGesture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/fragments/list/BaseListFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/OnClickGesture$-CC;->$default$drag(Lorg/schabi/newpipe/util/OnClickGesture;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public bridge synthetic held(Ljava/lang/Object;)V
    .locals 0

    .line 256
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$1;->held(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method

.method public held(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->showInfoItemDialog(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method

.method public bridge synthetic selected(Ljava/lang/Object;)V
    .locals 0

    .line 256
    check-cast p1, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment$1;->selected(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method

.method public selected(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$1;->this$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->-$$Nest$monStreamSelected(Lorg/schabi/newpipe/fragments/list/BaseListFragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    return-void
.end method
