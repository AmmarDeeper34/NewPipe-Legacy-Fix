.class public final synthetic Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;

    iput-object p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;

    iget-object v1, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->$r8$lambda$q75AQAfePo7CA-cpPMc9eTjGhFA(Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Landroid/view/View;)V

    return-void
.end method
