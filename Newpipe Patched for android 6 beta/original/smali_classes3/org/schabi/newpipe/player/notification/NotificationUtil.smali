.class public final Lorg/schabi/newpipe/player/notification/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "NotificationUtil"


# instance fields
.field private notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

.field private notificationManager:Landroidx/core/app/NotificationManagerCompat;

.field private final notificationSlots:[I

.field private final player:Lorg/schabi/newpipe/player/Player;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-boolean v0, Lorg/schabi/newpipe/player/Player;->DEBUG:Z

    sput-boolean v0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/player/Player;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_DEFAULTS:[I

    .line 48
    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationSlots:[I

    .line 56
    iput-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    return-void
.end method

.method private addAction(Landroidx/core/app/NotificationCompat$Builder;I)V
    .locals 5

    .line 259
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 260
    invoke-static {v0, p2}, Lorg/schabi/newpipe/player/notification/NotificationActionData;->fromNotificationActionEnum(Lorg/schabi/newpipe/player/Player;I)Lorg/schabi/newpipe/player/notification/NotificationActionData;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    .line 266
    invoke-virtual {p2}, Lorg/schabi/newpipe/player/notification/NotificationActionData;->action()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    const v4, 0x1e38d

    .line 265
    invoke-static {v0, v4, v1, v2, v3}, Landroidx/core/app/PendingIntentCompat;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object v0

    .line 267
    new-instance v1, Landroidx/core/app/NotificationCompat$Action;

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/notification/NotificationActionData;->icon()I

    move-result v2

    invoke-virtual {p2}, Lorg/schabi/newpipe/player/notification/NotificationActionData;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2, v0}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private declared-synchronized createNotification()Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    monitor-enter p0

    .line 92
    :try_start_0
    sget-boolean v0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->TAG:Ljava/lang/String;

    const-string v1, "createNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 95
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 98
    new-instance v0, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v0}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    .line 99
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_1

    .line 102
    invoke-direct {p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->initializeNotificationSlots()[I

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Landroidx/media/app/NotificationCompat$MediaStyle;->setShowActionsInCompactView([I)Landroidx/media/app/NotificationCompat$MediaStyle;

    .line 105
    :cond_1
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->UIs()Lorg/schabi/newpipe/player/ui/PlayerUiList;

    move-result-object v1

    const-class v2, Lorg/schabi/newpipe/player/mediasession/MediaSessionPlayerUi;

    .line 106
    invoke-virtual {v1, v2}, Lorg/schabi/newpipe/player/ui/PlayerUiList;->get(Ljava/lang/Class;)Lj$/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/schabi/newpipe/player/notification/NotificationUtil$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/schabi/newpipe/player/notification/NotificationUtil$$ExternalSyntheticLambda0;-><init>()V

    .line 107
    invoke-virtual {v1, v2}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    .line 108
    new-instance v2, Lorg/schabi/newpipe/player/notification/NotificationUtil$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil$$ExternalSyntheticLambda1;-><init>(Landroidx/media/app/NotificationCompat$MediaStyle;)V

    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 111
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->setupNotificationBuilder(Landroid/content/Context;Landroidx/media/app/NotificationCompat$MediaStyle;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 112
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 113
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120322

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 112
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColorized(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->setLargeIcon(Landroidx/core/app/NotificationCompat$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getBitmapWithSquareAspectRatio(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 315
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 316
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 317
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v0, v2

    .line 318
    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v2

    .line 319
    div-int/lit8 v1, v1, 0x2

    .line 320
    invoke-static {p1, v0, v1, v2, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private getIntentForNotification()Landroid/content/Intent;
    .locals 4

    .line 271
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->audioPlayerSelected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->popupPlayerSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 277
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lorg/schabi/newpipe/player/PlayerIntentType;->AllOthers:Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 276
    const-class v3, Lorg/schabi/newpipe/MainActivity;

    invoke-static {v0, v3, v1, v2}, Lorg/schabi/newpipe/util/NavigationHelper;->getPlayerIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerIntentType;)Landroid/content/Intent;

    move-result-object v0

    .line 279
    const-string v1, "resume_playback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 280
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 281
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    .line 273
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/NavigationHelper;->getPlayQueueActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private initializeNotificationSlots()[I
    .locals 8

    .line 228
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 229
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationConstants;->getCompactSlotsFromPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/util/Collection;

    move-result-object v0

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_2

    .line 234
    iget-object v4, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationSlots:[I

    iget-object v5, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v5}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v5

    iget-object v6, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 235
    invoke-virtual {v6}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_PREF_KEYS:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lorg/schabi/newpipe/player/notification/NotificationConstants;->SLOT_DEFAULTS:[I

    aget v7, v7, v2

    .line 234
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    aput v5, v4, v2

    .line 238
    iget-object v4, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationSlots:[I

    aget v4, v4, v2

    if-eqz v4, :cond_1

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_2
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/player/notification/NotificationUtil$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/player/notification/NotificationUtil$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Lj$/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Lj$/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method private setLargeIcon(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 4

    .line 293
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 294
    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12044c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 293
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 295
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 302
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 303
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1203d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 302
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->getBitmapWithSquareAspectRatio(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    return-void

    .line 308
    :cond_1
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 298
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private static setupNotificationBuilder(Landroid/content/Context;Landroidx/media/app/NotificationCompat$MediaStyle;)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .line 192
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f120320

    .line 193
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 195
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 196
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v0, "transport"

    .line 197
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v1, 0x7f08012d

    .line 199
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const v1, 0x7f06003b

    .line 200
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.schabi.newpipe.player.MainPlayer.CLOSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x8000000

    const v3, 0x1e38d

    .line 201
    invoke-static {p0, v3, v1, v2, v0}, Landroidx/core/app/PendingIntentCompat;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static startForeground(Lorg/schabi/newpipe/player/PlayerService;Landroid/app/Notification;)V
    .locals 2

    .line 208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x1e38d

    .line 210
    invoke-static {p0, v1, p1, v0}, Landroidx/core/app/ServiceCompat;->startForeground(Landroid/app/Service;ILandroid/app/Notification;I)V

    return-void
.end method

.method public static startForegroundWithDummyNotification(Lorg/schabi/newpipe/player/PlayerService;)V
    .locals 1

    .line 163
    new-instance v0, Landroidx/media/app/NotificationCompat$MediaStyle;

    invoke-direct {v0}, Landroidx/media/app/NotificationCompat$MediaStyle;-><init>()V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->setupNotificationBuilder(Landroid/content/Context;Landroidx/media/app/NotificationCompat$MediaStyle;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->startForeground(Lorg/schabi/newpipe/player/PlayerService;Landroid/app/Notification;)V

    return-void
.end method

.method private updateActions(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2

    .line 251
    iget-object v0, p1, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 253
    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationSlots:[I

    aget v1, v1, v0

    invoke-direct {p0, p1, v1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->addAction(Landroidx/core/app/NotificationCompat$Builder;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized updateNotification()V
    .locals 6

    monitor-enter p0

    .line 125
    :try_start_0
    sget-boolean v0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->TAG:Ljava/lang/String;

    const-string v1, "updateNotification()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 130
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 131
    invoke-direct {p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->getIntentForNotification()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    const v5, 0x1e38d

    .line 130
    invoke-static {v1, v5, v2, v3, v4}, Landroidx/core/app/PendingIntentCompat;->getActivity(Landroid/content/Context;ILandroid/content/Intent;IZ)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 132
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 133
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getUploaderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 134
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v1}, Lorg/schabi/newpipe/player/Player;->getVideoTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_1

    .line 139
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->updateActions(Landroidx/core/app/NotificationCompat$Builder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelNotificationAndStopForeground()V
    .locals 2

    .line 176
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getService()Lorg/schabi/newpipe/player/PlayerService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/app/ServiceCompat;->stopForeground(Landroid/app/Service;I)V

    .line 178
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    if-eqz v0, :cond_0

    const v1, 0x1e38d

    .line 179
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    :cond_0
    const/4 v0, 0x0

    .line 181
    iput-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    .line 182
    iput-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method public createNotificationAndStartForeground()V
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotification()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 171
    :cond_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->updateNotification()V

    .line 172
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/Player;->getService()Lorg/schabi/newpipe/player/PlayerService;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->startForeground(Lorg/schabi/newpipe/player/PlayerService;Landroid/app/Notification;)V

    return-void
.end method

.method public declared-synchronized createNotificationIfNeededAndUpdate(Z)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    .line 71
    :try_start_0
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez p1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 72
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->createNotification()Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    .line 74
    :cond_1
    invoke-direct {p0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->updateNotification()V

    .line 75
    iget-object p1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x1e38d

    invoke-virtual {p1, v1, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public shouldUpdateBufferingSlot()Z
    .locals 5

    .line 146
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    return v3

    .line 156
    :cond_1
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationSlots:[I

    aget v0, v0, v3

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$Action;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationSlots:[I

    const/4 v4, 0x2

    aget v0, v0, v4

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/NotificationCompat$Action;

    iget-object v0, v0, Landroidx/core/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method public declared-synchronized updateThumbnail()V
    .locals 4

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-eqz v0, :cond_1

    .line 80
    sget-boolean v0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThumbnail() called with thumbnail = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 82
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/schabi/newpipe/player/notification/NotificationUtil$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lorg/schabi/newpipe/player/notification/NotificationUtil$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v2, v3}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 81
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], title = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->player:Lorg/schabi/newpipe/player/Player;

    .line 83
    invoke-virtual {v2}, Lorg/schabi/newpipe/player/Player;->getVideoTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 86
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/player/notification/NotificationUtil;->setLargeIcon(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationManager:Landroidx/core/app/NotificationManagerCompat;

    iget-object v1, p0, Lorg/schabi/newpipe/player/notification/NotificationUtil;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const v2, 0x1e38d

    invoke-virtual {v0, v2, v1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
