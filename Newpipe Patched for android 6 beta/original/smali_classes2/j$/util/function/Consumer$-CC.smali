.class public final synthetic Lj$/util/function/Consumer$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 2

    .line 64
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lj$/nio/file/b0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Lj$/nio/file/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
