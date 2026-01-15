.class public final synthetic Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/schabi/newpipe/util/OnClickGesture;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/BaseListFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    return-void
.end method


# virtual methods
.method public synthetic drag(Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/OnClickGesture$-CC;->$default$drag(Lorg/schabi/newpipe/util/OnClickGesture;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public synthetic held(Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/OnClickGesture$-CC;->$default$held(Lorg/schabi/newpipe/util/OnClickGesture;Ljava/lang/Object;)V

    return-void
.end method

.method public final selected(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/BaseListFragment$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/fragments/list/BaseListFragment;

    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/fragments/list/BaseListFragment;->$r8$lambda$siSEanNQisbJxIGt2KK4BAfs_9o(Lorg/schabi/newpipe/fragments/list/BaseListFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V

    return-void
.end method
