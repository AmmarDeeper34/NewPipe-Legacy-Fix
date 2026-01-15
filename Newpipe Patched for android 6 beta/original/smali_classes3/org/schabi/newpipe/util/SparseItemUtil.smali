.class public abstract Lorg/schabi/newpipe/util/SparseItemUtil;
.super Ljava/lang/Object;
.source "SparseItemUtil.java"


# direct methods
.method public static synthetic $r8$lambda$N0JjOrCsrYmMTiJRFP2tZlu_4yI(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    .line 110
    invoke-static {p0}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lorg/schabi/newpipe/database/AppDatabase;->streamDAO()Lorg/schabi/newpipe/database/stream/dao/StreamDAO;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    invoke-virtual {p0, v0}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    return-void
.end method

.method public static synthetic $r8$lambda$Qux5ZzMrobs2ofVAUvZfPIvTSjc(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 6

    .line 122
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading stream info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v5, p1

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 122
    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$brE3FeI5KJH_f0HPMoWmqnUuzcU(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;Ljava/lang/Throwable;)V
    .locals 3

    .line 115
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    const-string v2, "Saving stream info to database"

    invoke-direct {v0, p2, v1, v2, p1}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$deU_krLKc2Rq-Kx27FrpNhdkTCk(Landroid/content/Context;Ljava/util/function/Consumer;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 2

    .line 110
    new-instance v0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2}, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Completable;->fromAction(Lio/reactivex/rxjava3/functions/Action;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    .line 112
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    .line 113
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2}, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 114
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Completable;->doOnError(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    .line 121
    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gVp-oj4sCNUa5XRwqzA5fQ53LU0(Ljava/util/function/Consumer;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 1

    .line 60
    new-instance v0, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    invoke-direct {v0, p1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kfOdPhm-KYSJU07cAZusalOJksM(Ljava/util/function/Consumer;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 87
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfo;->getUploaderUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static fetchItemInfoIfSparse(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;Ljava/util/function/Consumer;)V
    .locals 5

    .line 50
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getStreamType()Lorg/schabi/newpipe/extractor/stream/StreamType;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/util/StreamTypeUtil;->isLiveStream(Lorg/schabi/newpipe/extractor/stream/StreamType;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 51
    :cond_0
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;->getUploaderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    new-instance p0, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/playqueue/SinglePlayQueue;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfoItem;)V

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 59
    :cond_1
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {p0, v0, p1, v1}, Lorg/schabi/newpipe/util/SparseItemUtil;->fetchStreamInfoAndSaveToDatabase(Landroid/content/Context;ILjava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static fetchStreamInfoAndSaveToDatabase(Landroid/content/Context;ILjava/lang/String;Ljava/util/function/Consumer;)V
    .locals 2

    const v0, 0x7f120236

    const/4 v1, 0x0

    .line 104
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    invoke-static {p1, p2, v1}, Lorg/schabi/newpipe/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 106
    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    .line 107
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p3}, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    new-instance p3, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p2, p1}, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 108
    invoke-virtual {v0, v1, p3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public static fetchUploaderUrlIfSparse(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 1

    .line 82
    invoke-static {p3}, Lorg/schabi/newpipe/extractor/utils/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-interface {p4, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 86
    :cond_0
    new-instance p3, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda0;

    invoke-direct {p3, p4}, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    invoke-static {p0, p1, p2, p3}, Lorg/schabi/newpipe/util/SparseItemUtil;->fetchStreamInfoAndSaveToDatabase(Landroid/content/Context;ILjava/lang/String;Ljava/util/function/Consumer;)V

    return-void
.end method
