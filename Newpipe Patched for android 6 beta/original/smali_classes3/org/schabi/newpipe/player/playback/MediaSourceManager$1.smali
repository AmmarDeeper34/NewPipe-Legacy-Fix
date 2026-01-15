.class Lorg/schabi/newpipe/player/playback/MediaSourceManager$1;
.super Ljava/lang/Object;
.source "MediaSourceManager.java"

# interfaces
.implements Lorg/reactivestreams/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/player/playback/MediaSourceManager;->getReactor()Lorg/reactivestreams/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$1;->this$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    .line 0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 198
    check-cast p1, Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager$1;->onNext(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V

    return-void
.end method

.method public onNext(Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$1;->this$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->-$$Nest$monPlayQueueChanged(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Lorg/schabi/newpipe/player/playqueue/events/PlayQueueEvent;)V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$1;->this$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    invoke-static {v0}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->-$$Nest$fgetplayQueueReactor(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)Lorg/reactivestreams/Subscription;

    move-result-object v0

    invoke-interface {v0}, Lorg/reactivestreams/Subscription;->cancel()V

    .line 202
    iget-object v0, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$1;->this$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    invoke-static {v0, p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->-$$Nest$fputplayQueueReactor(Lorg/schabi/newpipe/player/playback/MediaSourceManager;Lorg/reactivestreams/Subscription;)V

    .line 203
    iget-object p1, p0, Lorg/schabi/newpipe/player/playback/MediaSourceManager$1;->this$0:Lorg/schabi/newpipe/player/playback/MediaSourceManager;

    invoke-static {p1}, Lorg/schabi/newpipe/player/playback/MediaSourceManager;->-$$Nest$fgetplayQueueReactor(Lorg/schabi/newpipe/player/playback/MediaSourceManager;)Lorg/reactivestreams/Subscription;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/reactivestreams/Subscription;->request(J)V

    return-void
.end method
