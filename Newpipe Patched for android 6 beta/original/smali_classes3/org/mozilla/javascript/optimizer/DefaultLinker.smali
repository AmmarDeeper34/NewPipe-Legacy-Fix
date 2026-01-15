.class Lorg/mozilla/javascript/optimizer/DefaultLinker;
.super Ljava/lang/Object;
.source "DefaultLinker.java"

# interfaces
.implements Ljdk/dynalink/linker/GuardingDynamicLinker;


# static fields
.field static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-string v0, "RHINO_DEBUG_LINKER"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 30
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 32
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/mozilla/javascript/optimizer/DefaultLinker;->DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/invoke/MethodHandles$Lookup;",
            "Ljava/lang/invoke/MethodType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 262
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, p4, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    .line 263
    invoke-virtual {p0, p2, p3, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    .line 264
    new-array p1, v0, [Ljava/lang/Object;

    aput-object p5, p1, v2

    invoke-static {p0, p4, p1}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p0

    return-object p0
.end method

.method private getInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 1

    .line 60
    sget-object v0, Ljdk/dynalink/StandardNamespace;->PROPERTY:Ljdk/dynalink/StandardNamespace;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isNamespace(Ljdk/dynalink/Namespace;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->getPropertyInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;

    move-result-object p1

    return-object p1

    .line 62
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->NAME:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isNamespace(Ljdk/dynalink/Namespace;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->getNameInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;

    move-result-object p1

    return-object p1

    .line 64
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoNamespace;->MATH:Lorg/mozilla/javascript/optimizer/RhinoNamespace;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isNamespace(Ljdk/dynalink/Namespace;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->getMathInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;

    move-result-object p1

    return-object p1

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getMathInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 2

    .line 198
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->ADD:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    const-class v1, Lorg/mozilla/javascript/ScriptRuntime;

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "add"

    invoke-virtual {p1, v1, v0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto/16 :goto_0

    .line 200
    :cond_0
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMBER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "toNumber"

    invoke-virtual {p1, v1, v0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto/16 :goto_0

    .line 202
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TONUMERIC:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    const-string v0, "toNumeric"

    invoke-virtual {p1, v1, v0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto/16 :goto_0

    .line 204
    :cond_2
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOBOOLEAN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    const-string v0, "toBoolean"

    invoke-virtual {p1, v1, v0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto/16 :goto_0

    .line 206
    :cond_3
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    const-string v0, "toInt32"

    invoke-virtual {p1, v1, v0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto/16 :goto_0

    .line 208
    :cond_4
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->TOUINT32:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 209
    const-string v0, "toUint32"

    invoke-virtual {p1, v1, v0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 210
    :cond_5
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->EQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 211
    const-string v0, "eq"

    invoke-virtual {p1, v1, v0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 212
    :cond_6
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SHALLOWEQ:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 213
    const-string v0, "shallowEq"

    invoke-virtual {p1, v1, v0, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 214
    :cond_7
    sget-object p2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p2

    if-eqz p2, :cond_8

    const/16 p2, 0x10

    .line 215
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->makeCompare(Ljava/lang/invoke/MethodHandles$Lookup;I)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 216
    :cond_8
    sget-object p2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p2

    if-eqz p2, :cond_9

    const/16 p2, 0xe

    .line 217
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->makeCompare(Ljava/lang/invoke/MethodHandles$Lookup;I)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 218
    :cond_9
    sget-object p2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_GE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p2

    if-eqz p2, :cond_a

    const/16 p2, 0x11

    .line 219
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->makeCompare(Ljava/lang/invoke/MethodHandles$Lookup;I)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 220
    :cond_a
    sget-object p2, Lorg/mozilla/javascript/optimizer/RhinoOperation;->COMPARE_LE:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p2

    if-eqz p2, :cond_b

    const/16 p2, 0xf

    .line 221
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->makeCompare(Ljava/lang/invoke/MethodHandles$Lookup;I)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    :cond_b
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_c

    .line 225
    new-instance p2, Ljdk/dynalink/linker/GuardedInvocation;

    invoke-direct {p2, p1}, Ljdk/dynalink/linker/GuardedInvocation;-><init>(Ljava/lang/invoke/MethodHandle;)V

    return-object p2

    .line 227
    :cond_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getNameInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 10

    .line 149
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    move-result-object v5

    .line 153
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->BIND:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-class v3, Lorg/mozilla/javascript/ScriptRuntime;

    const-class v4, Ljava/lang/String;

    const-class v6, Lorg/mozilla/javascript/Context;

    const-class v7, Lorg/mozilla/javascript/Scriptable;

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 154
    new-array v0, v1, [Ljava/lang/Class;

    aput-object v7, v0, v8

    aput-object v4, v0, v2

    .line 155
    invoke-static {v7, v6, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 157
    const-string v4, "bind"

    invoke-virtual {p1, v3, v4, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 158
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v5, v0, v8

    invoke-static {p1, v1, v0}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 159
    filled-new-array {v2, v8}, [I

    move-result-object v0

    invoke-static {p1, p2, v0}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto/16 :goto_0

    .line 160
    :cond_0
    sget-object v0, Ljdk/dynalink/StandardOperation;->GET:Ljdk/dynalink/StandardOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    new-array v0, v1, [Ljava/lang/Class;

    aput-object v7, v0, v8

    aput-object v4, v0, v2

    const-class v4, Ljava/lang/Object;

    invoke-static {v4, v6, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 162
    const-string v4, "name"

    invoke-virtual {p1, v3, v4, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 163
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v5, v0, v8

    invoke-static {p1, v1, v0}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 164
    filled-new-array {v2, v8}, [I

    move-result-object v0

    invoke-static {p1, p2, v0}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto/16 :goto_0

    .line 165
    :cond_1
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHIS:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    const-class v9, Lorg/mozilla/javascript/Callable;

    if-eqz v0, :cond_2

    .line 166
    new-array v0, v1, [Ljava/lang/Class;

    aput-object v6, v0, v8

    aput-object v7, v0, v2

    .line 167
    invoke-static {v9, v4, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 169
    const-string v1, "getNameFunctionAndThis"

    invoke-virtual {p1, v3, v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 170
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v5, v0, v8

    invoke-static {p1, v8, v0}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 171
    filled-new-array {v2, v8}, [I

    move-result-object v0

    invoke-static {p1, p2, v0}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 172
    :cond_2
    sget-object v0, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHISOPTIONAL:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    new-array v0, v1, [Ljava/lang/Class;

    aput-object v6, v0, v8

    aput-object v7, v0, v2

    .line 174
    invoke-static {v9, v4, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 176
    const-string v1, "getNameFunctionAndThisOptional"

    invoke-virtual {p1, v3, v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 177
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v5, v0, v8

    invoke-static {p1, v8, v0}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 178
    filled-new-array {v2, v8}, [I

    move-result-object v0

    invoke-static {p1, p2, v0}, Ljava/lang/invoke/MethodHandles;->permuteArguments(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;[I)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 179
    :cond_3
    sget-object v0, Ljdk/dynalink/StandardOperation;->SET:Ljdk/dynalink/StandardOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 180
    const-string v3, "setName"

    const/4 v4, 0x4

    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object v0, p1

    move-object v1, p2

    .line 181
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETSTRICT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 182
    const-string v3, "strictSetName"

    const/4 v4, 0x4

    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 183
    :cond_5
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETCONST:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 184
    const-string v3, "setConst"

    const/4 v4, 0x3

    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 188
    new-instance p2, Ljdk/dynalink/linker/GuardedInvocation;

    invoke-direct {p2, p1}, Ljdk/dynalink/linker/GuardedInvocation;-><init>(Ljava/lang/invoke/MethodHandle;)V

    return-object p2

    .line 190
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getPropertyInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 7

    .line 79
    sget-object v0, Ljdk/dynalink/StandardOperation;->GET:Ljdk/dynalink/StandardOperation;

    invoke-virtual {p3, v0}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .line 82
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    move-result-object v6

    .line 81
    const-class v3, Lorg/mozilla/javascript/ScriptRuntime;

    const-string v4, "getObjectProp"

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    move-object v0, p1

    move-object v1, p2

    .line 83
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETNOWARN:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    .line 91
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    move-result-object v5

    .line 85
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    const-string v3, "getObjectPropNoWarn"

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto/16 :goto_0

    .line 92
    :cond_1
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v4, 0x1

    .line 95
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    move-result-object v5

    .line 94
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    const-string v3, "getSuperProp"

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto/16 :goto_0

    .line 96
    :cond_2
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHIS:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v4, 0x1

    .line 104
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    move-result-object v5

    .line 98
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    const-string v3, "getPropFunctionAndThis"

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto/16 :goto_0

    .line 105
    :cond_3
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETWITHTHISOPTIONAL:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v4, 0x1

    .line 113
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    move-result-object v5

    .line 107
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    const-string v3, "getPropFunctionAndThisOptional"

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto/16 :goto_0

    .line 114
    :cond_4
    sget-object p1, Ljdk/dynalink/StandardOperation;->SET:Ljdk/dynalink/StandardOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    .line 117
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    move-result-object v5

    .line 116
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    const-string v3, "setObjectProp"

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto/16 :goto_0

    .line 118
    :cond_5
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 v4, 0x1

    .line 121
    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->getName()Ljava/lang/String;

    move-result-object v5

    .line 120
    const-class v2, Lorg/mozilla/javascript/ScriptRuntime;

    const-string v3, "setSuperProp"

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->bindStringParameter(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 122
    :cond_6
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    const-class p2, Lorg/mozilla/javascript/ScriptRuntime;

    if-eqz p1, :cond_7

    .line 123
    const-string p1, "getObjectElem"

    invoke-virtual {v0, p2, p1, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 124
    :cond_7
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 125
    const-string p1, "getSuperElem"

    invoke-virtual {v0, p2, p1, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 126
    :cond_8
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->GETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 127
    const-string p1, "getObjectIndex"

    invoke-virtual {v0, p2, p1, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 128
    :cond_9
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETELEMENT:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 129
    const-string p1, "setObjectElem"

    invoke-virtual {v0, p2, p1, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_a
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETELEMENTSUPER:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 131
    const-string p1, "setSuperElem"

    invoke-virtual {v0, p2, p1, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    .line 132
    :cond_b
    sget-object p1, Lorg/mozilla/javascript/optimizer/RhinoOperation;->SETINDEX:Lorg/mozilla/javascript/optimizer/RhinoOperation;

    invoke-virtual {p3, p1}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->isOperation(Ljdk/dynalink/Operation;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 133
    const-string p1, "setObjectIndex"

    invoke-virtual {v0, p2, p1, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    goto :goto_0

    :cond_c
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_d

    .line 137
    new-instance p2, Ljdk/dynalink/linker/GuardedInvocation;

    invoke-direct {p2, p1}, Ljdk/dynalink/linker/GuardedInvocation;-><init>(Ljava/lang/invoke/MethodHandle;)V

    return-object p2

    .line 141
    :cond_d
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p3}, Lorg/mozilla/javascript/optimizer/ParsedOperation;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private makeCompare(Ljava/lang/invoke/MethodHandles$Lookup;I)Ljava/lang/invoke/MethodHandle;
    .locals 6

    const/4 v0, 0x2

    .line 237
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v1, v4

    .line 238
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 239
    const-class v3, Lorg/mozilla/javascript/ScriptRuntime;

    const-string v5, "compare"

    invoke-virtual {p1, v3, v5, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    .line 240
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p1, v0, v1}, Ljava/lang/invoke/MethodHandles;->insertArguments(Ljava/lang/invoke/MethodHandle;I[Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getGuardedInvocation(Ljdk/dynalink/linker/LinkRequest;Ljdk/dynalink/linker/LinkerServices;)Ljdk/dynalink/linker/GuardedInvocation;
    .locals 4

    .line 38
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object p2

    .line 39
    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getCallSiteDescriptor()Ljdk/dynalink/CallSiteDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljdk/dynalink/CallSiteDescriptor;->getMethodType()Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 40
    new-instance v1, Lorg/mozilla/javascript/optimizer/ParsedOperation;

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getCallSiteDescriptor()Ljdk/dynalink/CallSiteDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljdk/dynalink/CallSiteDescriptor;->getOperation()Ljdk/dynalink/Operation;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/optimizer/ParsedOperation;-><init>(Ljdk/dynalink/Operation;)V

    .line 42
    invoke-direct {p0, p2, v0, v1}, Lorg/mozilla/javascript/optimizer/DefaultLinker;->getInvocation(Ljava/lang/invoke/MethodHandles$Lookup;Ljava/lang/invoke/MethodType;Lorg/mozilla/javascript/optimizer/ParsedOperation;)Ljdk/dynalink/linker/GuardedInvocation;

    move-result-object p2

    .line 43
    sget-boolean v0, Lorg/mozilla/javascript/optimizer/DefaultLinker;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 45
    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getReceiver()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    const-string v0, "null"

    goto :goto_0

    .line 47
    :cond_0
    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getReceiver()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_0
    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getArguments()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getArguments()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 50
    invoke-interface {p1}, Ljdk/dynalink/linker/LinkRequest;->getArguments()[Ljava/lang/Object;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 52
    :cond_1
    const-string p1, ""

    :goto_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): default link"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    return-object p2
.end method
