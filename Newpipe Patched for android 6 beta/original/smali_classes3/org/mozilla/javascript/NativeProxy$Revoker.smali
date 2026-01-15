.class final Lorg/mozilla/javascript/NativeProxy$Revoker;
.super Ljava/lang/Object;
.source "NativeProxy.java"

# interfaces
.implements Lorg/mozilla/javascript/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/NativeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Revoker"
.end annotation


# instance fields
.field private revocableProxy:Lorg/mozilla/javascript/NativeProxy;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/NativeProxy;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/mozilla/javascript/NativeProxy$Revoker;->revocableProxy:Lorg/mozilla/javascript/NativeProxy;

    return-void
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 51
    iget-object p1, p0, Lorg/mozilla/javascript/NativeProxy$Revoker;->revocableProxy:Lorg/mozilla/javascript/NativeProxy;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 52
    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeProxy;->-$$Nest$fputhandlerObj(Lorg/mozilla/javascript/NativeProxy;Lorg/mozilla/javascript/Scriptable;)V

    .line 53
    iget-object p1, p0, Lorg/mozilla/javascript/NativeProxy$Revoker;->revocableProxy:Lorg/mozilla/javascript/NativeProxy;

    invoke-static {p1, p2}, Lorg/mozilla/javascript/NativeProxy;->-$$Nest$fputtargetObj(Lorg/mozilla/javascript/NativeProxy;Lorg/mozilla/javascript/ScriptableObject;)V

    .line 54
    iput-object p2, p0, Lorg/mozilla/javascript/NativeProxy$Revoker;->revocableProxy:Lorg/mozilla/javascript/NativeProxy;

    .line 56
    :cond_0
    sget-object p1, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    return-object p1
.end method
