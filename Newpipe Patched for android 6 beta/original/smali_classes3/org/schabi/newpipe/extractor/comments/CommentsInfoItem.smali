.class public Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;
.super Lorg/schabi/newpipe/extractor/InfoItem;
.source "CommentsInfoItem.java"


# instance fields
.field private commentId:Ljava/lang/String;

.field private commentText:Lorg/schabi/newpipe/extractor/stream/Description;

.field private creatorReply:Z

.field private heartedByUploader:Z

.field private isChannelOwner:Z

.field private likeCount:I

.field private pinned:Z

.field private replies:Lorg/schabi/newpipe/extractor/Page;

.field private replyCount:I

.field private streamPosition:I

.field private textualLikeCount:Ljava/lang/String;

.field private textualUploadDate:Ljava/lang/String;

.field private uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

.field private uploaderAvatars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/schabi/newpipe/extractor/Image;",
            ">;"
        }
    .end annotation
.end field

.field private uploaderName:Ljava/lang/String;

.field private uploaderUrl:Ljava/lang/String;

.field private uploaderVerified:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    sget-object v0, Lorg/schabi/newpipe/extractor/InfoItem$InfoType;->COMMENT:Lorg/schabi/newpipe/extractor/InfoItem$InfoType;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/schabi/newpipe/extractor/InfoItem;-><init>(Lorg/schabi/newpipe/extractor/InfoItem$InfoType;ILjava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object p1, Lorg/schabi/newpipe/extractor/stream/Description;->EMPTY_DESCRIPTION:Lorg/schabi/newpipe/extractor/stream/Description;

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentText:Lorg/schabi/newpipe/extractor/stream/Description;

    .line 0
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderAvatars:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCommentText()Lorg/schabi/newpipe/extractor/stream/Description;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentText:Lorg/schabi/newpipe/extractor/stream/Description;

    return-object v0
.end method

.method public getLikeCount()I
    .locals 1

    .line 110
    iget v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->likeCount:I

    return v0
.end method

.method public getReplies()Lorg/schabi/newpipe/extractor/Page;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replies:Lorg/schabi/newpipe/extractor/Page;

    return-object v0
.end method

.method public getReplyCount()I
    .locals 1

    .line 168
    iget v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replyCount:I

    return v0
.end method

.method public getTextualUploadDate()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualUploadDate:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadDate()Lorg/schabi/newpipe/extractor/localization/DateWrapper;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    return-object v0
.end method

.method public getUploaderAvatars()Ljava/util/List;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderAvatars:Ljava/util/List;

    return-object v0
.end method

.method public getUploaderName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderName:Ljava/lang/String;

    return-object v0
.end method

.method public getUploaderUrl()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isHeartedByUploader()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->heartedByUploader:Z

    return v0
.end method

.method public isPinned()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->pinned:Z

    return v0
.end method

.method public setChannelOwner(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->isChannelOwner:Z

    return-void
.end method

.method public setCommentId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentId:Ljava/lang/String;

    return-void
.end method

.method public setCommentText(Lorg/schabi/newpipe/extractor/stream/Description;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->commentText:Lorg/schabi/newpipe/extractor/stream/Description;

    return-void
.end method

.method public setCreatorReply(Z)V
    .locals 0

    .line 190
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->creatorReply:Z

    return-void
.end method

.method public setHeartedByUploader(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->heartedByUploader:Z

    return-void
.end method

.method public setLikeCount(I)V
    .locals 0

    .line 114
    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->likeCount:I

    return-void
.end method

.method public setPinned(Z)V
    .locals 0

    .line 138
    iput-boolean p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->pinned:Z

    return-void
.end method

.method public setReplies(Lorg/schabi/newpipe/extractor/Page;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replies:Lorg/schabi/newpipe/extractor/Page;

    return-void
.end method

.method public setReplyCount(I)V
    .locals 0

    .line 164
    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->replyCount:I

    return-void
.end method

.method public setStreamPosition(I)V
    .locals 0

    .line 150
    iput p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->streamPosition:I

    return-void
.end method

.method public setTextualLikeCount(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualLikeCount:Ljava/lang/String;

    return-void
.end method

.method public setTextualUploadDate(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->textualUploadDate:Ljava/lang/String;

    return-void
.end method

.method public setUploadDate(Lorg/schabi/newpipe/extractor/localization/DateWrapper;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploadDate:Lorg/schabi/newpipe/extractor/localization/DateWrapper;

    return-void
.end method

.method public setUploaderAvatars(Ljava/util/List;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderAvatars:Ljava/util/List;

    return-void
.end method

.method public setUploaderName(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderName:Ljava/lang/String;

    return-void
.end method

.method public setUploaderUrl(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->uploaderUrl:Ljava/lang/String;

    return-void
.end method
