.class public Lorg/mozilla/javascript/Node$NodeIterator;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NodeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/mozilla/javascript/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private cursor:Lorg/mozilla/javascript/Node;

.field private prev:Lorg/mozilla/javascript/Node;

.field private prev2:Lorg/mozilla/javascript/Node;

.field private removed:Z

.field final synthetic this$0:Lorg/mozilla/javascript/Node;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Node;)V
    .locals 1

    .line 335
    iput-object p1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->this$0:Lorg/mozilla/javascript/Node;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    invoke-static {}, Lorg/mozilla/javascript/Node;->-$$Nest$sfgetNOT_SET()Lorg/mozilla/javascript/Node;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->removed:Z

    .line 336
    iget-object p1, p1, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    iput-object p1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lorg/mozilla/javascript/Node$NodeIterator;->next()Lorg/mozilla/javascript/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/mozilla/javascript/Node;
    .locals 2

    .line 346
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 349
    iput-boolean v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->removed:Z

    .line 350
    iget-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    iput-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev2:Lorg/mozilla/javascript/Node;

    .line 351
    iput-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    .line 352
    iget-object v1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iput-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    return-object v0

    .line 347
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 358
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    invoke-static {}, Lorg/mozilla/javascript/Node;->-$$Nest$sfgetNOT_SET()Lorg/mozilla/javascript/Node;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 361
    iget-boolean v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->removed:Z

    if-nez v0, :cond_2

    .line 364
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev:Lorg/mozilla/javascript/Node;

    iget-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->this$0:Lorg/mozilla/javascript/Node;

    iget-object v2, v1, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    if-ne v0, v2, :cond_0

    .line 365
    iget-object v0, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    iput-object v0, v1, Lorg/mozilla/javascript/Node;->first:Lorg/mozilla/javascript/Node;

    return-void

    .line 366
    :cond_0
    iget-object v2, v1, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    if-ne v0, v2, :cond_1

    .line 367
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev2:Lorg/mozilla/javascript/Node;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    .line 368
    iput-object v0, v1, Lorg/mozilla/javascript/Node;->last:Lorg/mozilla/javascript/Node;

    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/Node$NodeIterator;->prev2:Lorg/mozilla/javascript/Node;

    iget-object v1, p0, Lorg/mozilla/javascript/Node$NodeIterator;->cursor:Lorg/mozilla/javascript/Node;

    iput-object v1, v0, Lorg/mozilla/javascript/Node;->next:Lorg/mozilla/javascript/Node;

    return-void

    .line 362
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() already called for current element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next() has not been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
