.class Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog$1;
.super Ljava/lang/Object;
.source "PlaybackParameterDialog.java"

# interfaces
.implements Lorg/schabi/newpipe/util/SliderStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/helper/PlaybackParameterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public progressOf(D)I
    .locals 0

    .line 72
    invoke-static {p1, p2}, Lorg/schabi/newpipe/player/helper/PlayerSemitoneHelper;->percentToSemitones(D)I

    move-result p1

    add-int/lit8 p1, p1, 0xc

    return p1
.end method

.method public valueOf(I)D
    .locals 2

    add-int/lit8 p1, p1, -0xc

    .line 77
    invoke-static {p1}, Lorg/schabi/newpipe/player/helper/PlayerSemitoneHelper;->semitonesToPercent(I)D

    move-result-wide v0

    return-wide v0
.end method
