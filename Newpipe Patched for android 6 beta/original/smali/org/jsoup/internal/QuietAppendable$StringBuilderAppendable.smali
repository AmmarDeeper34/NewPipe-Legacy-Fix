.class final Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;
.super Lorg/jsoup/internal/QuietAppendable;
.source "QuietAppendable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/internal/QuietAppendable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringBuilderAppendable"
.end annotation


# instance fields
.field private final sb:Ljava/lang/StringBuilder;


# direct methods
.method private constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lorg/jsoup/internal/QuietAppendable;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;->sb:Ljava/lang/StringBuilder;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/StringBuilder;Lorg/jsoup/internal/QuietAppendable$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;-><init>(Ljava/lang/StringBuilder;)V

    return-void
.end method


# virtual methods
.method public append(C)Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic append(C)Lorg/jsoup/internal/QuietAppendable;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;

    move-result-object p1

    return-object p1
.end method

.method public append([CII)Lorg/jsoup/internal/QuietAppendable;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/jsoup/internal/QuietAppendable$StringBuilderAppendable;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
