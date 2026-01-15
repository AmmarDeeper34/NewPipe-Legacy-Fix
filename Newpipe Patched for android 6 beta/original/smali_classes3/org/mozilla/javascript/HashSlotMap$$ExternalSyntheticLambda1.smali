.class public final synthetic Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput p2, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iget v1, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lorg/mozilla/javascript/HashSlotMap;->$r8$lambda$82Dl6LZ9dzVFsMnCum6_nKyEBLQ(Ljava/lang/Object;IILjava/lang/Object;)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
