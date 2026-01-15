.class public final synthetic Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;->$r8$lambda$aXgnEHomG0Xqtq0RIwpJjepytR4(Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesFragment;)Lorg/schabi/newpipe/fragments/list/comments/CommentRepliesInfo;

    move-result-object v0

    return-object v0
.end method
