.class Lorg/mozilla/javascript/NativeProxy$1;
.super Lorg/mozilla/javascript/LambdaConstructor;
.source "NativeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/NativeProxy;->init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILorg/mozilla/javascript/Constructable;)V
    .locals 0

    .line 67
    invoke-direct/range {p0 .. p5}, Lorg/mozilla/javascript/LambdaConstructor;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILorg/mozilla/javascript/Constructable;)V

    return-void
.end method


# virtual methods
.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/mozilla/javascript/LambdaConstructor;->getTargetConstructor()Lorg/mozilla/javascript/Constructable;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/mozilla/javascript/Constructable;->construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/NativeProxy;

    .line 74
    invoke-virtual {p0}, Lorg/mozilla/javascript/BaseFunction;->getClassPrototype()Lorg/mozilla/javascript/Scriptable;

    move-result-object p3

    invoke-static {p1, p3}, Lorg/mozilla/javascript/NativeProxy;->-$$Nest$msetPrototypeDirect(Lorg/mozilla/javascript/NativeProxy;Lorg/mozilla/javascript/Scriptable;)V

    .line 75
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/ScriptableObject;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    return-object p1
.end method
