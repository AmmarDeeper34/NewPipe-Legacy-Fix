.class Lorg/schabi/newpipe/fragments/detail/StackItem;
.super Ljava/lang/Object;
.source "StackItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

.field private final serviceId:I

.field private title:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->serviceId:I

    .line 18
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->url:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->title:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    return-void
.end method


# virtual methods
.method public getPlayQueue()Lorg/schabi/newpipe/player/playqueue/PlayQueue;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->serviceId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setPlayQueue(Lorg/schabi/newpipe/player/playqueue/PlayQueue;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->playQueue:Lorg/schabi/newpipe/player/playqueue/PlayQueue;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/detail/StackItem;->url:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getServiceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/schabi/newpipe/fragments/detail/StackItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
