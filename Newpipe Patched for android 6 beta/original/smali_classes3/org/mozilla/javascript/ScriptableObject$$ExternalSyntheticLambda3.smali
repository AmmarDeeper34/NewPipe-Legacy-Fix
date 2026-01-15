.class public final synthetic Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/mozilla/javascript/SlotMap$SlotComputer;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/ScriptableObject;

.field public final synthetic f$1:Lorg/mozilla/javascript/Context;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/mozilla/javascript/LambdaAccessorSlot;

.field public final synthetic f$4:Lorg/mozilla/javascript/ScriptableObject;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/LambdaAccessorSlot;Lorg/mozilla/javascript/ScriptableObject;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$0:Lorg/mozilla/javascript/ScriptableObject;

    iput-object p2, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$1:Lorg/mozilla/javascript/Context;

    iput-object p3, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$3:Lorg/mozilla/javascript/LambdaAccessorSlot;

    iput-object p5, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$4:Lorg/mozilla/javascript/ScriptableObject;

    return-void
.end method


# virtual methods
.method public final compute(Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/Slot;
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$0:Lorg/mozilla/javascript/ScriptableObject;

    iget-object v1, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$1:Lorg/mozilla/javascript/Context;

    iget-object v2, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$3:Lorg/mozilla/javascript/LambdaAccessorSlot;

    iget-object v4, p0, Lorg/mozilla/javascript/ScriptableObject$$ExternalSyntheticLambda3;->f$4:Lorg/mozilla/javascript/ScriptableObject;

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lorg/mozilla/javascript/ScriptableObject;->$r8$lambda$I5MxH0KbROnp7WjngeA9RwsymmE(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Context;Ljava/lang/String;Lorg/mozilla/javascript/LambdaAccessorSlot;Lorg/mozilla/javascript/ScriptableObject;Ljava/lang/Object;ILorg/mozilla/javascript/Slot;)Lorg/mozilla/javascript/LambdaAccessorSlot;

    move-result-object p1

    return-object p1
.end method
