.class Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;
.super Ljava/lang/Object;
.source "Resources_be.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/TimeFormat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ocpsoft/prettytime/i18n/Resources_be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeFormatAided"
.end annotation


# instance fields
.field private final pluarls:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 36
    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;->pluarls:[Ljava/lang/String;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong plural forms number for slavic language!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private performDecoration(ZZJLjava/lang/String;)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0xa

    .line 77
    rem-long v2, p3, v0

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x64

    cmp-long v8, v2, v4

    if-nez v8, :cond_0

    rem-long v4, p3, v6

    const-wide/16 v8, 0xb

    cmp-long v10, v4, v8

    if-eqz v10, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2

    cmp-long v8, v2, v4

    if-ltz v8, :cond_2

    const-wide/16 v4, 0x4

    cmp-long v8, v2, v4

    if-gtz v8, :cond_2

    .line 78
    rem-long/2addr p3, v6

    cmp-long v2, p3, v0

    if-ltz v2, :cond_1

    const-wide/16 v0, 0x14

    cmp-long v2, p3, v0

    if-ltz v2, :cond_2

    :cond_1
    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x2

    .line 84
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_3

    .line 87
    const-string p2, "\u043f\u0440\u0430\u0437 "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move-object/from16 p2, p5

    .line 90
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    .line 91
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    iget-object p2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;->pluarls:[Ljava/lang/String;

    aget-object p2, p2, p3

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    .line 95
    const-string p1, " \u0442\u0430\u043c\u0443"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    :cond_4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 57
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v1

    .line 58
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInFuture()Z

    move-result v2

    const/16 v0, 0x32

    .line 59
    invoke-interface {p1, v0}, Lorg/ocpsoft/prettytime/Duration;->getQuantityRounded(I)J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    .line 56
    invoke-direct/range {v0 .. v5}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;->performDecoration(ZZJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 67
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result v1

    .line 68
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInFuture()Z

    move-result v2

    .line 69
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    .line 66
    invoke-direct/range {v0 .. v5}, Lorg/ocpsoft/prettytime/i18n/Resources_be$TimeFormatAided;->performDecoration(ZZJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 2

    .line 49
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide v0

    .line 50
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
