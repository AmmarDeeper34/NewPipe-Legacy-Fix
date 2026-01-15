.class public Lorg/mozilla/javascript/Slot;
.super Ljava/lang/Object;
.source "Slot.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x548617c41c7a8763L


# instance fields
.field private attributes:S

.field indexOrHash:I

.field name:Ljava/lang/Object;

.field transient next:Lorg/mozilla/javascript/Slot;

.field transient orderedNext:Lorg/mozilla/javascript/Slot;

.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :goto_0
    iput p2, p0, Lorg/mozilla/javascript/Slot;->indexOrHash:I

    int-to-short p1, p3

    .line 25
    iput-short p1, p0, Lorg/mozilla/javascript/Slot;->attributes:S

    return-void
.end method

.method protected constructor <init>(Lorg/mozilla/javascript/Slot;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iget-object v0, p1, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    .line 52
    iget v0, p1, Lorg/mozilla/javascript/Slot;->indexOrHash:I

    iput v0, p0, Lorg/mozilla/javascript/Slot;->indexOrHash:I

    .line 53
    iget-short v0, p1, Lorg/mozilla/javascript/Slot;->attributes:S

    iput-short v0, p0, Lorg/mozilla/javascript/Slot;->attributes:S

    .line 54
    iget-object v0, p1, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    iput-object v0, p0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    .line 55
    iget-object v0, p1, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    iput-object v0, p0, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 56
    iget-object p1, p1, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    iput-object p1, p0, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 60
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 61
    iget-object p1, p0, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/Slot;->indexOrHash:I

    :cond_0
    return-void
.end method


# virtual methods
.method copySlot()Lorg/mozilla/javascript/Slot;
    .locals 2

    .line 29
    new-instance v0, Lorg/mozilla/javascript/Slot;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/Slot;-><init>(Lorg/mozilla/javascript/Slot;)V

    const/4 v1, 0x0

    .line 30
    iput-object v1, v0, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 31
    iput-object v1, v0, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    return-object v0
.end method

.method getAttributes()I
    .locals 1

    .line 89
    iget-short v0, p0, Lorg/mozilla/javascript/Slot;->attributes:S

    return v0
.end method

.method getGetterFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method getPropertyDescriptor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 1

    .line 98
    iget-object p1, p0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    iget-short v0, p0, Lorg/mozilla/javascript/Slot;->attributes:S

    invoke-static {p2, p1, v0}, Lorg/mozilla/javascript/ScriptableObject;->buildDataDescriptor(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;I)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p1

    return-object p1
.end method

.method getSetterFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;
    .locals 0

    .line 0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 0

    .line 85
    iget-object p1, p0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    return-object p1
.end method

.method isSameGetterFunction(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method isSameSetterFunction(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    const/4 p1, 0x0

    return p1
.end method

.method isSetterSlot()Z
    .locals 1

    .line 0
    const/4 v0, 0x0

    return v0
.end method

.method isValueSlot()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method setAttributes(I)V
    .locals 0

    .line 93
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptableObject;->checkValidAttributes(I)V

    int-to-short p1, p1

    .line 94
    iput-short p1, p0, Lorg/mozilla/javascript/Slot;->attributes:S

    return-void
.end method

.method public final setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1

    .line 67
    invoke-static {}, Lorg/mozilla/javascript/Context;->isCurrentContextStrict()Z

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/Slot;->setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Z

    move-result p1

    return p1
.end method

.method public setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Z
    .locals 3

    .line 71
    iget-short v0, p0, Lorg/mozilla/javascript/Slot;->attributes:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez p4, :cond_0

    return v1

    .line 73
    :cond_0
    iget-object p1, p0, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "msg.modify.readonly"

    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1

    :cond_1
    if-ne p2, p3, :cond_2

    .line 78
    iput-object p1, p0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    return v1

    :cond_2
    return v2
.end method

.method protected throwNoSetterException(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 3

    .line 102
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lorg/mozilla/javascript/Context;->isStrictMode()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xb

    .line 107
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 110
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 111
    invoke-interface {p1}, Lorg/mozilla/javascript/Scriptable;->getClassName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/mozilla/javascript/Slot;->name:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 110
    :cond_2
    const-string p1, ""

    .line 114
    :goto_1
    invoke-static {p2}, Lorg/mozilla/javascript/Context;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 113
    const-string p1, "msg.set.prop.no.setter"

    invoke-static {p1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->typeErrorById(Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/EcmaError;

    move-result-object p1

    throw p1
.end method
