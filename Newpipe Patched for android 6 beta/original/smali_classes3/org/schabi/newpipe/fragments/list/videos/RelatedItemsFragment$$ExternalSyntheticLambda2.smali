.class public final synthetic Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;

    invoke-static {v0}, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;->$r8$lambda$Xu92_J9m8mQjapMw8rh-AiQRjSY(Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment;)Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsInfo;

    move-result-object v0

    return-object v0
.end method
