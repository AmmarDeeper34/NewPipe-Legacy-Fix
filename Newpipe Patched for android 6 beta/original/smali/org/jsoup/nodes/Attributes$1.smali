.class Lorg/jsoup/nodes/Attributes$1;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field expectedSize:I

.field i:I

.field final synthetic this$0:Lorg/jsoup/nodes/Attributes;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Lorg/jsoup/nodes/Attributes;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iget p1, p1, Lorg/jsoup/nodes/Attributes;->size:I

    iput p1, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    const/4 p1, 0x0

    .line 431
    iput p1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    return-void
.end method

.method private checkModified()V
    .locals 2

    .line 460
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    iget v0, v0, Lorg/jsoup/nodes/Attributes;->size:I

    iget v1, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Use Iterator#remove() instead to remove attributes while iterating."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 435
    invoke-direct {p0}, Lorg/jsoup/nodes/Attributes$1;->checkModified()V

    .line 436
    :goto_0
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    iget v2, v1, Lorg/jsoup/nodes/Attributes;->size:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_0

    .line 437
    iget-object v1, v1, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 439
    invoke-static {v0}, Lorg/jsoup/nodes/Attributes;->isInternalKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    goto :goto_0

    .line 445
    :cond_0
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    iget v1, v1, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v1, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 429
    invoke-virtual {p0}, Lorg/jsoup/nodes/Attributes$1;->next()Lorg/jsoup/nodes/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/jsoup/nodes/Attribute;
    .locals 5

    .line 450
    invoke-direct {p0}, Lorg/jsoup/nodes/Attributes$1;->checkModified()V

    .line 451
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    iget-object v1, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    iget v2, v1, Lorg/jsoup/nodes/Attributes;->size:I

    if-ge v0, v2, :cond_0

    .line 452
    iget-object v1, v1, Lorg/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 454
    new-instance v1, Lorg/jsoup/nodes/Attribute;

    iget-object v2, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    iget-object v3, v2, Lorg/jsoup/nodes/Attributes;->vals:[Ljava/lang/Object;

    iget v4, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v0, v3, v2}, Lorg/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 455
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    return-object v1

    .line 451
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 465
    iget-object v0, p0, Lorg/jsoup/nodes/Attributes$1;->this$0:Lorg/jsoup/nodes/Attributes;

    iget v1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/jsoup/nodes/Attributes$1;->i:I

    invoke-static {v0, v1}, Lorg/jsoup/nodes/Attributes;->access$000(Lorg/jsoup/nodes/Attributes;I)V

    .line 466
    iget v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jsoup/nodes/Attributes$1;->expectedSize:I

    return-void
.end method
