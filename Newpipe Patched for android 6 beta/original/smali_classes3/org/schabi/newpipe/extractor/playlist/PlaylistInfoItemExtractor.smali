.class public interface abstract Lorg/schabi/newpipe/extractor/playlist/PlaylistInfoItemExtractor;
.super Ljava/lang/Object;
.source "PlaylistInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/InfoItemExtractor;


# virtual methods
.method public abstract getDescription()Lorg/schabi/newpipe/extractor/stream/Description;
.end method

.method public abstract getPlaylistType()Lorg/schabi/newpipe/extractor/playlist/PlaylistInfo$PlaylistType;
.end method

.method public abstract getStreamCount()J
.end method

.method public abstract getUploaderName()Ljava/lang/String;
.end method

.method public abstract getUploaderUrl()Ljava/lang/String;
.end method

.method public abstract isUploaderVerified()Z
.end method
