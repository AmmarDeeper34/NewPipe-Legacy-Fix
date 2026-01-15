.class public abstract Lorg/jsoup/helper/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/helper/DataUtil$CharsetDoc;
    }
.end annotation


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static final charsetPattern:Ljava/util/regex/Pattern;

.field static final defaultCharsetName:Ljava/lang/String;

.field private static final metaCharset:Lorg/jsoup/select/Evaluator;

.field private static final mimeBoundaryChars:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-string v0, "(?i)\\bcharset=\\s*(?:[\"\'])?([^\\s,;\"\']*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    .line 49
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    .line 51
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->mimeBoundaryChars:[C

    .line 238
    const-string v0, "meta[http-equiv=content-type], meta[charset]"

    invoke-static {v0}, Lorg/jsoup/select/Selector;->evaluatorOf(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    move-result-object v0

    sput-object v0, Lorg/jsoup/helper/DataUtil;->metaCharset:Lorg/jsoup/select/Evaluator;

    return-void
.end method

.method static detectCharset(Lorg/jsoup/internal/ControllableInputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/DataUtil$CharsetDoc;
    .locals 6

    .line 244
    invoke-static {p0}, Lorg/jsoup/helper/DataUtil;->detectCharsetFromBom(Lorg/jsoup/internal/ControllableInputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_9

    .line 249
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->max()I

    move-result v1

    const/16 v2, 0x1400

    .line 250
    invoke-virtual {p0, v2}, Lorg/jsoup/internal/ControllableInputStream;->max(I)V

    .line 251
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->resetFullyRead()V

    .line 252
    invoke-virtual {p0, v2}, Lorg/jsoup/internal/ControllableInputStream;->mark(I)V

    const/4 v2, 0x0

    .line 253
    invoke-virtual {p0, v2}, Lorg/jsoup/internal/ControllableInputStream;->allowClose(Z)V

    const/4 v3, 0x1

    .line 254
    :try_start_0
    new-instance v4, Lorg/jsoup/internal/SimpleStreamReader;

    sget-object v5, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v5}, Lorg/jsoup/internal/SimpleStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :try_start_1
    invoke-virtual {p3, v4, p2}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p2

    .line 256
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->reset()V

    .line 257
    invoke-virtual {p0, v1}, Lorg/jsoup/internal/ControllableInputStream;->max(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    :try_start_2
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/UncheckedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    invoke-virtual {p0, v3}, Lorg/jsoup/internal/ControllableInputStream;->allowClose(Z)V

    .line 265
    sget-object p3, Lorg/jsoup/helper/DataUtil;->metaCharset:Lorg/jsoup/select/Evaluator;

    invoke-virtual {p2, p3}, Lorg/jsoup/nodes/Element;->select(Lorg/jsoup/select/Evaluator;)Lorg/jsoup/select/Elements;

    move-result-object p3

    .line 267
    invoke-virtual {p3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    move-object v1, v0

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 268
    const-string v4, "http-equiv"

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 269
    const-string v1, "content"

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/helper/DataUtil;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 270
    const-string v4, "charset"

    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    invoke-virtual {v3, v4}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_1

    :cond_4
    if-nez v1, :cond_7

    .line 277
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->childNodeSize()I

    move-result p3

    if-lez p3, :cond_7

    .line 278
    invoke-virtual {p2, v2}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object p3

    .line 280
    instance-of v2, p3, Lorg/jsoup/nodes/XmlDeclaration;

    if-eqz v2, :cond_5

    .line 281
    check-cast p3, Lorg/jsoup/nodes/XmlDeclaration;

    goto :goto_0

    .line 282
    :cond_5
    instance-of v2, p3, Lorg/jsoup/nodes/Comment;

    if-eqz v2, :cond_6

    .line 283
    check-cast p3, Lorg/jsoup/nodes/Comment;

    .line 284
    invoke-virtual {p3}, Lorg/jsoup/nodes/Comment;->isXmlDeclaration()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 285
    invoke-virtual {p3}, Lorg/jsoup/nodes/Comment;->asXmlDeclaration()Lorg/jsoup/nodes/XmlDeclaration;

    move-result-object p3

    goto :goto_0

    :cond_6
    move-object p3, v0

    :goto_0
    if-eqz p3, :cond_7

    .line 287
    invoke-virtual {p3}, Lorg/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 288
    const-string v1, "encoding"

    invoke-virtual {p3, v1}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    :cond_7
    invoke-static {v1}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 292
    sget-object v1, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 293
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[\"\']"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 296
    :cond_8
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->baseReadFully()Z

    move-result p3

    if-eqz p3, :cond_a

    .line 297
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->close()V

    move-object v0, p2

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 254
    :try_start_3
    invoke-virtual {v4}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/io/UncheckedIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 259
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 261
    :goto_3
    invoke-virtual {p0, v3}, Lorg/jsoup/internal/ControllableInputStream;->allowClose(Z)V

    .line 262
    throw p1

    .line 302
    :cond_9
    const-string p2, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    invoke-static {p1, p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_4
    if-nez p1, :cond_b

    .line 307
    sget-object p1, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    .line 308
    :cond_b
    sget-object p2, Lorg/jsoup/helper/DataUtil;->defaultCharsetName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    sget-object p1, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_5

    :cond_c
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    .line 309
    :goto_5
    new-instance p2, Lorg/jsoup/helper/DataUtil$CharsetDoc;

    invoke-direct {p2, p1, v0, p0}, Lorg/jsoup/helper/DataUtil$CharsetDoc;-><init>(Ljava/nio/charset/Charset;Lorg/jsoup/nodes/Document;Ljava/io/InputStream;)V

    return-object p2
.end method

.method private static detectCharsetFromBom(Lorg/jsoup/internal/ControllableInputStream;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x4

    .line 396
    new-array v1, v0, [B

    .line 397
    invoke-virtual {p0, v0}, Lorg/jsoup/internal/ControllableInputStream;->mark(I)V

    const/4 v2, 0x0

    .line 399
    invoke-virtual {p0, v1, v2, v0}, Lorg/jsoup/internal/ControllableInputStream;->read([BII)I

    .line 400
    invoke-virtual {p0}, Lorg/jsoup/internal/ControllableInputStream;->reset()V

    .line 403
    aget-byte v0, v1, v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, -0x2

    const/4 v7, 0x1

    if-nez v0, :cond_0

    aget-byte v8, v1, v7

    if-nez v8, :cond_0

    aget-byte v8, v1, v4

    if-ne v8, v6, :cond_0

    aget-byte v8, v1, v3

    if-eq v8, v5, :cond_1

    :cond_0
    if-ne v0, v5, :cond_2

    aget-byte v8, v1, v7

    if-ne v8, v6, :cond_2

    aget-byte v8, v1, v4

    if-nez v8, :cond_2

    aget-byte v8, v1, v3

    if-nez v8, :cond_2

    .line 405
    :cond_1
    const-string p0, "UTF-32"

    return-object p0

    :cond_2
    if-ne v0, v6, :cond_3

    .line 406
    aget-byte v8, v1, v7

    if-eq v8, v5, :cond_4

    :cond_3
    if-ne v0, v5, :cond_5

    aget-byte v5, v1, v7

    if-ne v5, v6, :cond_5

    .line 408
    :cond_4
    const-string p0, "UTF-16"

    return-object p0

    :cond_5
    const/16 v5, -0x11

    if-ne v0, v5, :cond_6

    .line 409
    aget-byte v0, v1, v7

    const/16 v5, -0x45

    if-ne v0, v5, :cond_6

    aget-byte v0, v1, v4

    const/16 v4, -0x41

    if-ne v0, v4, :cond_6

    .line 410
    invoke-virtual {p0, v1, v2, v3}, Lorg/jsoup/internal/ControllableInputStream;->read([BII)I

    .line 411
    const-string p0, "UTF-8"

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method static getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 361
    :cond_0
    sget-object v1, Lorg/jsoup/helper/DataUtil;->charsetPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 362
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 363
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 364
    const-string v0, "charset="

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 365
    invoke-static {p0}, Lorg/jsoup/helper/DataUtil;->validateCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static load(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-static {p0, v0}, Lorg/jsoup/internal/ControllableInputStream;->wrap(Ljava/io/InputStream;I)Lorg/jsoup/internal/ControllableInputStream;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Lorg/jsoup/internal/ControllableInputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method static parseInputStream(Lorg/jsoup/helper/DataUtil$CharsetDoc;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 314
    iget-object v0, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->doc:Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_0

    return-object v0

    .line 317
    :cond_0
    iget-object v0, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->input:Ljava/io/InputStream;

    .line 318
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 320
    iget-object p0, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->charset:Ljava/nio/charset/Charset;

    .line 321
    new-instance v1, Lorg/jsoup/internal/SimpleStreamReader;

    invoke-direct {v1, v0, p0}, Lorg/jsoup/internal/SimpleStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 323
    :try_start_0
    invoke-virtual {p2, v1, p1}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :try_start_1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p2

    invoke-virtual {p2, p0}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    .line 329
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->canEncode()Z

    move-result p0

    if-nez p0, :cond_1

    .line 331
    sget-object p0, Lorg/jsoup/helper/DataUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Document;->charset(Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 333
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    return-object p1

    :catch_0
    move-exception p0

    .line 326
    :try_start_2
    invoke-virtual {p0}, Ljava/io/UncheckedIOException;->getCause()Ljava/io/IOException;

    move-result-object p0

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 321
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method static parseInputStream(Lorg/jsoup/internal/ControllableInputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .locals 0

    if-nez p0, :cond_0

    .line 224
    new-instance p0, Lorg/jsoup/nodes/Document;

    invoke-direct {p0, p2}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 229
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/DataUtil;->detectCharset(Lorg/jsoup/internal/ControllableInputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/helper/DataUtil$CharsetDoc;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    :try_start_1
    invoke-static {p0, p2, p3}, Lorg/jsoup/helper/DataUtil;->parseInputStream(Lorg/jsoup/helper/DataUtil$CharsetDoc;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    .line 233
    iget-object p0, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->input:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    iget-object p0, p0, Lorg/jsoup/helper/DataUtil$CharsetDoc;->input:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 234
    :cond_2
    throw p1
.end method

.method private static validateCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 371
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v1, "[\"\']"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 374
    :try_start_0
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 375
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 376
    invoke-static {p0}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    return-object p0

    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method
