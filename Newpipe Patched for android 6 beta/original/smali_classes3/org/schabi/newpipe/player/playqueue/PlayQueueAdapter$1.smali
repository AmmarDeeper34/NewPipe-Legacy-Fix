.class Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;
.super Ljava/lang/Object;
.source "PlayQueueAdapter.java"

# interfaces
.implements Lio/reactivex/rxjava3/core/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->getReactor()Lio/reactivex/rxjava3/core/Observer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;->this$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 96
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;->this$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    invoke-virtual {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->dispose()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 75
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;->onNext(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V

    return-void
.end method

.method public onNext(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;->this$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    invoke-static {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->-$$Nest$fgetplayQueueReactor(Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;->this$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->-$$Nest$monPlayQueueChanged(Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;->this$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    invoke-static {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->-$$Nest$fgetplayQueueReactor(Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;->this$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    invoke-static {v0}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->-$$Nest$fgetplayQueueReactor(Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    invoke-interface {v0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    .line 81
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter$1;->this$0:Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;->-$$Nest$fputplayQueueReactor(Lorg/schabi/newpipe/player/playqueue/PlayQueueAdapter;Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
