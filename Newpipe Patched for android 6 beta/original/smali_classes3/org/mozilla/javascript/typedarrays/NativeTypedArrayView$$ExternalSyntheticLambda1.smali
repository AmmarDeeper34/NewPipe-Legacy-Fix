.class public final synthetic Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda1;->f$0:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;

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
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$$ExternalSyntheticLambda1;->f$0:Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;

    check-cast p1, Lorg/mozilla/javascript/Scriptable;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView;->$r8$lambda$wwNrCH5-2H68mwP2xeSZ_Mcfrng(Lorg/mozilla/javascript/typedarrays/NativeTypedArrayView$RealThis;Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

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
