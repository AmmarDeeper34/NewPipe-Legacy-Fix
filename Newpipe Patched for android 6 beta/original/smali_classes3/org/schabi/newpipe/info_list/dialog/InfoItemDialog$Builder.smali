.class public Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;
.super Ljava/lang/Object;
.source "InfoItemDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final addDefaultEntriesAutomatically:Z

.field private final context:Landroid/content/Context;

.field private final entries:Ljava/util/List;

.field private final fragment:Landroidx/fragment/app/Fragment;

.field private final infoItem:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 143
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Z)V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->entries:Ljava/util/List;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 191
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->activity:Landroid/app/Activity;

    .line 199
    iput-object p2, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->context:Landroid/content/Context;

    .line 200
    iput-object p3, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->fragment:Landroidx/fragment/app/Fragment;

    .line 201
    iput-object p4, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->infoItem:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    .line 202
    iput-boolean p5, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addDefaultEntriesAutomatically:Z

    if-eqz p5, :cond_1

    .line 204
    invoke-virtual {p0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addDefaultBeginningEntries()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    :cond_1
    return-void

    .line 192
    :cond_2
    :goto_0
    sget-boolean p3, Lorg/schabi/newpipe/MainActivity;->DEBUG:Z

    if-eqz p3, :cond_3

    .line 193
    invoke-static {}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "activity, context or resources is null: activity = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", context = "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "activity, context or resources is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static reportErrorDuringInitialization(Ljava/lang/Throwable;Lorg/schabi/newpipe/extractor/InfoItem;)V
    .locals 4

    .line 349
    invoke-static {}, Lorg/schabi/newpipe/App;->getApp()Lorg/schabi/newpipe/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->OPEN_INFO_ITEM_DIALOG:Lorg/schabi/newpipe/error/UserAction;

    .line 353
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "none"

    invoke-direct {v1, p0, v2, v3, p1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 349
    invoke-static {v0, v1}, Lorg/schabi/newpipe/error/ErrorUtil;->showSnackbar(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method


# virtual methods
.method public varargs addAllEntries([Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;
    .locals 1

    .line 224
    invoke-static {p1}, Lj$/util/stream/Stream$-CC;->of([Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;)V

    invoke-interface {p1, v0}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public addDefaultBeginningEntries()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;
    .locals 0

    .line 314
    invoke-virtual {p0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addEnqueueEntriesIfNeeded()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    .line 315
    invoke-virtual {p0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addStartHereEntries()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    return-object p0
.end method

.method public addDefaultEndEntries()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;
    .locals 3

    const/4 v0, 0x4

    .line 324
    new-array v0, v0, [Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->DOWNLOAD:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->APPEND_PLAYLIST:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SHARE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->OPEN_IN_BROWSER:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addAllEntries([Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    .line 330
    invoke-virtual {p0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addPlayWithKodiEntryIfNeeded()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    .line 331
    invoke-virtual {p0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addMarkAsWatchedEntryIfNeeded()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    .line 332
    sget-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->SHOW_CHANNEL_DETAILS:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    return-object p0
.end method

.method public addEnqueueEntriesIfNeeded()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;
    .locals 2

    .line 255
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getInstance()Lorg/schabi/newpipe/player/helper/PlayerHolder;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->isPlayQueueReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    sget-object v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->ENQUEUE:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    invoke-virtual {p0, v1}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    .line 259
    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getQueuePosition()I

    move-result v1

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/helper/PlayerHolder;->getQueueSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 260
    sget-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->ENQUEUE_NEXT:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    :cond_0
    return-object p0
.end method

.method public addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->entries:Ljava/util/List;

    invoke-virtual {p1}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->toStreamDialogEntry()Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMarkAsWatchedEntryIfNeeded()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;
    .locals 3

    .line 286
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->context:Landroid/content/Context;

    .line 287
    invoke-static {v0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->context:Landroid/content/Context;

    const v2, 0x7f12013b

    .line 288
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->infoItem:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/StreamTypeUtil;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    sget-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->MARK_AS_WATCHED:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    :cond_0
    return-object p0
.end method

.method public addPlayWithKodiEntryIfNeeded()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;
    .locals 2

    .line 300
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->context:Landroid/content/Context;

    iget-object v1, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->infoItem:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-virtual {v1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v1

    invoke-static {v0, v1}, Lorg/schabi/newpipe/util/external_communication/KoreUtils;->shouldShowPlayWithKodi(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->PLAY_WITH_KODI:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    :cond_0
    return-object p0
.end method

.method public addStartHereEntries()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;
    .locals 1

    .line 273
    sget-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_BACKGROUND:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    .line 274
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->infoItem:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    invoke-virtual {v0}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/StreamTypeUtil;->isAudio(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    sget-object v0, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->START_HERE_ON_POPUP:Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addEntry(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    :cond_0
    return-object p0
.end method

.method public create()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;
    .locals 7

    .line 341
    iget-boolean v0, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addDefaultEntriesAutomatically:Z

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->addDefaultEndEntries()Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;

    .line 344
    :cond_0
    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;

    iget-object v2, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->fragment:Landroidx/fragment/app/Fragment;

    iget-object v4, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->infoItem:Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;

    iget-object v5, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->entries:Ljava/util/List;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/List;Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog-IA;)V

    return-object v1
.end method

.method public setAction(Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;
    .locals 3

    const/4 v0, 0x0

    .line 239
    :goto_0
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 240
    iget-object v1, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->entries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;

    iget v1, v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;->resource:I

    iget v2, p1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogDefaultEntry;->resource:I

    if-ne v1, v2, :cond_0

    .line 241
    iget-object p1, p0, Lorg/schabi/newpipe/info_list/dialog/InfoItemDialog$Builder;->entries:Ljava/util/List;

    new-instance v1, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;

    invoke-direct {v1, v2, p2}, Lorg/schabi/newpipe/info_list/dialog/StreamDialogEntry;-><init>(ILorg/schabi/newpipe/info_list/dialog/StreamDialogEntry$StreamDialogEntryAction;)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
