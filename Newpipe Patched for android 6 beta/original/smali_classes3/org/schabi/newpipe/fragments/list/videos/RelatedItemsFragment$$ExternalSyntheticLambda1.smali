.class public final synthetic Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/videos/RelatedItemsFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;

    invoke-virtual {v0}, Lorg/schabi/newpipe/databinding/RelatedItemsHeaderBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method
