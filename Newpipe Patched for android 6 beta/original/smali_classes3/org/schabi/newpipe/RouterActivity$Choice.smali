.class Lorg/schabi/newpipe/RouterActivity$Choice;
.super Ljava/lang/Object;
.source "RouterActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/schabi/newpipe/RouterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Choice"
.end annotation


# instance fields
.field final linkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

.field final playerChoice:Ljava/lang/String;

.field final serviceId:I

.field final url:Ljava/lang/String;


# direct methods
.method constructor <init>(ILorg/schabi/newpipe/extractor/StreamingService$LinkType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 910
    iput p1, p0, Lorg/schabi/newpipe/RouterActivity$Choice;->serviceId:I

    .line 911
    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$Choice;->linkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    .line 912
    iput-object p3, p0, Lorg/schabi/newpipe/RouterActivity$Choice;->url:Ljava/lang/String;

    .line 913
    iput-object p4, p0, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/schabi/newpipe/RouterActivity$Choice;->serviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$Choice;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$Choice;->linkType:Lorg/schabi/newpipe/extractor/StreamingService$LinkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ::: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$Choice;->playerChoice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
