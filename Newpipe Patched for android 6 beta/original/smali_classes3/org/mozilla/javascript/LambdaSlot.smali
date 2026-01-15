.class public Lorg/mozilla/javascript/LambdaSlot;
.super Lorg/mozilla/javascript/Slot;
.source "LambdaSlot.java"


# static fields
.field private static final serialVersionUID:J = -0x2a47fcdcf10b6f7cL


# instance fields
.field transient getter:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field transient setter:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/Slot;-><init>(Ljava/lang/Object;II)V

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Slot;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Slot;-><init>(Lorg/mozilla/javascript/Slot;)V

    return-void
.end method


# virtual methods
.method copySlot()Lorg/mozilla/javascript/LambdaSlot;
    .locals 2

    .line 27
    new-instance v0, Lorg/mozilla/javascript/LambdaSlot;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/LambdaSlot;-><init>(Lorg/mozilla/javascript/Slot;)V

    .line 28
    iget-object v1, p0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    iput-object v1, v0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lorg/mozilla/javascript/LambdaSlot;->getter:Ljava/util/function/Supplier;

    iput-object v1, v0, Lorg/mozilla/javascript/LambdaSlot;->getter:Ljava/util/function/Supplier;

    .line 30
    iget-object v1, p0, Lorg/mozilla/javascript/LambdaSlot;->setter:Ljava/util/function/Consumer;

    iput-object v1, v0, Lorg/mozilla/javascript/LambdaSlot;->setter:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    .line 31
    iput-object v1, v0, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 32
    iput-object v1, v0, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    return-object v0
.end method

.method bridge synthetic copySlot()Lorg/mozilla/javascript/Slot;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lorg/mozilla/javascript/LambdaSlot;->copySlot()Lorg/mozilla/javascript/LambdaSlot;

    move-result-object v0

    return-object v0
.end method

.method getPropertyDescriptor(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/ScriptableObject;
    .locals 2

    .line 51
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/Context;->newObject(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p1

    check-cast p1, Lorg/mozilla/javascript/ScriptableObject;

    .line 52
    iget-object p2, p0, Lorg/mozilla/javascript/LambdaSlot;->getter:Ljava/util/function/Supplier;

    const/4 v0, 0x0

    const-string v1, "value"

    if-eqz p2, :cond_0

    .line 53
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 55
    :cond_0
    iget-object p2, p0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    invoke-virtual {p1, v1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 57
    :goto_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Slot;->getAttributes()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/mozilla/javascript/ScriptableObject;->setCommonDescriptorProperties(IZ)V

    return-object p1
.end method

.method public getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/mozilla/javascript/LambdaSlot;->getter:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/Slot;->getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
    const/4 v0, 0x0

    return v0
.end method

.method public setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/mozilla/javascript/LambdaSlot;->setter:Ljava/util/function/Consumer;

    if-eqz v0, :cond_1

    if-ne p2, p3, :cond_0

    .line 65
    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 70
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/mozilla/javascript/Slot;->setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Z)Z

    move-result p1

    return p1
.end method
