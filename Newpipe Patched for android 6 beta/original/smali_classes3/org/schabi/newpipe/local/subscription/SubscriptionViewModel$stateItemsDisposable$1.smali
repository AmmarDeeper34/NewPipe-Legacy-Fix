.class final Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;
.super Ljava/lang/Object;
.source "SubscriptionViewModel.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;->INSTANCE:Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionViewModel$stateItemsDisposable$1;->apply(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/util/List;)Ljava/util/List;
    .locals 10

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1563
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1634
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1635
    check-cast v1, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;

    .line 57
    new-instance v2, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->toChannelInfoItem()Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;

    move-result-object v3

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUid()J

    move-result-wide v4

    sget-object v6, Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;->MINI:Lorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/schabi/newpipe/local/subscription/item/ChannelItem;-><init>(Lorg/schabi/newpipe/extractor/channel/ChannelInfoItem;JLorg/schabi/newpipe/local/subscription/item/ChannelItem$ItemVersion;Lorg/schabi/newpipe/util/OnClickGesture;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 1635
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
