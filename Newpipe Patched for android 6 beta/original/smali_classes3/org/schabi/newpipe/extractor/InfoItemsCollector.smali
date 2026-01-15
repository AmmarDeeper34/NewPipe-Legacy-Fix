.class public abstract Lorg/schabi/newpipe/extractor/InfoItemsCollector;
.super Ljava/lang/Object;
.source "InfoItemsCollector.java"

# interfaces
.implements Lorg/schabi/newpipe/extractor/Collector;


# instance fields
.field private final comparator:Ljava/util/Comparator;

.field private final errors:Ljava/util/List;

.field private final itemList:Ljava/util/List;

.field private final serviceId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;-><init>(ILjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    .line 54
    iput p1, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->serviceId:I

    .line 55
    iput-object p2, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method protected addError(Ljava/lang/Exception;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addItem(Lorg/schabi/newpipe/extractor/InfoItem;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public commit(Lorg/schabi/newpipe/extractor/InfoItemExtractor;)V
    .locals 0

    .line 104
    :try_start_0
    invoke-interface {p0, p1}, Lorg/schabi/newpipe/extractor/Collector;->extract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/schabi/newpipe/extractor/InfoItem;

    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addItem(Lorg/schabi/newpipe/extractor/InfoItem;)V
    :try_end_0
    .catch Lorg/schabi/newpipe/extractor/exceptions/FoundAdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/schabi/newpipe/extractor/exceptions/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p0, p1}, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->addError(Ljava/lang/Exception;)V

    :catch_1
    return-void
.end method

.method public getErrors()Ljava/util/List;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->errors:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2

    .line 60
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    invoke-static {v1, v0}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->itemList:Ljava/util/List;

    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 98
    iget v0, p0, Lorg/schabi/newpipe/extractor/InfoItemsCollector;->serviceId:I

    return v0
.end method
