.class final Lkotlinx/coroutines/InvokeOnCompletion;
.super Lkotlinx/coroutines/JobNode;
.source "JobSupport.kt"


# instance fields
.field private final handler:Lkotlinx/coroutines/InternalCompletionHandler;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/InternalCompletionHandler;)V
    .locals 0

    .line 1391
    invoke-direct {p0}, Lkotlinx/coroutines/JobNode;-><init>()V

    .line 1390
    iput-object p1, p0, Lkotlinx/coroutines/InvokeOnCompletion;->handler:Lkotlinx/coroutines/InternalCompletionHandler;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Throwable;)V
    .locals 1

    .line 1392
    iget-object v0, p0, Lkotlinx/coroutines/InvokeOnCompletion;->handler:Lkotlinx/coroutines/InternalCompletionHandler;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/InternalCompletionHandler;->invoke(Ljava/lang/Throwable;)V

    return-void
.end method
