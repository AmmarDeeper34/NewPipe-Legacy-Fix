.class public final Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesInfo;
.super Lorg/schabi/newpipe/extractor/ListInfo;
.source "CommentRepliesInfo.java"


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Ljava/lang/String;)V
    .locals 7

    .line 17
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/InfoItem;->getServiceId()I

    move-result v0

    new-instance v1, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;

    .line 18
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v6, 0x0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-direct/range {v1 .. v6}, Lorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, v0, v1, p2}, Lorg/schabi/newpipe/extractor/ListInfo;-><init>(ILorg/schabi/newpipe/extractor/linkhandler/ListLinkHandler;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;->getReplies()Lorg/schabi/newpipe/extractor/Page;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/ListInfo;->setNextPage(Lorg/schabi/newpipe/extractor/Page;)V

    .line 20
    invoke-virtual {p0, v5}, Lorg/schabi/newpipe/extractor/ListInfo;->setRelatedItems(Ljava/util/List;)V

    return-void
.end method
