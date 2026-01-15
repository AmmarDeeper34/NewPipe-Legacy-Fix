.class Lorg/mozilla/javascript/NativeArray$1;
.super Ljava/lang/Object;
.source "NativeArray.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/javascript/NativeArray;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cursor:I

.field modCount:I

.field final synthetic this$0:Lorg/mozilla/javascript/NativeArray;

.field final synthetic val$len:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/NativeArray;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2463
    iput-object p1, p0, Lorg/mozilla/javascript/NativeArray$1;->this$0:Lorg/mozilla/javascript/NativeArray;

    iput p2, p0, Lorg/mozilla/javascript/NativeArray$1;->val$start:I

    iput p3, p0, Lorg/mozilla/javascript/NativeArray$1;->val$len:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2465
    iput p2, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    .line 2466
    invoke-static {p1}, Lorg/mozilla/javascript/NativeArray;->-$$Nest$fgetmodCount(Lorg/mozilla/javascript/NativeArray;)I

    move-result p1

    iput p1, p0, Lorg/mozilla/javascript/NativeArray$1;->modCount:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0

    .line 2513
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hasNext()Z
    .locals 2

    .line 2470
    iget v0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    iget v1, p0, Lorg/mozilla/javascript/NativeArray$1;->val$len:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 2484
    iget v0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 2475
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray$1;->this$0:Lorg/mozilla/javascript/NativeArray;

    iget v1, p0, Lorg/mozilla/javascript/NativeArray$1;->modCount:I

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->-$$Nest$mcheckModCount(Lorg/mozilla/javascript/NativeArray;I)V

    .line 2476
    iget v0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    iget v1, p0, Lorg/mozilla/javascript/NativeArray$1;->val$len:I

    if-eq v0, v1, :cond_0

    .line 2479
    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray$1;->this$0:Lorg/mozilla/javascript/NativeArray;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2477
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 2498
    iget v0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 2489
    iget-object v0, p0, Lorg/mozilla/javascript/NativeArray$1;->this$0:Lorg/mozilla/javascript/NativeArray;

    iget v1, p0, Lorg/mozilla/javascript/NativeArray$1;->modCount:I

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeArray;->-$$Nest$mcheckModCount(Lorg/mozilla/javascript/NativeArray;I)V

    .line 2490
    iget v0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    if-eqz v0, :cond_0

    .line 2493
    iget-object v1, p0, Lorg/mozilla/javascript/NativeArray$1;->this$0:Lorg/mozilla/javascript/NativeArray;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    invoke-virtual {v1, v0}, Lorg/mozilla/javascript/NativeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2491
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 2503
    iget v0, p0, Lorg/mozilla/javascript/NativeArray$1;->cursor:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 1

    .line 2508
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    .line 2518
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
