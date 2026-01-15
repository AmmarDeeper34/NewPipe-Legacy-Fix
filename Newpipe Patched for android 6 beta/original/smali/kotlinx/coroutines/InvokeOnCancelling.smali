.class final Lkotlinx/coroutines/InvokeOnCancelling;
.super Lkotlinx/coroutines/JobCancellingNode;
.source "JobSupport.kt"


# static fields
.field private static final synthetic _invoked$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _invoked$volatile:I

.field private final handler:Lkotlinx/coroutines/InternalCompletionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 0
    const-class v0, Lkotlinx/coroutines/InvokeOnCancelling;

    const-string v1, "_invoked$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/InvokeOnCancelling;->_invoked$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/InternalCompletionHandler;)V
    .locals 0

    .line 1434
    invoke-direct {p0}, Lkotlinx/coroutines/JobCancellingNode;-><init>()V

    .line 1433
    iput-object p1, p0, Lkotlinx/coroutines/InvokeOnCancelling;->handler:Lkotlinx/coroutines/InternalCompletionHandler;

    return-void
.end method

.method private static final synthetic get_invoked$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1

    .line 0
    sget-object v0, Lkotlinx/coroutines/InvokeOnCancelling;->_invoked$volatile$FU:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-object v0
.end method


# virtual methods
.method public invoke(Ljava/lang/Throwable;)V
    .locals 3

    .line 1438
    invoke-static {}, Lkotlinx/coroutines/InvokeOnCancelling;->get_invoked$volatile$FU()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/coroutines/InvokeOnCancelling;->handler:Lkotlinx/coroutines/InternalCompletionHandler;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/InternalCompletionHandler;->invoke(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
