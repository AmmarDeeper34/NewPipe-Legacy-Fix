.class public Lorg/mozilla/javascript/engine/RhinoCompiledScript;
.super Ljavax/script/CompiledScript;
.source "RhinoCompiledScript.java"


# instance fields
.field private final engine:Lorg/mozilla/javascript/engine/RhinoScriptEngine;

.field private final script:Lorg/mozilla/javascript/Script;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/engine/RhinoScriptEngine;Lorg/mozilla/javascript/Script;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljavax/script/CompiledScript;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/mozilla/javascript/engine/RhinoCompiledScript;->engine:Lorg/mozilla/javascript/engine/RhinoScriptEngine;

    .line 20
    iput-object p2, p0, Lorg/mozilla/javascript/engine/RhinoCompiledScript;->script:Lorg/mozilla/javascript/Script;

    return-void
.end method


# virtual methods
.method public eval(Ljavax/script/ScriptContext;)Ljava/lang/Object;
    .locals 2

    .line 25
    iget-object v0, p0, Lorg/mozilla/javascript/engine/RhinoCompiledScript;->engine:Lorg/mozilla/javascript/engine/RhinoScriptEngine;

    iget-object v1, p0, Lorg/mozilla/javascript/engine/RhinoCompiledScript;->script:Lorg/mozilla/javascript/Script;

    invoke-virtual {v0, v1, p1}, Lorg/mozilla/javascript/engine/RhinoScriptEngine;->eval(Lorg/mozilla/javascript/Script;Ljavax/script/ScriptContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEngine()Ljavax/script/ScriptEngine;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/mozilla/javascript/engine/RhinoCompiledScript;->engine:Lorg/mozilla/javascript/engine/RhinoScriptEngine;

    return-object v0
.end method
