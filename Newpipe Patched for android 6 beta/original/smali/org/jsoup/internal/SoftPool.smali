.class public Lorg/jsoup/internal/SoftPool;
.super Ljava/lang/Object;
.source "SoftPool.java"


# instance fields
.field private final initializer:Ljava/util/function/Supplier;

.field final threadLocalStack:Ljava/lang/ThreadLocal;


# direct methods
.method public static synthetic $r8$lambda$GGjBhn1LMjw9_mk_92xWfHTsQ4o()Ljava/lang/ref/SoftReference;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/util/function/Supplier;

    .line 30
    new-instance p1, Lorg/jsoup/internal/SoftPool$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lorg/jsoup/internal/SoftPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v0, Lorg/jsoup/internal/SoftPool$$ExternalSyntheticThreadLocal1;

    invoke-direct {v0, p1}, Lorg/jsoup/internal/SoftPool$$ExternalSyntheticThreadLocal1;-><init>(Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public borrow()Ljava/lang/Object;
    .locals 2

    .line 39
    invoke-virtual {p0}, Lorg/jsoup/internal/SoftPool;->getStack()Ljava/util/ArrayDeque;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/jsoup/internal/SoftPool;->initializer:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getStack()Ljava/util/ArrayDeque;
    .locals 3

    .line 59
    iget-object v0, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 62
    iget-object v1, p0, Lorg/jsoup/internal/SoftPool;->threadLocalStack:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public release(Ljava/lang/Object;)V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lorg/jsoup/internal/SoftPool;->getStack()Ljava/util/ArrayDeque;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 54
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
