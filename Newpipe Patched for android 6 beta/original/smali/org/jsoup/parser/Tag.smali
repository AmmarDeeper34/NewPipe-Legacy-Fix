.class public Lorg/jsoup/parser/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static Block:I = 0x4

.field public static Data:I = 0x100

.field public static FormSubmittable:I = 0x200

.field public static InlineContainer:I = 0x8

.field public static Known:I = 0x1

.field public static PreserveWhitespace:I = 0x40

.field public static RcData:I = 0x80

.field public static SeenSelfClose:I = 0x20

.field public static SelfClose:I = 0x10

.field public static Void:I = 0x2


# instance fields
.field namespace:Ljava/lang/String;

.field normalName:Ljava/lang/String;

.field options:I

.field tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 52
    invoke-static {p1}, Lorg/jsoup/parser/ParseSettings;->normalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lorg/jsoup/parser/Tag;->options:I

    .line 68
    iput-object p1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 2

    .line 203
    invoke-static {}, Lorg/jsoup/parser/TagSet;->Html()Lorg/jsoup/parser/TagSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/jsoup/parser/ParseSettings;->preserveTagCase()Z

    move-result p2

    invoke-virtual {v0, p0, v1, p1, p2}, Lorg/jsoup/parser/TagSet;->valueOf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/jsoup/parser/Tag;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/jsoup/parser/Tag;->clone()Lorg/jsoup/parser/Tag;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/jsoup/parser/Tag;
    .locals 2

    .line 357
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Tag;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 359
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 333
    :cond_0
    instance-of v1, p1, Lorg/jsoup/parser/Tag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 334
    :cond_1
    check-cast p1, Lorg/jsoup/parser/Tag;

    .line 335
    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 336
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    iget-object v3, p1, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 337
    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/jsoup/parser/Tag;->options:I

    iget p1, p1, Lorg/jsoup/parser/Tag;->options:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 346
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v2}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public is(I)Z
    .locals 1

    .line 174
    iget v0, p0, Lorg/jsoup/parser/Tag;->options:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isBlock()Z
    .locals 2

    .line 241
    iget v0, p0, Lorg/jsoup/parser/Tag;->options:I

    sget v1, Lorg/jsoup/parser/Tag;->Block:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 269
    iget v0, p0, Lorg/jsoup/parser/Tag;->options:I

    sget v1, Lorg/jsoup/parser/Tag;->Void:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isInline()Z
    .locals 2

    .line 260
    iget v0, p0, Lorg/jsoup/parser/Tag;->options:I

    sget v1, Lorg/jsoup/parser/Tag;->Block:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isKnownTag()Z
    .locals 2

    .line 287
    iget v0, p0, Lorg/jsoup/parser/Tag;->options:I

    sget v1, Lorg/jsoup/parser/Tag;->Known:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelfClosing()Z
    .locals 2

    .line 278
    iget v0, p0, Lorg/jsoup/parser/Tag;->options:I

    sget v1, Lorg/jsoup/parser/Tag;->SelfClose:I

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    sget v1, Lorg/jsoup/parser/Tag;->Void:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public normalName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    return-object v0
.end method

.method public preserveWhitespace()Z
    .locals 2

    .line 306
    iget v0, p0, Lorg/jsoup/parser/Tag;->options:I

    sget v1, Lorg/jsoup/parser/Tag;->PreserveWhitespace:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public set(I)Lorg/jsoup/parser/Tag;
    .locals 1

    .line 161
    iget v0, p0, Lorg/jsoup/parser/Tag;->options:I

    or-int/2addr p1, v0

    .line 162
    sget v0, Lorg/jsoup/parser/Tag;->Known:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/jsoup/parser/Tag;->options:I

    return-object p0
.end method

.method setSeenSelfClose()V
    .locals 2

    .line 318
    iget v0, p0, Lorg/jsoup/parser/Tag;->options:I

    sget v1, Lorg/jsoup/parser/Tag;->SeenSelfClose:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/jsoup/parser/Tag;->options:I

    return-void
.end method

.method textState()Lorg/jsoup/parser/TokeniserState;
    .locals 1

    .line 325
    sget v0, Lorg/jsoup/parser/Tag;->RcData:I

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->is(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Rcdata:Lorg/jsoup/parser/TokeniserState;

    return-object v0

    .line 326
    :cond_0
    sget v0, Lorg/jsoup/parser/Tag;->Data:I

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/Tag;->is(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/jsoup/parser/TokeniserState;->Rawtext:Lorg/jsoup/parser/TokeniserState;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method
