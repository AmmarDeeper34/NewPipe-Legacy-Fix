.class public final Lkotlin/sequences/MergingSequence;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Lkotlin/sequences/Sequence;


# instance fields
.field private final sequence1:Lkotlin/sequences/Sequence;

.field private final sequence2:Lkotlin/sequences/Sequence;

.field private final transform:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    const-string v0, "sequence1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sequence2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    iput-object p1, p0, Lkotlin/sequences/MergingSequence;->sequence1:Lkotlin/sequences/Sequence;

    .line 303
    iput-object p2, p0, Lkotlin/sequences/MergingSequence;->sequence2:Lkotlin/sequences/Sequence;

    .line 304
    iput-object p3, p0, Lkotlin/sequences/MergingSequence;->transform:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final synthetic access$getSequence1$p(Lkotlin/sequences/MergingSequence;)Lkotlin/sequences/Sequence;
    .locals 0

    .line 300
    iget-object p0, p0, Lkotlin/sequences/MergingSequence;->sequence1:Lkotlin/sequences/Sequence;

    return-object p0
.end method

.method public static final synthetic access$getSequence2$p(Lkotlin/sequences/MergingSequence;)Lkotlin/sequences/Sequence;
    .locals 0

    .line 300
    iget-object p0, p0, Lkotlin/sequences/MergingSequence;->sequence2:Lkotlin/sequences/Sequence;

    return-object p0
.end method

.method public static final synthetic access$getTransform$p(Lkotlin/sequences/MergingSequence;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 300
    iget-object p0, p0, Lkotlin/sequences/MergingSequence;->transform:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 306
    new-instance v0, Lkotlin/sequences/MergingSequence$iterator$1;

    invoke-direct {v0, p0}, Lkotlin/sequences/MergingSequence$iterator$1;-><init>(Lkotlin/sequences/MergingSequence;)V

    return-object v0
.end method
