.class Lorg/schabi/newpipe/App$1;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/App;->configureRxJavaErrorHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/App;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/App;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lorg/schabi/newpipe/App$1;->this$0:Lorg/schabi/newpipe/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isThrowableCritical(Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v0, 0x5

    .line 211
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/NullPointerException;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lio/reactivex/rxjava3/exceptions/OnErrorNotImplementedException;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lio/reactivex/rxjava3/exceptions/MissingBackpressureException;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/IllegalStateException;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lorg/schabi/newpipe/ktx/ExceptionUtils;->hasAssignableCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method private isThrowableIgnored(Ljava/lang/Throwable;)Z
    .locals 3

    const/4 v0, 0x4

    .line 202
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/io/IOException;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/net/SocketException;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/InterruptedException;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lorg/schabi/newpipe/ktx/ExceptionUtils;->hasAssignableCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method private reportException(Ljava/lang/Throwable;)V
    .locals 2

    .line 219
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 159
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/App$1;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 3

    .line 162
    invoke-static {}, Lorg/schabi/newpipe/App;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RxJavaPlugins.ErrorHandler called with -> : throwable = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    instance-of v0, p1, Lio/reactivex/rxjava3/exceptions/UndeliverableException;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    instance-of v0, p1, Lio/reactivex/rxjava3/exceptions/CompositeException;

    if-eqz v0, :cond_1

    .line 176
    move-object v0, p1

    check-cast v0, Lio/reactivex/rxjava3/exceptions/CompositeException;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {p1}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 181
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 182
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/App$1;->isThrowableIgnored(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    .line 185
    :cond_3
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/App$1;->isThrowableCritical(Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    invoke-direct {p0, v1}, Lorg/schabi/newpipe/App$1;->reportException(Ljava/lang/Throwable;)V

    return-void

    .line 193
    :cond_4
    iget-object v0, p0, Lorg/schabi/newpipe/App$1;->this$0:Lorg/schabi/newpipe/App;

    invoke-virtual {v0}, Lorg/schabi/newpipe/App;->isDisposedRxExceptionsReported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/App$1;->reportException(Ljava/lang/Throwable;)V

    return-void

    .line 196
    :cond_5
    invoke-static {}, Lorg/schabi/newpipe/App;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RxJavaPlugin: Undeliverable Exception received: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
