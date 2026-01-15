.class public Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;
.super Ljava/lang/Object;
.source "SrtFromTtmlWriter.java"


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private frameIndex:I

.field private final ignoreEmptyFrames:Z

.field private final out:Lorg/schabi/newpipe/streams/io/SharpStream;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/streams/io/SharpStream;Z)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->charset:Ljava/nio/charset/Charset;

    const/4 v0, 0x1

    .line 35
    iput v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    .line 38
    iput-object p1, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->out:Lorg/schabi/newpipe/streams/io/SharpStream;

    .line 39
    iput-boolean p2, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->ignoreEmptyFrames:Z

    return-void
.end method

.method private decodeXmlEntities(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-static {p1, v0}, Lorg/jsoup/parser/Parser;->unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private extractText(Lorg/jsoup/nodes/Node;Ljava/lang/StringBuilder;)V
    .locals 2

    .line 270
    instance-of v0, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/jsoup/nodes/TextNode;

    .line 271
    invoke-virtual {v0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    .line 272
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->sanitizeFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 274
    :cond_0
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 276
    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "br"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const-string v0, "\r\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->traverseChildNodesForNestedTags(Lorg/jsoup/nodes/Node;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method private static getTimestamp(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 44
    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2e

    const/16 v0, 0x2c

    .line 45
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private normalizeForSrt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xa0

    const/16 v1, 0x20

    .line 177
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x202f

    .line 178
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x205f

    .line 179
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3000

    .line 180
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[\\u2000-\\u200A]"

    const-string v2, " "

    .line 183
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 196
    const-string v0, "[\\u200B-\\u200F]"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 206
    const-string v0, "[\\u0000-\\u0008\\u000B\\u000C\\u000E-\\u001F]"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x9

    .line 214
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->normalizeLineBreakForSrt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private normalizeLineBreakForSrt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 135
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\r"

    .line 136
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private sanitizeFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 223
    const-string p1, ""

    return-object p1

    .line 226
    :cond_0
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->decodeXmlEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->normalizeForSrt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private traverseChildNodesForNestedTags(Lorg/jsoup/nodes/Node;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 237
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    .line 238
    invoke-direct {p0, v0, p2}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->extractText(Lorg/jsoup/nodes/Node;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeFrame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    .line 50
    iget v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 51
    iget v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->frameIndex:I

    .line 52
    const-string v0, "\r\n"

    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 54
    const-string p1, " --> "

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0, p2}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    .line 59
    invoke-direct {p0, v0}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method private writeString(Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->out:Lorg/schabi/newpipe/streams/io/SharpStream;

    iget-object v1, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->write([B)V

    return-void
.end method


# virtual methods
.method public build(Lorg/schabi/newpipe/streams/io/SharpStream;)V
    .locals 4

    .line 297
    invoke-virtual {p1}, Lorg/schabi/newpipe/streams/io/SharpStream;->available()J

    move-result-wide v0

    long-to-int v1, v0

    new-array v0, v1, [B

    .line 298
    invoke-virtual {p1, v0}, Lorg/schabi/newpipe/streams/io/SharpStream;->read([B)I

    .line 299
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, ""

    .line 300
    invoke-static {}, Lorg/jsoup/parser/Parser;->xmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v1

    .line 299
    const-string v2, "UTF-8"

    invoke-static {p1, v2, v0, v1}, Lorg/jsoup/Jsoup;->parse(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 303
    const-string v1, "body > div > p"

    invoke-virtual {p1, v1}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 310
    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    const/4 v2, 0x0

    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 314
    invoke-direct {p0, v1, v0}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->extractText(Lorg/jsoup/nodes/Node;Ljava/lang/StringBuilder;)V

    .line 316
    iget-boolean v2, p0, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->ignoreEmptyFrames:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 320
    :cond_1
    const-string v2, "begin"

    invoke-static {v1, v2}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->getTimestamp(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    const-string v3, "end"

    invoke-static {v1, v3}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->getTimestamp(Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 323
    invoke-direct {p0, v2, v1, v0}, Lorg/schabi/newpipe/streams/SrtFromTtmlWriter;->writeFrame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
