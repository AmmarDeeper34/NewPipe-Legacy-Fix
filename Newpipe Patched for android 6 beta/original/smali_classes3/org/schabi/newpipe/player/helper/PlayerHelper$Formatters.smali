.class final Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;
.super Lcom/android/tools/r8/RecordTag;
.source "PlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/helper/PlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Formatters"
.end annotation


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final pitch:Ljava/text/NumberFormat;

.field private final speed:Ljava/text/NumberFormat;


# direct methods
.method private synthetic $record$equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->locale:Ljava/util/Locale;

    iget-object v1, p1, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->speed:Ljava/text/NumberFormat;

    iget-object v1, p1, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->speed:Ljava/text/NumberFormat;

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->pitch:Ljava/text/NumberFormat;

    iget-object p1, p1, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->pitch:Ljava/text/NumberFormat;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->speed:Ljava/text/NumberFormat;

    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->pitch:Ljava/text/NumberFormat;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    return-object v3
.end method

.method constructor <init>(Ljava/util/Locale;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V
    .locals 0

    .line 486
    invoke-direct {p0}, Lcom/android/tools/r8/RecordTag;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->locale:Ljava/util/Locale;

    iput-object p2, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->speed:Ljava/text/NumberFormat;

    iput-object p3, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->pitch:Ljava/text/NumberFormat;

    return-void
.end method

.method static create()Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;
    .locals 6

    .line 492
    invoke-static {}, Lorg/schabi/newpipe/util/Localization;->getAppLocale()Ljava/util/Locale;

    move-result-object v0

    .line 493
    invoke-static {v0}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v1

    .line 494
    new-instance v2, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "0.##x"

    invoke-direct {v3, v4, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "##%"

    invoke-direct {v4, v5, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    invoke-direct {v2, v0, v3, v4}, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;-><init>(Ljava/util/Locale;Ljava/text/NumberFormat;Ljava/text/NumberFormat;)V

    return-object v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 486
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->$record$equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 3

    .line 486
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->speed:Ljava/text/NumberFormat;

    iget-object v2, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->pitch:Ljava/text/NumberFormat;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public pitch()Ljava/text/NumberFormat;
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->pitch:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public speed()Ljava/text/NumberFormat;
    .locals 1

    .line 486
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->speed:Ljava/text/NumberFormat;

    return-object v0
.end method

.method varargs stringFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 501
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->locale:Ljava/util/Locale;

    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 486
    invoke-direct {p0}, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    const-string v2, "locale;speed;pitch"

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
