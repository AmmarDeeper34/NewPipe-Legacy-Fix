.class public final Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$listenerChannelItem$1;
.super Ljava/lang/Object;
.source "SubscriptionFragment.kt"

# interfaces
.implements Lorg/schabi/newpipe/util/OnClickGesture;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$listenerChannelItem$1;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 374
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

    .line 374
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$listenerChannelItem$1;->held(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V

    return-void
.end method

.method public held(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V
    .locals 1

    const-string v0, "selectedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$listenerChannelItem$1;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->access$showLongTapDialog(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V

    return-void
.end method

.method public bridge synthetic selected(Ljava/lang/Object;)V
    .locals 0

    .line 374
    check-cast p1, Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$listenerChannelItem$1;->selected(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V

    return-void
.end method

.method public selected(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;)V
    .locals 3

    const-string v0, "selectedItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$listenerChannelItem$1;->this$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->access$getFM(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 377
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 375
    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
