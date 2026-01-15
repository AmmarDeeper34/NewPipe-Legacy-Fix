.class public final Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;
.super Ljava/lang/Object;
.source "NotificationHelper.kt"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->displayNewStreamsNotifications(Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $data:Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

.field final synthetic $newStreams:Ljava/util/List;

.field final synthetic $summaryBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field final synthetic this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;


# direct methods
.method constructor <init>(Landroidx/core/app/NotificationCompat$Builder;Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;Ljava/util/List;Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$summaryBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iput-object p2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    iput-object p3, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$newStreams:Ljava/util/List;

    iput-object p4, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$data:Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorDrawable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$newStreams:Ljava/util/List;

    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$data:Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    invoke-virtual {v0}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getServiceId()I

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$data:Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->access$showStreamNotifications(Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;Ljava/util/List;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 102
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->access$getManager$p(Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$data:Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getPseudoId()I

    move-result p2

    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$summaryBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 103
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->access$getIconLoadingTargets$p(Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 3

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "from"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$summaryBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 91
    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$newStreams:Ljava/util/List;

    iget-object v1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$data:Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    invoke-virtual {v1}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getServiceId()I

    move-result v1

    iget-object v2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$data:Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    invoke-virtual {v2}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2, p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->access$showStreamNotifications(Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;Ljava/util/List;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 93
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->access$getManager$p(Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    iget-object p2, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$data:Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;

    invoke-virtual {p2}, Lorg/schabi/newpipe/local/feed/service/FeedUpdateInfo;->getPseudoId()I

    move-result p2

    iget-object v0, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->$summaryBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 95
    iget-object p1, p0, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper$displayNewStreamsNotifications$target$1;->this$0:Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;

    invoke-static {p1}, Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;->access$getIconLoadingTargets$p(Lorg/schabi/newpipe/local/feed/notifications/NotificationHelper;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 0
    const-string v0, "placeHolderDrawable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
