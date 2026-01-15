.class public abstract Lorg/schabi/newpipe/QueueItemMenuUtil;
.super Ljava/lang/Object;
.source "QueueItemMenuUtil.java"


# direct methods
.method public static synthetic $r8$lambda$0TxXxdjONHG2tL5ZNsYxNS77MKU(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    .line 83
    new-instance v0, Lorg/schabi/newpipe/download/DownloadDialog;

    invoke-direct {v0, p0, p2}, Lorg/schabi/newpipe/download/DownloadDialog;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 85
    const-string p0, "downloadDialog"

    invoke-virtual {v0, p1, p0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1lNhYN_-K3BnOLiyXisGPtzQ3Rg(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Ljava/lang/String;)V
    .locals 1

    .line 73
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploader()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p0, v0, p2, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->openChannelFragmentUsingIntent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EqiMYwxwiM2-ML7-YmjF4vPC0OE(Landroidx/fragment/app/FragmentManager;Lorg/schabi/newpipe/local/dialog/PlaylistDialog;)V
    .locals 1

    .line 59
    const-string v0, "QueueItemMenuUtil@append_playlist"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xorQVTQAqV1II6rSJIAR7VYlfmc(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroid/view/MenuItem;)Z
    .locals 7

    .line 44
    invoke-interface {p4}, Landroid/view/MenuItem;->getItemId()I

    move-result p4

    const/4 v0, 0x1

    sparse-switch p4, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 77
    :sswitch_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object p3

    .line 78
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getThumbnails()Ljava/util/List;

    move-result-object p1

    .line 77
    invoke-static {p2, p0, p3, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return v0

    .line 46
    :sswitch_1
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->indexOf(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)I

    move-result p1

    .line 47
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->remove(I)V

    return v0

    .line 81
    :sswitch_2
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result p0

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda3;

    invoke-direct {p4, p2, p3}, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    invoke-static {p2, p0, p1, p4}, Lorg/schabi/newpipe/util/SparseItemUtil;->fetchStreamInfoAndSaveToDatabase(Landroid/content/Context;ILjava/lang/String;Ljava/util/function/Consumer;)V

    return v0

    .line 51
    :sswitch_3
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result v2

    .line 52
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    .line 51
    invoke-static/range {v1 .. v6}, Lorg/schabi/newpipe/util/NavigationHelper;->openVideoDetail(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return v0

    :sswitch_4
    move-object v1, p2

    .line 67
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getServiceId()I

    move-result p0

    .line 68
    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;->getUploaderUrl()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda2;

    invoke-direct {p4, v1, p1}, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 67
    invoke-static {v1, p0, p2, p3, p4}, Lorg/schabi/newpipe/util/SparseItemUtil;->fetchUploaderUrlIfSparse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return v0

    :sswitch_5
    move-object v1, p2

    .line 56
    new-instance p0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;)V

    .line 58
    invoke-static {p0}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda1;

    invoke-direct {p1, p3}, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 56
    invoke-static {v1, p0, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->createCorrespondingDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0233 -> :sswitch_5
        0x7f0a0235 -> :sswitch_4
        0x7f0a0236 -> :sswitch_3
        0x7f0a0238 -> :sswitch_2
        0x7f0a023d -> :sswitch_1
        0x7f0a0243 -> :sswitch_0
    .end sparse-switch
.end method

.method public static openPopupMenu(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/view/View;ZLandroidx/fragment/app/FragmentManager;Landroid/content/Context;)V
    .locals 2

    .line 33
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f130147

    invoke-direct {v0, p5, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 36
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, v0, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p2, 0x7f0f000e

    .line 37
    invoke-virtual {v1, p2}, Landroid/widget/PopupMenu;->inflate(I)V

    if-eqz p3, :cond_0

    .line 40
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p2

    const p3, 0x7f0a0236

    invoke-interface {p2, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 43
    :cond_0
    new-instance p2, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1, p5, p4}, Lorg/schabi/newpipe/QueueItemMenuUtil$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/player/playqueue/PlayQueue;Lorg/schabi/newpipe/player/playqueue/PlayQueueItem;Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, p2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 92
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
