.class public final synthetic Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/extractor/MediaFormat;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/extractor/MediaFormat;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/extractor/MediaFormat;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/schabi/newpipe/util/ListHelper$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/extractor/MediaFormat;

    check-cast p1, Lorg/schabi/newpipe/extractor/MediaFormat;

    check-cast p2, Lorg/schabi/newpipe/extractor/MediaFormat;

    invoke-static {v0, p1, p2}, Lorg/schabi/newpipe/util/ListHelper;->$r8$lambda$qXiiWsx53S3p8YYvk8-4U4-OYIk(Lorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/MediaFormat;Lorg/schabi/newpipe/extractor/MediaFormat;)I

    move-result p1

    return p1
.end method
