.class public abstract Lorg/jsoup/internal/QuietAppendable;
.super Ljava/lang/Object;
.source "QuietAppendable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;,
        Lorg/jsoup/internal/QuietAppendable$BaseAppendable;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap(Ljava/lang/Appendable;)Lorg/jsoup/internal/QuietAppendable;
    .locals 2

    .line 89
    instance-of v0, p0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0, v1}, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;-><init>(Ljava/lang/StringBuilder;Lorg/jsoup/internal/QuietAppendable$1;)V

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    invoke-direct {v0, p0, v1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;-><init>(Ljava/lang/Appendable;Lorg/jsoup/internal/QuietAppendable$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract append(C)Lorg/jsoup/internal/QuietAppendable;
.end method

.method public abstract append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;
.end method

.method public abstract append([CII)Lorg/jsoup/internal/QuietAppendable;
.end method
