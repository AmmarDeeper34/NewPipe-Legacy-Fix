.class Lorg/mozilla/javascript/regexp/REBackTrackData;
.super Ljava/lang/Object;
.source "NativeRegExp.java"


# instance fields
.field final continuationOp:I

.field final continuationPc:I

.field final cp:I

.field final op:I

.field final parens:[J

.field final pc:I

.field final previous:Lorg/mozilla/javascript/regexp/REBackTrackData;

.field final stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/regexp/REGlobalData;IIIII)V
    .locals 1

    .line 3003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3004
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->previous:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 3005
    iput p2, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->op:I

    .line 3006
    iput p3, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->pc:I

    .line 3007
    iput p4, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->cp:I

    .line 3008
    iput p5, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationOp:I

    .line 3009
    iput p6, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuationPc:I

    .line 3010
    iget-object p2, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    iput-object p2, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->parens:[J

    .line 3011
    iget-object p1, p1, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    iput-object p1, p0, Lorg/mozilla/javascript/regexp/REBackTrackData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    return-void
.end method
