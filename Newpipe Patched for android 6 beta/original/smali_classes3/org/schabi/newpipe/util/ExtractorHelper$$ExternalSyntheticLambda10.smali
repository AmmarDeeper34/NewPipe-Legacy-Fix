.class public final synthetic Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Lorg/schabi/newpipe/extractor/Page;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;->f$0:I

    iput-object p2, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;->f$2:Ljava/util/List;

    iput-object p4, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;->f$4:Lorg/schabi/newpipe/extractor/Page;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 5

    .line 0
    iget v0, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;->f$0:I

    iget-object v1, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;->f$2:Ljava/util/List;

    iget-object v3, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lorg/schabi/newpipe/util/ExtractorHelper$$ExternalSyntheticLambda10;->f$4:Lorg/schabi/newpipe/extractor/Page;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/schabi/newpipe/util/ExtractorHelper;->$r8$lambda$-GOASzxxtO11nTPjtgJMV0OHJvs(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Page;)Lorg/schabi/newpipe/extractor/ListExtractor$InfoItemsPage;

    move-result-object v0

    return-object v0
.end method
