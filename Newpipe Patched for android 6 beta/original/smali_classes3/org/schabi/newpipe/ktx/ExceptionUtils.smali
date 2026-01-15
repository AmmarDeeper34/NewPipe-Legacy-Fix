.class public abstract Lorg/schabi/newpipe/ktx/ExceptionUtils;
.super Ljava/lang/Object;
.source "Throwable.kt"


# direct methods
.method public static final varargs hasAssignableCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z
    .locals 1

    const-string v0, "causesToCheck"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/ktx/ExceptionUtils;->hasCause(Ljava/lang/Throwable;Z[Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static final varargs hasCause(Ljava/lang/Throwable;Z[Ljava/lang/Class;)Z
    .locals 6

    const-string v0, "causesToCheck"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 13805
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, p2, v2

    const/4 v4, 0x1

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    .line 61
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eq p0, v1, :cond_4

    .line 69
    array-length p0, p2

    invoke-static {p2, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, [Ljava/lang/Class;

    move-object p0, v1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static final varargs hasExactCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "causesToCheck"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lorg/schabi/newpipe/ktx/ExceptionUtils;->hasCause(Ljava/lang/Throwable;Z[Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static final isInterruptedCaused(Ljava/lang/Throwable;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Ljava/lang/InterruptedException;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lorg/schabi/newpipe/ktx/ExceptionUtils;->hasExactCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static final isNetworkRelated(Ljava/lang/Throwable;)Z
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/io/IOException;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lorg/schabi/newpipe/ktx/ExceptionUtils;->hasAssignableCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method
