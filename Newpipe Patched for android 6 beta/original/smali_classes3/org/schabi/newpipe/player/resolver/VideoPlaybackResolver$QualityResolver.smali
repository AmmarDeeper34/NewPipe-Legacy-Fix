.class public interface abstract Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver$QualityResolver;
.super Ljava/lang/Object;
.source "VideoPlaybackResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/player/resolver/VideoPlaybackResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QualityResolver"
.end annotation


# virtual methods
.method public abstract getDefaultResolutionIndex(Ljava/util/List;)I
.end method

.method public abstract getOverrideResolutionIndex(Ljava/util/List;Ljava/lang/String;)I
.end method
