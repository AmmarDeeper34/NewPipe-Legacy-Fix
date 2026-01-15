.class public Lorg/schabi/newpipe/util/debounce/DebounceSaver;
.super Ljava/lang/Object;
.source "DebounceSaver.java"


# instance fields
.field private final debounceSavable:Lorg/schabi/newpipe/util/debounce/DebounceSavable;

.field private final debouncedSaveSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

.field private final isModified:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final saveDebounceMillis:J


# direct methods
.method public static synthetic $r8$lambda$1YsdjZk3KscteZM21ZBlBvBeymI(Lorg/schabi/newpipe/util/debounce/DebounceSaver;Ljava/lang/Long;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->lambda$getDebouncedSaver$0(Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rpz8ErnKR3GHPZnjMZi4pMexFgM(Lorg/schabi/newpipe/util/debounce/DebounceSaver;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->lambda$getDebouncedSaver$1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(JLorg/schabi/newpipe/util/debounce/DebounceSavable;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->saveDebounceMillis:J

    .line 37
    invoke-static {}, Lio/reactivex/rxjava3/subjects/PublishSubject;->create()Lio/reactivex/rxjava3/subjects/PublishSubject;

    move-result-object p1

    iput-object p1, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->debouncedSaveSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

    .line 38
    iput-object p3, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->debounceSavable:Lorg/schabi/newpipe/util/debounce/DebounceSavable;

    .line 39
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->isModified:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/util/debounce/DebounceSavable;)V
    .locals 2

    const-wide/16 v0, 0x2710

    .line 49
    invoke-direct {p0, v0, v1, p1}, Lorg/schabi/newpipe/util/debounce/DebounceSaver;-><init>(JLorg/schabi/newpipe/util/debounce/DebounceSavable;)V

    return-void
.end method

.method private synthetic lambda$getDebouncedSaver$0(Ljava/lang/Long;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->debounceSavable:Lorg/schabi/newpipe/util/debounce/DebounceSavable;

    invoke-interface {p1}, Lorg/schabi/newpipe/util/debounce/DebounceSavable;->saveImmediate()V

    return-void
.end method

.method private synthetic lambda$getDebouncedSaver$1(Ljava/lang/Throwable;)V
    .locals 4

    .line 69
    iget-object v0, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->debounceSavable:Lorg/schabi/newpipe/util/debounce/DebounceSavable;

    new-instance v1, Lorg/schabi/newpipe/error/ErrorInfo;

    sget-object v2, Lorg/schabi/newpipe/error/UserAction;->SOMETHING_ELSE:Lorg/schabi/newpipe/error/UserAction;

    const-string v3, "Debounced saver"

    invoke-direct {v1, p1, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/schabi/newpipe/util/debounce/DebounceSavable;->showError(Lorg/schabi/newpipe/error/ErrorInfo;)V

    return-void
.end method


# virtual methods
.method public getDebouncedSaveSignal()Lio/reactivex/rxjava3/subjects/PublishSubject;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->debouncedSaveSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

    return-object v0
.end method

.method public getDebouncedSaver()Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 4

    .line 65
    iget-object v0, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->debouncedSaveSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

    iget-wide v1, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->saveDebounceMillis:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 67
    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lorg/schabi/newpipe/util/debounce/DebounceSaver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/schabi/newpipe/util/debounce/DebounceSaver$$ExternalSyntheticLambda0;-><init>(Lorg/schabi/newpipe/util/debounce/DebounceSaver;)V

    new-instance v2, Lorg/schabi/newpipe/util/debounce/DebounceSaver$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/schabi/newpipe/util/debounce/DebounceSaver$$ExternalSyntheticLambda1;-><init>(Lorg/schabi/newpipe/util/debounce/DebounceSaver;)V

    .line 68
    invoke-virtual {v0, v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    return-object v0
.end method

.method public getIsModified()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->isModified:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setHasChangesToSave()V
    .locals 3

    .line 74
    iget-object v0, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->isModified:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->debouncedSaveSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 78
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->debouncedSaveSignal:Lio/reactivex/rxjava3/subjects/PublishSubject;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setNoChangesToSave()V
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/schabi/newpipe/util/debounce/DebounceSaver;->isModified:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
