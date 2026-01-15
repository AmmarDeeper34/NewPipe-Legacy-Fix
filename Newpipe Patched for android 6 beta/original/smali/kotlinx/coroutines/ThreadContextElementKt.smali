.class public abstract Lkotlinx/coroutines/ThreadContextElementKt;
.super Ljava/lang/Object;
.source "ThreadContextElement.kt"


# direct methods
.method public static final asContextElement(Ljava/lang/ThreadLocal;Ljava/lang/Object;)Lkotlinx/coroutines/ThreadContextElement;
    .locals 1

    .line 246
    new-instance v0, Lkotlinx/coroutines/internal/ThreadLocalElement;

    invoke-direct {v0, p1, p0}, Lkotlinx/coroutines/internal/ThreadLocalElement;-><init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V

    return-object v0
.end method
