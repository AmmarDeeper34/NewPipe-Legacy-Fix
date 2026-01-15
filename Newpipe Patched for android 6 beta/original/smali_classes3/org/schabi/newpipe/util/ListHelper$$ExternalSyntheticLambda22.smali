.class public final synthetic Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda22;->f$0:I

    iput p2, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda22;->f$1:I

    return-void
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 0
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda22;->f$0:I

    iget v1, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda22;->f$1:I

    check-cast p1, Lorg/schabi/newpipe/extractor/stream/Stream;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/util/ListHelper;->$r8$lambda$KhPY2r2B5PDEIZrn1Yc8N-2YH5A(IILorg/schabi/newpipe/extractor/stream/Stream;)Z

    move-result p1

    return p1
.end method
