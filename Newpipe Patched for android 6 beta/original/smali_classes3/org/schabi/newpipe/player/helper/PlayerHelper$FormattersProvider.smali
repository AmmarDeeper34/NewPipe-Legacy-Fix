.class Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;
.super Ljava/lang/Object;
.source "PlayerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/helper/PlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FormattersProvider"
.end annotation


# instance fields
.field private formatters:Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public formatters()Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;
    .locals 1

    .line 475
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;->formatters:Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    if-nez v0, :cond_0

    .line 476
    invoke-static {}, Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;->create()Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    move-result-object v0

    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;->formatters:Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    .line 478
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;->formatters:Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Lorg/schabi/newpipe/player/helper/PlayerHelper$FormattersProvider;->formatters:Lorg/schabi/newpipe/player/helper/PlayerHelper$Formatters;

    return-void
.end method
