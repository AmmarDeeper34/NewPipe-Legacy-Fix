.class public final synthetic Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

.field public final synthetic f$1:Landroid/view/LayoutInflater;

.field public final synthetic f$2:Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;Landroid/view/LayoutInflater;Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda1;->f$1:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda1;->f$1:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment$$ExternalSyntheticLambda1;->f$2:Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;->$r8$lambda$8Y-Dy_O0Zvcd-AK2sAiDtQeclhQ(Lorg/schabi/newpipe/fragments/detail/BaseDescriptionFragment;Landroid/view/LayoutInflater;Lorg/schabi/newpipe/databinding/ItemMetadataTagsBinding;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
