.class public Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;
.super Ljava/lang/Object;
.source "SuggestionItem.java"


# instance fields
.field final fromHistory:Z

.field public final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->fromHistory:Z

    .line 11
    iput-object p2, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 16
    instance-of v0, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    check-cast p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;

    iget-object p1, p1, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->fromHistory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\u2192"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/schabi/newpipe/fragments/list/search/SuggestionItem;->query:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
