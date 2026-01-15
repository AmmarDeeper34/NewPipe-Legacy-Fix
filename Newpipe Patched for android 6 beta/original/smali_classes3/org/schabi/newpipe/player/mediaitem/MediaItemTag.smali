.class public interface abstract Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;
.super Ljava/lang/Object;
.source "MediaItemTag.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$AudioTrack;,
        Lorg/schabi/newpipe/player/mediaitem/MediaItemTag$Quality;
    }
.end annotation


# virtual methods
.method public abstract asMediaItem()Lcom/google/android/exoplayer2/MediaItem;
.end method

.method public abstract getErrors()Ljava/util/List;
.end method

.method public abstract getMaybeAudioTrack()Lj$/util/Optional;
.end method

.method public abstract getMaybeExtras(Ljava/lang/Class;)Lj$/util/Optional;
.end method

.method public abstract getMaybeQuality()Lj$/util/Optional;
.end method

.method public abstract getMaybeStreamInfo()Lj$/util/Optional;
.end method

.method public abstract getServiceId()I
.end method

.method public abstract getStreamUrl()Ljava/lang/String;
.end method

.method public abstract getThumbnailUrl()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUploaderName()Ljava/lang/String;
.end method

.method public abstract makeMediaId()Ljava/lang/String;
.end method

.method public abstract withExtras(Ljava/lang/Object;)Lorg/schabi/newpipe/player/mediaitem/MediaItemTag;
.end method
