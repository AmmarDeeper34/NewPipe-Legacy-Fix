.class public abstract Lorg/schabi/newpipe/util/NavigationHelper;
.super Ljava/lang/Object;
.source "NavigationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/util/NavigationHelper$RunnableWithVideoDetailFragment;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationHelper"


# direct methods
.method public static synthetic $r8$lambda$-Xrn6qjbZL5m-7hqhWG9iSKh68w(ZZLorg/schabi/newpipe/player/PlayerType;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 1

    .line 431
    invoke-virtual {p8}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/NavigationHelper;->expandMainPlayer(Landroid/content/Context;)V

    .line 432
    invoke-virtual {p8, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setAutoPlay(Z)V

    if-eqz p1, :cond_2

    .line 437
    sget-object p0, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    if-eq p2, p0, :cond_1

    .line 438
    invoke-static {p3}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isStartMainPlayerFullscreenEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 437
    :goto_1
    invoke-virtual {p8, p0}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->openVideoPlayer(Z)V

    goto :goto_2

    .line 440
    :cond_2
    invoke-virtual {p8, p4, p5, p6, p7}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->selectAndLoadVideo(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    .line 442
    :goto_2
    invoke-virtual {p8}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->scrollToTop()V

    return-void
.end method

.method public static synthetic $r8$lambda$FH8gFyMgY30VzB7L58IZx2y7Z4M(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 331
    const-string p0, "NavigationHelper"

    const-string p1, "You unlocked a secret unicorn."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$_fu9bKJNsz_BcDN9ZznnjRSnZ0E(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    const p1, 0x7f1204c9

    .line 329
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 328
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d1Vr6aq2nrArgUYg148fZ2tFIE4(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Ljava/lang/String;
    .locals 2

    .line 93
    invoke-static {}, Lorg/schabi/newpipe/util/SerializedCache;->getInstance()Lorg/schabi/newpipe/util/SerializedCache;

    move-result-object v0

    const-class v1, Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {v0, p0, v1}, Lorg/schabi/newpipe/util/SerializedCache;->put(Ljava/io/Serializable;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nxO0QRuQIn9WaYbpZVUozD8fwkc(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 398
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->sendPlayerStartedEvent(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rGa9PW25vBKljuDDqeGmIWeAenI(Lorg/schabi/newpipe/util/NavigationHelper$RunnableWithVideoDetailFragment;Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V
    .locals 0

    .line 459
    invoke-interface {p0, p1}, Lorg/schabi/newpipe/util/NavigationHelper$RunnableWithVideoDetailFragment;->run(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private static defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const/high16 v0, 0x7f020000

    const v1, 0x7f020001

    .line 346
    invoke-virtual {p0, v0, v1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    return-object p0
.end method

.method public static enqueueNextOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 3

    .line 206
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getType()Lorg/schabi/newpipe/player/PlayerType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 208
    sget-object v0, Lorg/schabi/newpipe/util/NavigationHelper;->TAG:Ljava/lang/String;

    const-string v1, "Enqueueing next but no player is open; defaulting to background player"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    sget-object v0, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    :cond_0
    const v1, 0x7f120143

    const/4 v2, 0x0

    .line 211
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 212
    const-class v1, Lorg/schabi/newpipe/player/PlayerService;

    invoke-static {p0, v1, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->getPlayerEnqueueNextIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "player_type"

    .line 213
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    .line 214
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 2

    .line 195
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getType()Lorg/schabi/newpipe/player/PlayerType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 197
    sget-object v0, Lorg/schabi/newpipe/util/NavigationHelper;->TAG:Ljava/lang/String;

    const-string v1, "Enqueueing but no player is open; defaulting to background player"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    sget-object v0, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    .line 201
    :cond_0
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V

    return-void
.end method

.method public static enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerType;)V
    .locals 3

    .line 174
    sget-object v0, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    if-ne p2, v0, :cond_0

    invoke-static {p0}, Lorg/schabi/newpipe/util/PermissionHelper;->isPopupEnabledElseAsk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f120142

    const/4 v1, 0x0

    .line 178
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    const-class v0, Lorg/schabi/newpipe/player/PlayerService;

    sget-object v2, Lorg/schabi/newpipe/player/PlayerIntentType;->Enqueue:Lorg/schabi/newpipe/player/PlayerIntentType;

    invoke-static {p0, v0, p1, v2}, Lorg/schabi/newpipe/util/NavigationHelper;->getPlayerIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerIntentType;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "resume_playback"

    .line 189
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "player_type"

    .line 190
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    .line 191
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static expandMainPlayer(Landroid/content/Context;)V
    .locals 2

    .line 387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.schabi.newpipe.VideoDetailFragment.ACTION_SHOW_MAIN_PLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static getChannelIntent(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 709
    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->CHANNEL:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    invoke-static {p0, p2, p1, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->getOpenIntent(Landroid/content/Context;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService$LinkType;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getIntentByLink(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 690
    invoke-static {p1}, Lorg/schabi/newpipe/extractor/NewPipe;->getServiceByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->getIntentByLink(Landroid/content/Context;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getIntentByLink(Landroid/content/Context;Lorg/schabi/newpipe/extractor/StreamingService;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 696
    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/extractor/StreamingService;->getLinkTypeByUrl(Ljava/lang/String;)Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    move-result-object v0

    .line 698
    sget-object v1, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->NONE:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    if-eq v0, v1, :cond_0

    .line 703
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/StreamingService;->getServiceId()I

    move-result p1

    invoke-static {p0, p2, p1, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->getOpenIntent(Landroid/content/Context;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService$LinkType;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    .line 699
    :cond_0
    new-instance p0, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Url not known to service. service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " url="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/extractor/exceptions/ExtractionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getOpenIntent(Landroid/content/Context;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService$LinkType;)Landroid/content/Intent;
    .locals 2

    .line 681
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 682
    const-string p0, "key_service_id"

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    const-string p0, "key_url"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    const-string p0, "key_link_type"

    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getPlayQueueActivityIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 663
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 664
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge p0, v1, :cond_0

    const/high16 p0, 0x10000000

    .line 665
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method public static getPlayerEnqueueNextIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Landroid/content/Intent;
    .locals 1

    .line 114
    sget-object v0, Lorg/schabi/newpipe/player/PlayerIntentType;->EnqueueNext:Lorg/schabi/newpipe/player/PlayerIntentType;

    invoke-static {p0, p1, p2, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->getPlayerIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerIntentType;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "resume_playback"

    const/4 p2, 0x0

    .line 116
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getPlayerIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerIntentType;)Landroid/content/Intent;
    .locals 1

    .line 92
    invoke-static {p2}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p2

    new-instance v0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda3;-><init>()V

    .line 93
    invoke-virtual {p2, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p2

    const/4 v0, 0x0

    .line 94
    invoke-virtual {p2, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "play_queue_key"

    .line 96
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "player_type"

    sget-object p2, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    .line 97
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "should_start_foreground_extra"

    const/4 p2, 0x1

    .line 98
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "player_intent_type"

    .line 99
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getPlayerTimestampIntent(Landroid/content/Context;Lorg/schabi/newpipe/player/TimestampChangeData;)Landroid/content/Intent;
    .locals 2

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/player/PlayerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "player_intent_type"

    sget-object v1, Lorg/schabi/newpipe/player/PlayerIntentType;->TimestampChange:Lorg/schabi/newpipe/player/PlayerIntentType;

    .line 106
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, "player_intent_data"

    .line 107
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getStreamIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 716
    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->STREAM:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    invoke-static {p0, p2, p1, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->getOpenIntent(Landroid/content/Context;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService$LinkType;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10000000

    .line 717
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "key_title"

    .line 718
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static gotoMainFragment(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 351
    const-string v0, "main_fragment_tag"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->openMainFragment(Landroidx/fragment/app/FragmentManager;)V

    :cond_0
    return-void
.end method

.method public static openAbout(Landroid/content/Context;)V
    .locals 2

    .line 645
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/about/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 646
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openBookmarksFragment(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 533
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/bookmark/BookmarkFragment;-><init>()V

    const v1, 0x7f0a01a1

    .line 534
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const/4 v0, 0x0

    .line 535
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 536
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static openChannelFragment(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/lang/String;)V
    .locals 1

    .line 478
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 479
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object p1

    .line 477
    invoke-static {p0, v0, p2, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 467
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f0a01a1

    .line 468
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;->getInstance(ILjava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/fragments/list/channel/ChannelFragment;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const/4 p1, 0x0

    .line 469
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 470
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static openChannelFragmentUsingIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 623
    sget-object v0, Lorg/schabi/newpipe/extractor/StreamingService$LinkType;->CHANNEL:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    invoke-static {p0, p2, p1, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->getOpenIntent(Landroid/content/Context;Ljava/lang/String;ILorg/schabi/newpipe/extractor/StreamingService$LinkType;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x10000000

    .line 625
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 626
    const-string p2, "key_title"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openCommentAuthorIfPresent(Landroidx/fragment/app/FragmentActivity;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V
    .locals 3

    .line 491
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 495
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v1

    .line 496
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getUploaderName()Ljava/lang/String;

    move-result-object p1

    .line 495
    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openChannelFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 498
    const-string v0, "Opening channel fragment"

    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/error/ErrorUtil;->showUiErrorSnackbar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static openCommentRepliesFragment(Landroidx/fragment/app/FragmentActivity;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V
    .locals 2

    .line 504
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;-><init>(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    sget-object p1, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->TAG:Ljava/lang/String;

    const v1, 0x7f0a01a1

    .line 505
    invoke-virtual {p0, v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 507
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 508
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static openDownloads(Landroid/app/Activity;)V
    .locals 2

    const/16 v0, 0x309

    .line 655
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/PermissionHelper;->checkStoragePermissions(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/download/DownloadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 658
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static openFeedFragment(Landroidx/fragment/app/FragmentManager;)V
    .locals 3

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 521
    invoke-static {p0, v0, v1, v2}, Lorg/schabi/newpipe/util/NavigationHelper;->openFeedFragment(Landroidx/fragment/app/FragmentManager;JLjava/lang/String;)V

    return-void
.end method

.method public static openFeedFragment(Landroidx/fragment/app/FragmentManager;JLjava/lang/String;)V
    .locals 1

    .line 526
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f0a01a1

    .line 527
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/local/feed/FeedFragment;->newInstance(JLjava/lang/String;)Lorg/schabi/newpipe/local/feed/FeedFragment;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const/4 p1, 0x0

    .line 528
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 529
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static openKioskFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V
    .locals 1

    .line 548
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f0a01a1

    .line 549
    invoke-static {p1, p2}, Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;->getInstance(ILjava/lang/String;)Lorg/schabi/newpipe/fragments/list/kiosk/KioskFragment;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const/4 p1, 0x0

    .line 550
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 551
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static openLocalPlaylistFragment(Landroidx/fragment/app/FragmentManager;JLjava/lang/String;)V
    .locals 0

    .line 556
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    if-nez p3, :cond_0

    .line 558
    const-string p3, ""

    .line 557
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;->getInstance(JLjava/lang/String;)Lorg/schabi/newpipe/local/playlist/LocalPlaylistFragment;

    move-result-object p1

    const p2, 0x7f0a01a1

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const/4 p1, 0x0

    .line 559
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 560
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static openMainActivity(Landroid/content/Context;)V
    .locals 2

    .line 632
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 633
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 634
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 635
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openMainFragment(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 358
    invoke-static {}, Lorg/schabi/newpipe/util/InfoCache;->getInstance()Lorg/schabi/newpipe/util/InfoCache;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/util/InfoCache;->trimCache()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 360
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    .line 361
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/fragments/MainFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/fragments/MainFragment;-><init>()V

    const v1, 0x7f0a01a1

    .line 362
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const-string v0, "main_fragment_tag"

    .line 363
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 364
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static openPlayQueue(Landroid/content/Context;)V
    .locals 2

    .line 671
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/player/PlayQueueActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 672
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openPlaylistFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 514
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f0a01a1

    .line 515
    invoke-static {p1, p2, p3}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;->getInstance(ILjava/lang/String;Ljava/lang/String;)Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const/4 p1, 0x0

    .line 516
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 517
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static openRouterActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 639
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/RouterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 640
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 641
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openSearch(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 584
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 585
    const-string v1, "key_service_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 586
    const-string p1, "key_search_string"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const-string p1, "key_open_search"

    const/4 p2, 0x1

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openSearchFragment(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V
    .locals 1

    .line 380
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f0a01a1

    .line 381
    invoke-static {p1, p2}, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->getInstance(ILjava/lang/String;)Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const-string p1, "search_fragment_tag"

    .line 382
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 383
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static openSettings(Landroid/content/Context;)V
    .locals 2

    .line 650
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/schabi/newpipe/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 651
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openStatisticFragment(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 564
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/history/StatisticsPlaylistFragment;-><init>()V

    const v1, 0x7f0a01a1

    .line 565
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const/4 v0, 0x0

    .line 566
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 567
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static openSubscriptionFragment(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 540
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    invoke-direct {v0}, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;-><init>()V

    const v1, 0x7f0a01a1

    .line 541
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const/4 v0, 0x0

    .line 542
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 543
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static openSubscriptionsImportFragment(Landroidx/fragment/app/FragmentManager;I)V
    .locals 1

    .line 572
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v0, 0x7f0a01a1

    .line 573
    invoke-static {p1}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->getInstance(I)Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const/4 p1, 0x0

    .line 574
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 575
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static openVideoDetail(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V
    .locals 0

    .line 598
    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/util/NavigationHelper;->getStreamIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "switching_players"

    .line 599
    invoke-virtual {p1, p2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 602
    invoke-static {}, Lorg/schabi/newpipe/util/SerializedCache;->getInstance()Lorg/schabi/newpipe/util/SerializedCache;

    move-result-object p2

    const-class p3, Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    invoke-virtual {p2, p4, p3}, Lorg/schabi/newpipe/util/SerializedCache;->put(Ljava/io/Serializable;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 604
    const-string p3, "play_queue_key"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openVideoDetailFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V
    .locals 10

    .line 415
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getType()Lorg/schabi/newpipe/player/PlayerType;

    move-result-object v4

    if-nez v4, :cond_0

    .line 418
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isAutoplayAllowedByUser(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    if-eqz p6, :cond_1

    .line 421
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->isPlaying()Z

    move-result v0

    goto :goto_0

    .line 422
    :cond_1
    sget-object v0, Lorg/schabi/newpipe/player/PlayerType;->MAIN:Lorg/schabi/newpipe/player/PlayerType;

    if-ne v4, v0, :cond_2

    .line 424
    invoke-static {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper;->isAutoplayAllowedByUser(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 430
    :goto_1
    new-instance v1, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;

    move-object v5, p0

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    move/from16 v3, p6

    invoke-direct/range {v1 .. v9}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda1;-><init>(ZZLorg/schabi/newpipe/player/PlayerType;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    const p0, 0x7f0a01a2

    .line 445
    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p3

    .line 446
    instance-of v0, p3, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    check-cast p3, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-interface {v1, p3}, Lorg/schabi/newpipe/util/NavigationHelper$RunnableWithVideoDetailFragment;->run(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    return-void

    :cond_3
    const/4 p3, 0x0

    .line 454
    invoke-static {p2, p3, p4, p5}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->getInstance(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    move-result-object p2

    .line 455
    invoke-virtual {p2, v2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->setAutoPlay(Z)V

    .line 457
    invoke-static {p1}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 458
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1, p2}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda2;-><init>(Lorg/schabi/newpipe/util/NavigationHelper$RunnableWithVideoDetailFragment;Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 459
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 460
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public static playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V
    .locals 2

    const v0, 0x7f12005a

    const/4 v1, 0x0

    .line 160
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    const-class v0, Lorg/schabi/newpipe/player/PlayerService;

    sget-object v1, Lorg/schabi/newpipe/player/PlayerIntentType;->AllOthers:Lorg/schabi/newpipe/player/PlayerIntentType;

    invoke-static {p0, v0, p1, v1}, Lorg/schabi/newpipe/util/NavigationHelper;->getPlayerIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerIntentType;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "player_type"

    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->AUDIO:Lorg/schabi/newpipe/player/PlayerType;

    .line 165
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "resume_playback"

    .line 166
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 167
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static playOnExternalAudioPlayer(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 223
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 224
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-static {v0}, Lorg/schabi/newpipe/util/ListHelper;->getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const p1, 0x7f1202fd

    .line 232
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 237
    :cond_1
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I

    move-result v1

    .line 238
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    .line 240
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnExternalPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    return-void

    :cond_2
    :goto_0
    const p1, 0x7f120040

    .line 225
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static playOnExternalPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)V
    .locals 3

    .line 271
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getDeliveryMethod()Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    move-result-object v0

    .line 274
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/Stream;->isUrl()Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;->TORRENT:Lorg/schabi/newpipe/extractor/stream/DeliveryMethod;

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 280
    :cond_0
    sget-object v1, Lorg/schabi/newpipe/util/NavigationHelper$1;->$SwitchMap$org$schabi$newpipe$extractor$stream$DeliveryMethod:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 307
    const-string v0, ""

    goto :goto_0

    .line 304
    :cond_1
    const-string v0, "application/vnd.ms-sstr+xml"

    goto :goto_0

    .line 301
    :cond_2
    const-string v0, "application/dash+xml"

    goto :goto_0

    .line 298
    :cond_3
    const-string v0, "application/x-mpegURL"

    goto :goto_0

    .line 282
    :cond_4
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    if-nez v0, :cond_7

    .line 283
    instance-of v0, p3, Lorg/schabi/newpipe/extractor/stream/AudioStream;

    if-eqz v0, :cond_5

    .line 284
    const-string v0, "audio/*"

    goto :goto_0

    .line 285
    :cond_5
    instance-of v0, p3, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    if-eqz v0, :cond_6

    .line 286
    const-string v0, "video/*"

    goto :goto_0

    :cond_6
    return-void

    .line 293
    :cond_7
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getFormat()Lorg/schabi/newpipe/extractor/MediaFormat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/MediaFormat;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 311
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    invoke-virtual {p3}, Lorg/schabi/newpipe/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v1, p3, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-string p3, "android.intent.extra.TITLE"

    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    const-string p3, "title"

    invoke-virtual {v1, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 315
    const-string p1, "artist"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 316
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    invoke-static {p0, v1}, Lorg/schabi/newpipe/util/NavigationHelper;->resolveActivityOrAskToInstall(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_8
    :goto_1
    const p1, 0x7f1203ec

    const/4 p2, 0x0

    .line 275
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 276
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static playOnExternalVideoPlayer(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 3

    .line 245
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 246
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {v0}, Lorg/schabi/newpipe/util/ListHelper;->getUrlAndNonTorrentStreams(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    .line 252
    invoke-static {p0, v0, v2, v1, v1}, Lorg/schabi/newpipe/util/ListHelper;->getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const p1, 0x7f12030d

    .line 255
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 260
    :cond_1
    invoke-static {p0, v0}, Lorg/schabi/newpipe/util/ListHelper;->getDefaultResolutionIndex(Landroid/content/Context;Ljava/util/List;)I

    move-result v1

    .line 263
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/schabi/newpipe/extractor/stream/VideoStream;

    .line 264
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnExternalPlayer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/extractor/stream/Stream;)V

    return-void

    :cond_2
    :goto_0
    const p1, 0x7f1204c5

    .line 247
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static playOnMainPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V
    .locals 7

    .line 133
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result v2

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    .line 135
    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/util/NavigationHelper;->openVideoDetail(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    :cond_0
    return-void
.end method

.method public static playOnMainPlayer(Landroidx/appcompat/app/AppCompatActivity;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 8

    .line 122
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getItem()Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    .line 125
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result v3

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p1

    .line 124
    invoke-static/range {v1 .. v7}, Lorg/schabi/newpipe/util/NavigationHelper;->openVideoDetailFragment(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    :cond_0
    return-void
.end method

.method public static playOnPopupPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V
    .locals 2

    .line 144
    invoke-static {p0}, Lorg/schabi/newpipe/util/PermissionHelper;->isPopupEnabledElseAsk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f12037d

    const/4 v1, 0x0

    .line 148
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    const-class v0, Lorg/schabi/newpipe/player/PlayerService;

    sget-object v1, Lorg/schabi/newpipe/player/PlayerIntentType;->AllOthers:Lorg/schabi/newpipe/player/PlayerIntentType;

    invoke-static {p0, v0, p1, v1}, Lorg/schabi/newpipe/util/NavigationHelper;->getPlayerIntent(Landroid/content/Context;Ljava/lang/Class;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/PlayerIntentType;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "player_type"

    sget-object v1, Lorg/schabi/newpipe/player/PlayerType;->POPUP:Lorg/schabi/newpipe/player/PlayerType;

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "resume_playback"

    .line 153
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 154
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static resolveActivityOrAskToInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 323
    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->tryOpenIntentInApp(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 324
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 325
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120306

    .line 326
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;)V

    const p0, 0x7f120212

    .line 327
    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda5;-><init>()V

    const v0, 0x7f120070

    .line 330
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 332
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    :cond_0
    const p1, 0x7f120307

    const/4 v0, 0x1

    .line 334
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public static restartApp(Landroid/app/Activity;)V
    .locals 0

    .line 728
    invoke-static {}, Lorg/schabi/newpipe/NewPipeDatabase;->close()V

    .line 730
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/jakewharton/processphoenix/ProcessPhoenix;->triggerRebirth(Landroid/content/Context;)V

    return-void
.end method

.method public static sendPlayerStartedEvent(Landroid/content/Context;)V
    .locals 2

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.schabi.newpipe.VideoDetailFragment.ACTION_PLAYER_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static showMiniPlayer(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 395
    invoke-static {}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->getInstanceInCollapsedState()Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    move-result-object v0

    .line 396
    invoke-static {p0}, Lorg/schabi/newpipe/util/NavigationHelper;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const v1, 0x7f0a01a2

    .line 397
    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    new-instance v1, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/schabi/newpipe/util/NavigationHelper$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;)V

    .line 398
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 399
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public static tryGotoSearchFragment(Landroidx/fragment/app/FragmentManager;)Z
    .locals 4

    .line 368
    sget-boolean v0, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 369
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryGoToSearchFragment() ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryAt(I)Landroidx/fragment/app/FragmentManager$BackStackEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 370
    const-string v3, "NavigationHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 375
    :cond_0
    const-string v0, "search_fragment_tag"

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
