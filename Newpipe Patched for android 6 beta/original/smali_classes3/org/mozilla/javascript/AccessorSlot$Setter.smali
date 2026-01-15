.class interface abstract Lorg/mozilla/javascript/AccessorSlot$Setter;
.super Ljava/lang/Object;
.source "AccessorSlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/AccessorSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Setter"
.end annotation


# virtual methods
.method public abstract asSetterFunction(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Function;
.end method

.method public abstract isSameSetterFunction(Ljava/lang/Object;)Z
.end method

.method public abstract setValue(Ljava/lang/Object;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;)Z
.end method
