.class public final synthetic Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    iput-object p2, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    .line 0
    invoke-static {p0}, Lj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;->f$0:Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;

    iget-object v1, p0, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, p1}, Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;->$r8$lambda$SP1BbvDhrFN0miwMrbvlG8EzTyg(Lorg/schabi/newpipe/extractor/localization/TimeAgoParser;Ljava/lang/String;Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method
