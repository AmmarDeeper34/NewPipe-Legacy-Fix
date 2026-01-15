.class public final synthetic Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/util/text/TextEllipsizer;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/util/text/TextEllipsizer;Ljava/util/function/Consumer;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    iput-object p2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Consumer;

    iput-boolean p3, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/util/text/TextEllipsizer;

    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;->f$1:Ljava/util/function/Consumer;

    iget-boolean v2, p0, Lorg/schabi/newpipe/util/text/TextEllipsizer$$ExternalSyntheticLambda3;->f$2:Z

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0, v1, v2, p1}, Lorg/schabi/newpipe/util/text/TextEllipsizer;->$r8$lambda$bBiENG5WOcr0EqYjXLrJDuUL1xA(Lorg/schabi/newpipe/util/text/TextEllipsizer;Ljava/util/function/Consumer;ZLandroid/widget/TextView;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
