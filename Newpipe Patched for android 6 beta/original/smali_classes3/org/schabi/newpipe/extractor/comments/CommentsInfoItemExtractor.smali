.class public interface abstract Lorg/schabi/newpipe/extractor/comments/CommentsInfoItemExtractor;
.super Ljava/lang/Object;
.source "CommentsInfoItemExtractor.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/InfoItemExtractor;


# virtual methods
.method public abstract getCommentId()Ljava/lang/String;
.end method

.method public abstract getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;
.end method

.method public abstract getLikeCount()I
.end method

.method public abstract getReplies()Lorg/schabi/newpipe/extractor/Page;
.end method

.method public abstract getReplyCount()I
.end method

.method public abstract getStreamPosition()I
.end method

.method public abstract getTextualLikeCount()Ljava/lang/String;
.end method

.method public abstract getTextualUploadDate()Ljava/lang/String;
.end method

.method public abstract getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
.end method

.method public abstract getUploaderAvatars()Ljava/util/List;
.end method

.method public abstract getUploaderName()Ljava/lang/String;
.end method

.method public abstract getUploaderUrl()Ljava/lang/String;
.end method

.method public abstract hasCreatorReply()Z
.end method

.method public abstract isChannelOwner()Z
.end method

.method public abstract isHeartedByUploader()Z
.end method

.method public abstract isPinned()Z
.end method
