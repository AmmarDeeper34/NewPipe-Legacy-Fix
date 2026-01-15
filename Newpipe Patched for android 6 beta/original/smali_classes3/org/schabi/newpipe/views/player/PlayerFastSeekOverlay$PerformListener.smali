.class public interface abstract Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener;
.super Ljava/lang/Object;
.source "PlayerFastSeekOverlay.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PerformListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;
    }
.end annotation


# virtual methods
.method public abstract getFastSeekDirection(Lorg/schabi/newpipe/player/gesture/DisplayPortion;)Lorg/schabi/newpipe/views/player/PlayerFastSeekOverlay$PerformListener$FastSeekDirection;
.end method

.method public abstract onDoubleTap()V
.end method

.method public abstract onDoubleTapEnd()V
.end method

.method public abstract seek(Z)V
.end method
