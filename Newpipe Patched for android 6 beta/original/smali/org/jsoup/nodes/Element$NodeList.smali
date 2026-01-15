.class final Lorg/jsoup/nodes/Element$NodeList;
.super Ljava/util/ArrayList;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NodeList"
.end annotation


# instance fields
.field validChildren:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 2083
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 p1, 0x1

    .line 2080
    iput-boolean p1, p0, Lorg/jsoup/nodes/Element$NodeList;->validChildren:Z

    return-void
.end method


# virtual methods
.method incrementMod()V
    .locals 1

    .line 2092
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/ArrayList;->modCount:I

    return-void
.end method

.method modCount()I
    .locals 1

    .line 2088
    iget v0, p0, Ljava/util/ArrayList;->modCount:I

    return v0
.end method
