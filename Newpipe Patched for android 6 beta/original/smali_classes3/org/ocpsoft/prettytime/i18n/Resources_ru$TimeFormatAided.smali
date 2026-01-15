.class Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;
.super Ljava/lang/Object;
.source "Resources_ru.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/TimeFormat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ocpsoft/prettytime/i18n/Resources_ru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeFormatAided"
.end annotation


# instance fields
.field private final pluarls:[Ljava/lang/String;

.field final synthetic this$0:Lorg/ocpsoft/prettytime/i18n/Resources_ru;


# direct methods
.method public varargs constructor <init>(Lorg/ocpsoft/prettytime/i18n/Resources_ru;[Ljava/lang/String;)V
    .locals 4

    .line 27
    iput-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->this$0:Lorg/ocpsoft/prettytime/i18n/Resources_ru;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    array-length p1, p2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 32
    iput-object p2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->pluarls:[Ljava/lang/String;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object p2, v2, v0

    .line 29
    const-string p2, "Wrong plural forms number for russian language! Expected %s, got %s\nPlurals: %s"

    invoke-static {p2, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public decorate(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->requiresReformatting(Lorg/ocpsoft/prettytime/Duration;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p2, 0x32

    .line 68
    invoke-interface {p1, p2}, Lorg/ocpsoft/prettytime/Duration;->getQuantityRounded(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const/4 p2, 0x0

    .line 69
    invoke-virtual {p0, v0, v1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performFormat(JZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 71
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public decorateUnrounded(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, p1, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->requiresReformatting(Lorg/ocpsoft/prettytime/Duration;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 78
    invoke-virtual {p0, v1, v2, v0}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performFormat(JZ)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 80
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public formatUnrounded(Lorg/ocpsoft/prettytime/Duration;)Ljava/lang/String;
    .locals 2

    .line 43
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const/4 p1, 0x1

    .line 44
    invoke-virtual {p0, v0, v1, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->performFormat(JZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public performDecoration(Lorg/ocpsoft/prettytime/Duration;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 84
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInFuture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u0447\u0435\u0440\u0435\u0437 "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->isInPast()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " \u043d\u0430\u0437\u0430\u0434"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public performFormat(JZ)Ljava/lang/String;
    .locals 11

    const-wide/16 v0, 0xa

    .line 50
    rem-long v2, p1, v0

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x64

    cmp-long v8, v2, v4

    if-nez v8, :cond_0

    rem-long v4, p1, v6

    const-wide/16 v8, 0xb

    cmp-long v10, v4, v8

    if-eqz v10, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x2

    cmp-long v8, v2, v4

    if-ltz v8, :cond_2

    const-wide/16 v4, 0x4

    cmp-long v8, v2, v4

    if-gtz v8, :cond_2

    .line 51
    rem-long v2, p1, v6

    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    const-wide/16 v0, 0x14

    cmp-long v4, v2, v0

    if-ltz v4, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 58
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_ru$TimeFormatAided;->pluarls:[Ljava/lang/String;

    if-eqz p3, :cond_3

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 60
    :goto_1
    aget-object p1, p1, v0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public requiresReformatting(Lorg/ocpsoft/prettytime/Duration;Z)Z
    .locals 3

    if-eqz p2, :cond_0

    const/16 p2, 0x32

    .line 103
    invoke-interface {p1, p2}, Lorg/ocpsoft/prettytime/Duration;->getQuantityRounded(I)J

    move-result-wide p1

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/ocpsoft/prettytime/Duration;->getQuantity()J

    move-result-wide p1

    goto :goto_0

    :goto_1
    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
