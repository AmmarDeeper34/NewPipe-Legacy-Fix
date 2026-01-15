.class public abstract Lorg/schabi/newpipe/local/dialog/PlaylistDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "PlaylistDialog.java"

# interfaces
.implements Lorg/schabi/newpipe/util/StateSaver$WriteRead;


# instance fields
.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private savedState:Lorg/schabi/newpipe/util/SavedState;

.field private streamEntities:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$Q6GGTTG0jN_vJR2X7AxUuUKfaU4(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)Lj$/util/stream/Stream;
    .locals 0

    .line 171
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/playqueue/PlayQueue;->getStreams()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QMkhLSA8wXbsEDH2pfvR7FKwwBA(Landroidx/fragment/app/FragmentManager;Lorg/schabi/newpipe/local/dialog/PlaylistDialog;)V
    .locals 1

    .line 179
    const-string v0, "PlaylistDialog"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$meFMLUYPZODNniJip54KySm9D2k(Ljava/util/function/Consumer;Ljava/util/List;Ljava/lang/Boolean;)V
    .locals 0

    .line 150
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 151
    invoke-static {p1}, Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;->newInstance(Ljava/util/List;)Lorg/schabi/newpipe/local/dialog/PlaylistAppendDialog;

    move-result-object p1

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {p1}, Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;->newInstance(Ljava/util/List;)Lorg/schabi/newpipe/local/dialog/PlaylistCreationDialog;

    move-result-object p1

    .line 150
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public static createCorrespondingDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1

    .line 146
    new-instance v0, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;

    invoke-static {p0}, Lorg/schabi/newpipe/NewPipeDatabase;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;-><init>(Lorg/schabi/newpipe/database/AppDatabase;)V

    .line 147
    invoke-virtual {v0}, Lorg/schabi/newpipe/local/playlist/LocalPlaylistManager;->hasPlaylists()Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    .line 148
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Maybe;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Maybe;

    move-result-object p0

    new-instance v0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/Consumer;Ljava/util/List;)V

    .line 149
    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Maybe;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public static showForPlayQueue(Lorg/schabi/newpipe/player/Player;Landroidx/fragment/app/FragmentManager;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 2

    .line 169
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    move-result-object v0

    invoke-static {v0}, Lj$/util/stream/Stream$-CC;->of(Ljava/lang/Object;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/dialog/PlaylistDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog$$ExternalSyntheticLambda0;-><init>()V

    .line 170
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/local/dialog/PlaylistDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog$$ExternalSyntheticLambda1;-><init>()V

    .line 171
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lorg/schabi/newpipe/fragments/list/playlist/PlaylistFragment$$ExternalSyntheticLambda7;-><init>()V

    .line 172
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 173
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 174
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {}, Lio/reactivex/rxjava3/disposables/Disposable$-CC;->empty()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0

    .line 178
    :cond_0
    invoke-virtual {p0}, Lorg/schabi/newpipe/player/Player;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lorg/schabi/newpipe/local/dialog/PlaylistDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog$$ExternalSyntheticLambda2;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-static {p0, v0, v1}, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->createCorrespondingDialog(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generateSuffix()Ljava/lang/String;
    .locals 3

    .line 85
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 86
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".list"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method public getStreamEntities()Ljava/util/List;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-static {p1, p0}, Lorg/schabi/newpipe/util/StateSaver;->tryToRestore(Landroid/os/Bundle;Lorg/schabi/newpipe/util/StateSaver$WriteRead;)Lorg/schabi/newpipe/util/SavedState;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->savedState:Lorg/schabi/newpipe/util/SavedState;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 62
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 51
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 52
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->savedState:Lorg/schabi/newpipe/util/SavedState;

    invoke-static {v0}, Lorg/schabi/newpipe/util/StateSaver;->onDestroy(Lorg/schabi/newpipe/util/SavedState;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    iget-object v1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->savedState:Lorg/schabi/newpipe/util/SavedState;

    invoke-static {v0, v1, p1, p0}, Lorg/schabi/newpipe/util/StateSaver;->tryToSave(ZLorg/schabi/newpipe/util/SavedState;Landroid/os/Bundle;Lorg/schabi/newpipe/util/StateSaver$WriteRead;)Lorg/schabi/newpipe/util/SavedState;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->savedState:Lorg/schabi/newpipe/util/SavedState;

    :cond_0
    return-void
.end method

.method public readFrom(Ljava/util/Queue;)V
    .locals 0

    .line 97
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method protected setStreamEntities(Ljava/util/List;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    return-void
.end method

.method public writeTo(Ljava/util/Queue;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/schabi/newpipe/local/dialog/PlaylistDialog;->streamEntities:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
