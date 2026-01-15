.class public final enum Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;
.super Ljava/lang/Enum;
.source "StreamDialogDefaultEntry.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum APPEND_PLAYLIST:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum DELETE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum DOWNLOAD:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum ENQUEUE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum ENQUEUE_NEXT:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum MARK_AS_WATCHED:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum OPEN_IN_BROWSER:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum PLAY_WITH_KODI:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum SET_AS_PLAYLIST_THUMBNAIL:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum SHARE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum SHOW_CHANNEL_DETAILS:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum START_HERE_ON_BACKGROUND:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

.field public static final enum START_HERE_ON_POPUP:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;


# instance fields
.field public final action:Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;

.field public final resource:I


# direct methods
.method public static synthetic $r8$lambda$3VnCLjDA1jVF62fRh-Zp4nrJSo0(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 2

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda20;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/util/SparseItemUtil;->fetchItemInfoIfSparse(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3mwQqD2_UHoXcs51ctkmsZj_zYQ(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/external_communication/KoreUtils;->playWithKore(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6hYCmMeOPKi51RjvH9DdpW45YMc(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda17;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/util/SparseItemUtil;->fetchItemInfoIfSparse(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8lPycvB06xxze9uxetaNM5z74H0(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 2

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lorg/schabi/newpipe/download/DownloadDialog;

    .line 124
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/schabi/newpipe/download/DownloadDialog;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "downloadDialog"

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$9AQkpPhMyzu-eHW11HLwlOGa8IE(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-static {p0, p1, p2}, Lorg/schabi/newpipe/util/NavigationHelper;->openChannelFragment(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ie7MWxdERiVgerzRnlFCuQRrWi8(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;)V
    .locals 0

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->enqueueNextOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JErOcsvQgmTzqGyRawrcCzwjiio(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 79
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This needs to be implemented manually by using InfoItemDialog.Builder.setAction()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic $r8$lambda$MiFV60AEsjxDm8a-fwu4S4nArls(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 3

    .line 117
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v1

    .line 118
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda19;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 117
    invoke-static {v0, v1, p1, v2}, Lorg/schabi/newpipe/util/SparseItemUtil;->fetchStreamInfoAndSaveToDatabase(Landroid/content/Context;ILjava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NBGTystxvoaRCCaHdQ5Iel4vvng(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 5

    .line 48
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v1

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda13;

    invoke-direct {v4, p0, p1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda13;-><init>(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 48
    invoke-static {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/util/SparseItemUtil;->fetchUploaderUrlIfSparse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PgJgFh21oUegZAHauiJMnHanASc(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getThumbnails()Ljava/util/List;

    move-result-object p1

    .line 109
    invoke-static {p0, v0, v1, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W2-U_8mKTozrW5IYfxEDTsC4RiY(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;)V
    .locals 1

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnPopupPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$XPdjxA0rU7jqDmrRIYv3Q_jU-o4(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 132
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/external_communication/ShareUtils;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZMtiMCY5UCEBDznkOqMSUPzArp4(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 2

    .line 136
    new-instance v0, Lorg/schabi/newpipe/local/history/HistoryRecordManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/local/history/HistoryRecordManager;->markAsWatched(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda18;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 138
    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Maybe;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    .line 148
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Maybe;->onErrorComplete()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    .line 149
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Maybe;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static synthetic $r8$lambda$a5xl77Dbtzjng57a7aWTqc2QHLM(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/schabi/newpipe/util/NavigationHelper;->enqueueOnPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bg4ox4OJfzEDv0LXXIjIdwnpyz8(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;)V
    .locals 1

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    .line 71
    invoke-static {p0, p1, v0}, Lorg/schabi/newpipe/util/NavigationHelper;->playOnBackgroundPlayer(Landroid/content/Context;Lorg/schabi/newpipe/player/playqueue/PlayQueue;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$cjCMl4ileRfIRNlcUPSJLannDDk(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 2

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda16;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/util/SparseItemUtil;->fetchItemInfoIfSparse(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uXVSpJ5TnTS-4AvpMTTAKmpr3Y0(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/local/dialog/PlaylistDialog;)V
    .locals 2

    .line 97
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StreamDialogEntry@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    instance-of v1, p1, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

    if-eqz v1, :cond_0

    const-string v1, "append"

    goto :goto_0

    :cond_0
    const-string v1, "create"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_playlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w_KfWAuDxrpxvibCXPyBywDnwDs(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    .line 95
    invoke-static {v1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda15;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 93
    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->createCorrespondingDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static synthetic $r8$lambda$xZX5CcsJvbfO60oi6jOQrOcVrnM(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 0

    .line 84
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This needs to be implemented manually by using InfoItemDialog.Builder.setAction()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic $r8$lambda$xfLYopxabNulWBC-W6Rxdt3Vvso(Landroidx/fragment/app/Fragment;Ljava/lang/Throwable;)V
    .locals 3

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->OPEN_INFO_ITEM_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Got an error when trying to mark as watched"

    invoke-direct {v0, p1, v1, v2}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    .line 139
    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xoPbNTfSQZC415VUPQ2H5VpVrgc(Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda14;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, p1, v1}, Lorg/schabi/newpipe/util/SparseItemUtil;->fetchItemInfoIfSparse(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic $values()[Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;
    .locals 3

    const/16 v0, 0xd

    .line 46
    new-array v0, v0, [Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SHOW_CHANNEL_DETAILS:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->ENQUEUE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->ENQUEUE_NEXT:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_BACKGROUND:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_POPUP:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SET_AS_PLAYLIST_THUMBNAIL:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->DELETE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->APPEND_PLAYLIST:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->PLAY_WITH_KODI:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SHARE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->DOWNLOAD:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->OPEN_IN_BROWSER:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->MARK_AS_WATCHED:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 47
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, "SHOW_CHANNEL_DETAILS"

    const/4 v3, 0x0

    const v4, 0x7f120414

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SHOW_CHANNEL_DETAILS:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 55
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "ENQUEUE"

    const/4 v3, 0x1

    const v4, 0x7f120141

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->ENQUEUE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 64
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "ENQUEUE_NEXT"

    const/4 v3, 0x2

    const v4, 0x7f120140

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->ENQUEUE_NEXT:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 69
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda6;-><init>()V

    const-string v2, "START_HERE_ON_BACKGROUND"

    const/4 v3, 0x3

    const v4, 0x7f12045a

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_BACKGROUND:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 74
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda7;-><init>()V

    const-string v2, "START_HERE_ON_POPUP"

    const/4 v3, 0x4

    const v4, 0x7f12045b

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_POPUP:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 78
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda8;-><init>()V

    const-string v2, "SET_AS_PLAYLIST_THUMBNAIL"

    const/4 v3, 0x5

    const v4, 0x7f1203ef

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SET_AS_PLAYLIST_THUMBNAIL:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 83
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda9;-><init>()V

    const-string v2, "DELETE"

    const/4 v3, 0x6

    const v4, 0x7f1200e0

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->DELETE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 92
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda10;-><init>()V

    const-string v2, "APPEND_PLAYLIST"

    const/4 v3, 0x7

    const v4, 0x7f12001f

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->APPEND_PLAYLIST:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 105
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda11;-><init>()V

    const-string v2, "PLAY_WITH_KODI"

    const/16 v3, 0x8

    const v4, 0x7f120363

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->PLAY_WITH_KODI:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 108
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda12;-><init>()V

    const-string v2, "SHARE"

    const/16 v3, 0x9

    const v4, 0x7f120407

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SHARE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 116
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "DOWNLOAD"

    const/16 v3, 0xa

    const v4, 0x7f120103

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->DOWNLOAD:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 131
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "OPEN_IN_BROWSER"

    const/16 v3, 0xb

    const v4, 0x7f120335

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->OPEN_IN_BROWSER:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 135
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "MARK_AS_WATCHED"

    const/16 v3, 0xc

    const v4, 0x7f120255

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;-><init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->MARK_AS_WATCHED:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    .line 46
    invoke-static {}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->$values()[Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    move-result-object v0

    sput-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->$VALUES:[Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 161
    iput p3, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->resource:I

    .line 162
    iput-object p4, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->action:Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;
    .locals 1

    .line 46
    const-class v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    return-object p0
.end method

.method public static values()[Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;
    .locals 1

    .line 46
    sget-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->$VALUES:[Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    invoke-virtual {v0}, [Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    return-object v0
.end method


# virtual methods
.method public toStreamDialogEntry()Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;
    .locals 3

    .line 167
    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;

    iget v1, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->resource:I

    iget-object v2, p0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->action:Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;

    invoke-direct {v0, v1, v2}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;-><init>(ILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    return-object v0
.end method
