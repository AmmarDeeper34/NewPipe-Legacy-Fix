.class public final synthetic Lorg/jsoup/internal/QuietAppendable$BaseAppendable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/jsoup/internal/QuietAppendable$BaseAppendable$Action;


# instance fields
.field public final synthetic f$0:Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

.field public final synthetic f$1:C


# direct methods
.method public synthetic constructor <init>(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;C)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable$$ExternalSyntheticLambda0;->f$0:Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    iput-char p2, p0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable$$ExternalSyntheticLambda0;->f$1:C

    return-void
.end method


# virtual methods
.method public final append()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable$$ExternalSyntheticLambda0;->f$0:Lorg/jsoup/internal/QuietAppendable$BaseAppendable;

    iget-char v1, p0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable$$ExternalSyntheticLambda0;->f$1:C

    invoke-static {v0, v1}, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->$r8$lambda$hstDiP1Uy4J47Ak9JBEl2M9Vuz8(Lorg/jsoup/internal/QuietAppendable$BaseAppendable;C)V

    return-void
.end method
