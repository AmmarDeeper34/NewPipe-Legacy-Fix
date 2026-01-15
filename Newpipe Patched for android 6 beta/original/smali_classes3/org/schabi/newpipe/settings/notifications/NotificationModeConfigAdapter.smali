.class public final Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "NotificationModeConfigAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;,
        Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;,
        Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter;"
    }
.end annotation


# instance fields
.field private final listener:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;->INSTANCE:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;

    .line 18
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 19
    iput-object p1, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;->listener:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;

    return-void
.end method

.method public static final synthetic access$getListener$p(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;)Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;->listener:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$ModeToggleListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;->onBindViewHolder(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "get(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;->bind(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;
    .locals 2

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance p2, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p2, p0, p1}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$SubscriptionHolder;-><init>(Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;Lorg/schabi/newpipe/databinding/ItemNotificationConfigBinding;)V

    return-object p2
.end method

.method public final update(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "newData"

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

    .line 34
    new-instance v2, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUid()J

    move-result-wide v3

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getNotificationMode()I

    move-result v6

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getServiceId()I

    move-result v7

    invoke-virtual {v1}, Lorg/schabi/newpipe/database/subscription/SubscriptionEntity;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct/range {v2 .. v8}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;-><init>(JLjava/lang/String;IILjava/lang/String;)V

    .line 1635
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;->submitList(Ljava/util/List;)V

    return-void
.end method
