.class Lorg/schabi/newpipe/MainActivity$4;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/schabi/newpipe/MainActivity;->openDetailFragmentFromCommentReplies(Landroidx/fragment/app/FragmentManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/schabi/newpipe/MainActivity;

.field final synthetic val$behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

.field final synthetic val$fm:Landroidx/fragment/app/FragmentManager;

.field final synthetic val$rootComment:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;


# direct methods
.method constructor <init>(Lorg/schabi/newpipe/MainActivity;Landroidx/fragment/app/FragmentManager;Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 947
    iput-object p1, p0, Lorg/schabi/newpipe/MainActivity$4;->this$0:Lorg/schabi/newpipe/MainActivity;

    iput-object p2, p0, Lorg/schabi/newpipe/MainActivity$4;->val$fm:Landroidx/fragment/app/FragmentManager;

    iput-object p3, p0, Lorg/schabi/newpipe/MainActivity$4;->val$rootComment:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    iput-object p4, p0, Lorg/schabi/newpipe/MainActivity$4;->val$behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 952
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$4;->val$fm:Landroidx/fragment/app/FragmentManager;

    const p2, 0x7f0a01a2

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    .line 954
    instance-of p2, p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/schabi/newpipe/MainActivity$4;->val$rootComment:Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;

    if-eqz p2, :cond_0

    .line 956
    check-cast p1, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;

    invoke-virtual {p1, p2}, Lorg/schabi/newpipe/fragments/detail/VideoDetailFragment;->scrollToComment(Lorg/schabi/newpipe/extractor/comments/CommentsInfoItem;)V

    .line 958
    :cond_0
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$4;->val$behavior:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->removeBottomSheetCallback(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    :cond_1
    return-void
.end method
