.class public Lorg/jsoup/parser/Parser;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private errors:Lorg/jsoup/parser/ParseErrorList;

.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private maxDepth:I

.field private settings:Lorg/jsoup/parser/ParseSettings;

.field private tagSet:Lorg/jsoup/parser/TagSet;

.field private trackPosition:Z

.field private final treeBuilder:Lorg/jsoup/parser/TreeBuilder;


# direct methods
.method private constructor <init>(Lorg/jsoup/parser/Parser;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lorg/jsoup/parser/Parser;->trackPosition:Z

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 61
    iget-object v0, p1, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {v0}, Lorg/jsoup/parser/TreeBuilder;->newInstance()Lorg/jsoup/parser/TreeBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    .line 62
    new-instance v0, Lorg/jsoup/parser/ParseErrorList;

    iget-object v1, p1, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    invoke-direct {v0, v1}, Lorg/jsoup/parser/ParseErrorList;-><init>(Lorg/jsoup/parser/ParseErrorList;)V

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    .line 63
    new-instance v0, Lorg/jsoup/parser/ParseSettings;

    iget-object v1, p1, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-direct {v0, v1}, Lorg/jsoup/parser/ParseSettings;-><init>(Lorg/jsoup/parser/ParseSettings;)V

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 64
    iget-boolean v0, p1, Lorg/jsoup/parser/Parser;->trackPosition:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/Parser;->trackPosition:Z

    .line 65
    iget v0, p1, Lorg/jsoup/parser/Parser;->maxDepth:I

    iput v0, p0, Lorg/jsoup/parser/Parser;->maxDepth:I

    .line 66
    new-instance v0, Lorg/jsoup/parser/TagSet;

    invoke-virtual {p1}, Lorg/jsoup/parser/Parser;->tagSet()Lorg/jsoup/parser/TagSet;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jsoup/parser/TagSet;-><init>(Lorg/jsoup/parser/TagSet;)V

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->tagSet:Lorg/jsoup/parser/TagSet;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/TreeBuilder;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lorg/jsoup/parser/Parser;->trackPosition:Z

    .line 32
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 40
    iput-object p1, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    .line 41
    invoke-virtual {p1}, Lorg/jsoup/parser/TreeBuilder;->defaultSettings()Lorg/jsoup/parser/ParseSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    .line 42
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    .line 43
    invoke-virtual {p1}, Lorg/jsoup/parser/TreeBuilder;->defaultMaxDepth()I

    move-result p1

    iput p1, p0, Lorg/jsoup/parser/Parser;->maxDepth:I

    return-void
.end method

.method public static htmlParser()Lorg/jsoup/parser/Parser;
    .locals 2

    .line 370
    new-instance v0, Lorg/jsoup/parser/Parser;

    new-instance v1, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v1}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 263
    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    .line 264
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lorg/jsoup/parser/Parser;

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    invoke-virtual {v0, v1, p1, p0}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static unescapeEntities(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 339
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/16 v0, 0x26

    .line 340
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    .line 341
    :cond_0
    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/jsoup/parser/Parser;->unescape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static xmlParser()Lorg/jsoup/parser/Parser;
    .locals 2

    .line 379
    new-instance v0, Lorg/jsoup/parser/Parser;

    new-instance v1, Lorg/jsoup/parser/XmlTreeBuilder;

    invoke-direct {v1}, Lorg/jsoup/parser/XmlTreeBuilder;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/Parser;->setMaxDepth(I)Lorg/jsoup/parser/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lorg/jsoup/parser/Parser;->clone()Lorg/jsoup/parser/Parser;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/parser/Parser;
    .locals 1

    .line 57
    new-instance v0, Lorg/jsoup/parser/Parser;

    invoke-direct {v0, p0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/Parser;)V

    return-object v0
.end method

.method public defaultNamespace()Ljava/lang/String;
    .locals 1

    .line 250
    invoke-virtual {p0}, Lorg/jsoup/parser/Parser;->getTreeBuilder()Lorg/jsoup/parser/TreeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/TreeBuilder;->defaultNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrors()Lorg/jsoup/parser/ParseErrorList;
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    return-object v0
.end method

.method public getMaxDepth()I
    .locals 1

    .line 220
    iget v0, p0, Lorg/jsoup/parser/Parser;->maxDepth:I

    return v0
.end method

.method public getTreeBuilder()Lorg/jsoup/parser/TreeBuilder;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    return-object v0
.end method

.method public isTrackErrors()Z
    .locals 1

    .line 141
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->errors:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->getMaxSize()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTrackPosition()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lorg/jsoup/parser/Parser;->trackPosition:Z

    return v0
.end method

.method public parseFragmentInput(Ljava/io/Reader;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 121
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {v0, p1, p2, p3, p0}, Lorg/jsoup/parser/TreeBuilder;->parseFragment(Ljava/io/Reader;Lorg/jsoup/nodes/Element;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object p2, p0, Lorg/jsoup/parser/Parser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/jsoup/parser/Parser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 124
    throw p1
.end method

.method public parseFragmentInput(Ljava/lang/String;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .line 106
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/jsoup/parser/Parser;->parseFragmentInput(Ljava/io/Reader;Lorg/jsoup/nodes/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public parseInput(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    .line 90
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 91
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {v0, p1, p2, p0}, Lorg/jsoup/parser/TreeBuilder;->parse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iget-object p2, p0, Lorg/jsoup/parser/Parser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/jsoup/parser/Parser;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 94
    throw p1
.end method

.method public setMaxDepth(I)Lorg/jsoup/parser/Parser;
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 210
    :goto_0
    const-string v1, "maxDepth must be >= 1"

    invoke-static {v0, v1}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 211
    iput p1, p0, Lorg/jsoup/parser/Parser;->maxDepth:I

    return-object p0
.end method

.method public settings()Lorg/jsoup/parser/ParseSettings;
    .locals 1

    .line 198
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->settings:Lorg/jsoup/parser/ParseSettings;

    return-object v0
.end method

.method public tagSet()Lorg/jsoup/parser/TagSet;
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->tagSet:Lorg/jsoup/parser/TagSet;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    invoke-virtual {v0}, Lorg/jsoup/parser/TreeBuilder;->defaultTagSet()Lorg/jsoup/parser/TagSet;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Parser;->tagSet:Lorg/jsoup/parser/TagSet;

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->tagSet:Lorg/jsoup/parser/TagSet;

    return-object v0
.end method

.method public unescape(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 355
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/16 v0, 0x26

    .line 356
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    .line 357
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {v0, v1, p1, p0}, Lorg/jsoup/parser/TreeBuilder;->initialiseParse(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/Parser;)V

    .line 358
    new-instance p1, Lorg/jsoup/parser/Tokeniser;

    iget-object v0, p0, Lorg/jsoup/parser/Parser;->treeBuilder:Lorg/jsoup/parser/TreeBuilder;

    invoke-direct {p1, v0}, Lorg/jsoup/parser/Tokeniser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    .line 359
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/Tokeniser;->unescapeEntities(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
