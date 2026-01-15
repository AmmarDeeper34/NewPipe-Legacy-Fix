.class public final Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private final iconLoadingTargets:Ljava/util/ArrayList;

.field private final manager:Landroidx/core/app/NotificationManagerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->context:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    const-string v0, "from(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->manager:Landroidx/core/app/NotificationManagerCompat;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->iconLoadingTargets:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic access$getIconLoadingTargets$p(Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;)Ljava/util/ArrayList;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->iconLoadingTargets:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getManager$p(Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;)Landroidx/core/app/NotificationManagerCompat;
    .locals 0

    .line 30
    iget-object p0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->manager:Landroidx/core/app/NotificationManagerCompat;

    return-object p0
.end method

.method public static final synthetic access$showStreamNotifications(Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;Ljava/util/List;ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->showStreamNotifications(Ljava/util/List;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static final areNewStreamsNotificationsEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 0
    sget-object v0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->Companion:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;

    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$Companion;->areNewStreamsNotificationsEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private final createStreamNotification(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;ILjava/lang/String;Landroid/graphics/Bitmap;)Landroid/app/Notification;
    .locals 4

    .line 136
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 137
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->context:Landroid/content/Context;

    const v2, 0x7f120465

    .line 138
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f08012d

    .line 140
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p4

    .line 142
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p4

    .line 143
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p4

    .line 144
    invoke-virtual {p4, p3}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 145
    iget-object p4, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->context:Landroid/content/Context;

    const v0, 0x7f060090

    invoke-static {p4, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p4

    invoke-virtual {p3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    const/4 p4, 0x1

    .line 146
    invoke-virtual {p3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 147
    invoke-virtual {p3, p4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 148
    const-string v0, "social"

    invoke-virtual {p3, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p3

    .line 152
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->context:Landroid/content/Context;

    .line 153
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 154
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p2, v3, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->getStreamIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x8000000

    const/4 v2, 0x0

    .line 151
    invoke-static {v0, v1, p1, p2, v2}, Landroidx/core/app/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object p1

    .line 149
    invoke-virtual {p3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 159
    invoke-virtual {p1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setSilent(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "build(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final showStreamNotifications(Ljava/util/List;ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 125
    invoke-direct {p0, v0, p2, p3, p4}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->createStreamNotification(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;ILjava/lang/String;Landroid/graphics/Bitmap;)Landroid/app/Notification;

    move-result-object v1

    .line 126
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->manager:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {v2, v0, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final displayNewStreamsNotifications(Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;)V
    .locals 8

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getNewStreams()Ljava/util/List;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const v3, 0x7f11000a

    .line 43
    invoke-virtual {v1, v3, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getQuantityString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    .line 47
    iget-object v3, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->context:Landroid/content/Context;

    const v5, 0x7f120465

    .line 48
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-direct {v2, v3, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 51
    invoke-virtual {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x2

    .line 53
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setBadgeIconType(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 54
    invoke-virtual {v1, v6}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const v2, 0x7f08012d

    .line 55
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->context:Landroid/content/Context;

    const v3, 0x7f060090

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 59
    const-string v2, "social"

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v4}, Landroidx/core/app/NotificationCompat$Builder;->setGroupAlertBehavior(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "setGroupAlertBehavior(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v2, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v2}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>()V

    .line 66
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    move-result-object v2

    const-string v3, "setBigContentTitle(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 67
    invoke-virtual {v4}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 73
    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->context:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getPseudoId()I

    move-result v3

    .line 76
    iget-object v4, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getServiceId()I

    move-result v5

    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v7}, Lorg/schabi/newpipe/util/NavigationHelper;->getChannelIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    .line 77
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 72
    invoke-static {v2, v3, v4, v6, v6}, Landroidx/core/app/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 84
    new-instance v2, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;

    invoke-direct {v2, v1, p0, v0, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;-><init>(Landroidx/core/app/NotificationCompat$Builder;Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;Ljava/util/List;Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;)V

    .line 113
    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->iconLoadingTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/schabi/newpipe/util/image/PicassoHelper;->loadNotificationIcon(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    return-void
.end method
