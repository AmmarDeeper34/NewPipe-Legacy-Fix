.class public Lorg/mozilla/javascript/LazyLoadSlot;
.super Lorg/mozilla/javascript/Slot;
.source "LazyLoadSlot.java"


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, p2, v0}, Lorg/mozilla/javascript/Slot;-><init>(Ljava/lang/Object;II)V

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Slot;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Slot;-><init>(Lorg/mozilla/javascript/Slot;)V

    return-void
.end method


# virtual methods
.method copySlot()Lorg/mozilla/javascript/LazyLoadSlot;
    .locals 2

    .line 18
    new-instance v0, Lorg/mozilla/javascript/LazyLoadSlot;

    invoke-direct {v0, p0}, Lorg/mozilla/javascript/LazyLoadSlot;-><init>(Lorg/mozilla/javascript/Slot;)V

    .line 19
    iget-object v1, p0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    iput-object v1, v0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lorg/mozilla/javascript/Slot;->next:Lorg/mozilla/javascript/Slot;

    .line 21
    iput-object v1, v0, Lorg/mozilla/javascript/Slot;->orderedNext:Lorg/mozilla/javascript/Slot;

    return-object v0
.end method

.method bridge synthetic copySlot()Lorg/mozilla/javascript/Slot;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lorg/mozilla/javascript/LazyLoadSlot;->copySlot()Lorg/mozilla/javascript/LazyLoadSlot;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 1

    .line 27
    iget-object p1, p0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    .line 28
    instance-of v0, p1, Lorg/mozilla/javascript/LazilyLoadedCtor;

    if-eqz v0, :cond_0

    .line 29
    check-cast p1, Lorg/mozilla/javascript/LazilyLoadedCtor;

    .line 31
    :try_start_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/LazilyLoadedCtor;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    invoke-virtual {p1}, Lorg/mozilla/javascript/LazilyLoadedCtor;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lorg/mozilla/javascript/LazilyLoadedCtor;->getValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/Slot;->value:Ljava/lang/Object;

    .line 34
    throw v0

    :cond_0
    return-object p1
.end method
