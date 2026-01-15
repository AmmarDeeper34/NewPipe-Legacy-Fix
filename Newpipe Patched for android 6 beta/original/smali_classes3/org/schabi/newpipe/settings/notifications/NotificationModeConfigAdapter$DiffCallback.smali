.class final Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "NotificationModeConfigAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DiffCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;

    invoke-direct {v0}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;-><init>()V

    sput-object v0, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;->INSTANCE:Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 59
    check-cast p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    check-cast p2, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;->areContentsTheSame(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)Z

    move-result p1

    return p1
.end method

.method public areContentsTheSame(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)Z
    .locals 1

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 59
    check-cast p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    check-cast p2, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;->areItemsTheSame(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)Z

    move-result p1

    return p1
.end method

.method public areItemsTheSame(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)Z
    .locals 3

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getId()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p1, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    check-cast p2, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;

    invoke-virtual {p0, p1, p2}, Lorg/schabi/newpipe/settings/notifications/NotificationModeConfigAdapter$DiffCallback;->getChangePayload(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getChangePayload(Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;)Ljava/lang/Object;
    .locals 2

    const-string v0, "oldItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getNotificationMode()I

    move-result v0

    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getNotificationMode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 70
    invoke-virtual {p2}, Lorg/schabi/newpipe/settings/notifications/SubscriptionItem;->getNotificationMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;->getChangePayload(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
