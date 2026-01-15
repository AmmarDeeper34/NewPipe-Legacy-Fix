.class final Lorg/jsoup/internal/QuietAppendable$BaseAppendable;
.super Lorg/jsoup/internal/QuietAppendable;
.source "QuietAppendable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/internal/QuietAppendable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BaseAppendable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/internal/QuietAppendable$BaseAppendable$Action;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Appendable;


# direct methods
.method public static synthetic $r8$lambda$1_Yl31IDMn2_hW4dpdXRAQxFg0Y(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Ljava/lang/CharSequence;)V
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->a:Ljava/lang/Appendable;

    .line 42
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public static synthetic $r8$lambda$TCx6tq3q3JVEJ_kB9DTfKOTvFvI(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;[CII)V
    .locals 1

    .line 52
    iget-object p0, p0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->a:Ljava/lang/Appendable;

    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method public static synthetic $r8$lambda$hstDiP1Uy4J47Ak9JBEl2M9Vuz8(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;C)V
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->a:Ljava/lang/Appendable;

    .line 47
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Appendable;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/jsoup/internal/QuietAppendable;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->a:Ljava/lang/Appendable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lorg/jsoup/internal/QuietAppendable$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method

.method private quiet(Lorg/jsoup/internal/QuietAppendable$BaseAppendable$Action;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;
    .locals 1

    .line 33
    :try_start_0
    invoke-interface {p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable$Action;->append()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 35
    new-instance v0, Lorg/jsoup/SerializationException;

    invoke-direct {v0, p1}, Lorg/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;
    .locals 1

    .line 47
    new-instance v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable$$ExternalSyntheticLambda0;-><init>(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;C)V

    invoke-direct {p0, v0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->quiet(Lorg/jsoup/internal/QuietAppendable$BaseAppendable$Action;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;
    .locals 1

    .line 42
    new-instance v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable$$ExternalSyntheticLambda2;-><init>(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->quiet(Lorg/jsoup/internal/QuietAppendable$BaseAppendable$Action;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(C)Lorg/jsoup/internal/QuietAppendable;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(C)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable;
    .locals 0

    .line 19
    invoke-virtual {p0, p1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->append(Ljava/lang/CharSequence;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    move-result-object p1

    return-object p1
.end method

.method public append([CII)Lorg/jsoup/internal/QuietAppendable;
    .locals 1

    .line 52
    new-instance v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable$$ExternalSyntheticLambda1;-><init>(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;[CII)V

    invoke-direct {p0, v0}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->quiet(Lorg/jsoup/internal/QuietAppendable$BaseAppendable$Action;)Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    move-result-object p1

    return-object p1
.end method
