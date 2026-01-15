.class public final synthetic Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/SlotMap$SlotComputer;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/SlotMap$SlotComputer;Ljava/lang/Object;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/SlotMap$SlotComputer;

    iput-object p2, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput p3, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/SlotMap$SlotComputer;

    iget-object v1, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iget v2, p0, Lorg/mozilla/javascript/HashSlotMap$$ExternalSyntheticLambda0;->f$2:I

    check-cast p2, Lorg/mozilla/javascript/Slot;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/mozilla/javascript/HashSlotMap;->$r8$lambda$vrs9sZlh5OnqktHtiKCFXecfcPg(Lorg/mozilla/javascript/SlotMap$SlotComputer;Ljava/lang/Object;ILjava/lang/Object;Lorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;

    move-result-object p1

    return-object p1
.end method
