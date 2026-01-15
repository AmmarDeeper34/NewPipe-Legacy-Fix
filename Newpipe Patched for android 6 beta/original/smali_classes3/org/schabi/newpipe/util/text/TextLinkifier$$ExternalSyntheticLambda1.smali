.class public final synthetic Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/Consumer;

    check-cast p1, Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/text/TextLinkifier;->$r8$lambda$ENxjE18Nvt_uUTydkiaRGHuIYgg(Landroid/widget/TextView;Ljava/util/function/Consumer;Landroid/text/SpannableStringBuilder;)V

    return-void
.end method
