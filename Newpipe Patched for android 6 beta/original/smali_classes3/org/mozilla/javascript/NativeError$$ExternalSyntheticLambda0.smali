.class public final synthetic Lorg/mozilla/javascript/NativeError$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/NativeError;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/NativeError;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/NativeError$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/NativeError;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/mozilla/javascript/NativeError$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/NativeError;

    invoke-virtual {v0}, Lorg/mozilla/javascript/NativeError;->getStackDelegated()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
