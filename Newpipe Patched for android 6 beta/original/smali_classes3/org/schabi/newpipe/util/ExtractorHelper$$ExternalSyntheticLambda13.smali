.class public final synthetic Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lorg/schabi/newpipe/extractor/Page;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda13;->f$0:I

    iput-object p2, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda13;->f$2:Lorg/schabi/newpipe/extractor/Page;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda13;->f$0:I

    iget-object v1, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda13;->f$2:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v0, v1, v2}, Lorg/schabi/newpipe/util/ExtractorHelper;->$r8$lambda$ohlqRO9Ja9aIw3ccrKWzUvHjbKU(ILjava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method
