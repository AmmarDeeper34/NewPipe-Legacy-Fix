.class public Lus/shandian/giga/ui/common/Deleter;
.super Ljava/lang/Object;
.source "Deleter.java"


# instance fields
.field private items:Ljava/util/ArrayList;

.field private final mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mDownloadManager:Lus/shandian/giga/service/DownloadManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

.field private final mView:Landroid/view/View;

.field private running:Z

.field private snackbar:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method public static synthetic $r8$lambda$69n3AdgKWIO2Pw8WY9rlc0naYks(Lkotlin/Pair;)Ljava/lang/String;
    .locals 0

    .line 92
    invoke-virtual {p0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lus/shandian/giga/get/Mission;

    iget-object p0, p0, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {p0}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8vofLYLORdzjy34fA95bA0cYdwI(Lus/shandian/giga/ui/common/Deleter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->commit()V

    return-void
.end method

.method public static synthetic $r8$lambda$P7dJt4HOv-FSFzIUy2Lq7eVdTbU(Lus/shandian/giga/ui/common/Deleter;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lus/shandian/giga/ui/common/Deleter;->lambda$next$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ca442tRTJ2UytVgz-HfBannslbw(Lus/shandian/giga/ui/common/Deleter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$fRH27PItlkc7g0X38LEPA6BZ9V8(Lus/shandian/giga/ui/common/Deleter;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->next()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/content/Context;Lus/shandian/giga/ui/adapter/MissionAdapter;Lus/shandian/giga/service/DownloadManager;Lus/shandian/giga/service/DownloadManager$MissionIterator;Landroid/os/Handler;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lus/shandian/giga/ui/common/Deleter;->running:Z

    .line 47
    iput-object p1, p0, Lus/shandian/giga/ui/common/Deleter;->mView:Landroid/view/View;

    .line 48
    iput-object p2, p0, Lus/shandian/giga/ui/common/Deleter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lus/shandian/giga/ui/common/Deleter;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 50
    iput-object p4, p0, Lus/shandian/giga/ui/common/Deleter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    .line 51
    iput-object p5, p0, Lus/shandian/giga/ui/common/Deleter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    .line 52
    iput-object p6, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method private commit()V
    .locals 5

    .line 113
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 115
    :cond_0
    :goto_0
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 116
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 117
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/shandian/giga/get/Mission;

    .line 118
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 119
    iget-boolean v3, v2, Lus/shandian/giga/get/Mission;->deleted:Z

    if-eqz v3, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v3, p0, Lus/shandian/giga/ui/common/Deleter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v3, v2}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->unHide(Lus/shandian/giga/get/Mission;)V

    .line 122
    iget-object v3, p0, Lus/shandian/giga/ui/common/Deleter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v3, v2, v0}, Lus/shandian/giga/service/DownloadManager;->deleteMission(Lus/shandian/giga/get/Mission;Z)V

    .line 124
    instance-of v0, v2, Lus/shandian/giga/get/FinishedMission;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v2, v2, Lus/shandian/giga/get/Mission;->storage:Lorg/schabi/newpipe/streams/io/StoredFileHelper;

    invoke-virtual {v2}, Lorg/schabi/newpipe/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v2

    const-string v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    :cond_2
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v1, :cond_3

    .line 131
    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->pause()V

    return-void

    .line 135
    :cond_3
    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->show()V

    return-void
.end method

.method private forget()V
    .locals 3

    .line 72
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lus/shandian/giga/get/Mission;

    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->unHide(Lus/shandian/giga/get/Mission;)V

    .line 73
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->applyChanges()V

    .line 75
    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->show()V

    return-void
.end method

.method private synthetic lambda$next$1(Landroid/view/View;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->forget()V

    return-void
.end method

.method private next()V
    .locals 5

    .line 88
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda2;-><init>()V

    .line 91
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda3;-><init>()V

    .line 92
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->mContext:Landroid/content/Context;

    const v2, 0x7f1201dd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":\n"

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mContext:Landroid/content/Context;

    const v1, 0x7f120144

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    iget-object v1, p0, Lus/shandian/giga/ui/common/Deleter;->mView:Landroid/view/View;

    const/4 v2, -0x2

    invoke-static {v1, v0, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    .line 105
    new-instance v1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda4;-><init>(Lus/shandian/giga/ui/common/Deleter;)V

    const v2, 0x7f12049d

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(ILandroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 106
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 107
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    .line 109
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda5;-><init>(Lus/shandian/giga/ui/common/Deleter;)V

    const-string v2, "commit"

    const-wide/16 v3, 0x1388

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method private show()V
    .locals 5

    .line 79
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->pause()V

    .line 82
    iput-boolean v1, p0, Lus/shandian/giga/ui/common/Deleter;->running:Z

    .line 84
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/ui/common/Deleter;)V

    const-string v2, "next"

    const-wide/16 v3, 0x15e

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method


# virtual methods
.method public append(Lus/shandian/giga/get/Mission;Z)V
    .locals 2

    .line 62
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    const-string v1, "commit"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->commit()V

    .line 65
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mIterator:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    invoke-virtual {v0, p1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hide(Lus/shandian/giga/get/Mission;)V

    .line 66
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    new-instance v1, Lkotlin/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 68
    invoke-direct {p0}, Lus/shandian/giga/ui/common/Deleter;->show()V

    return-void
.end method

.method public dispose()V
    .locals 4

    .line 153
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-virtual {p0}, Lus/shandian/giga/ui/common/Deleter;->pause()V

    .line 157
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .line 158
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lus/shandian/giga/get/Mission;

    .line 159
    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 160
    iget-object v3, p0, Lus/shandian/giga/ui/common/Deleter;->mDownloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v3, v2, v1}, Lus/shandian/giga/service/DownloadManager;->deleteMission(Lus/shandian/giga/get/Mission;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method public pause()V
    .locals 2

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lus/shandian/giga/ui/common/Deleter;->running:Z

    .line 140
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    const-string v1, "next"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    const-string v1, "show"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    const-string v1, "commit"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->snackbar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->dismiss()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 5

    .line 147
    iget-boolean v0, p0, Lus/shandian/giga/ui/common/Deleter;->running:Z

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lus/shandian/giga/ui/common/Deleter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lus/shandian/giga/ui/common/Deleter$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/common/Deleter;)V

    const-string v2, "show"

    const-wide/16 v3, 0x190

    invoke-static {v0, v1, v2, v3, v4}, Landroidx/core/os/HandlerCompat;->postDelayed(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_0
    return-void
.end method
