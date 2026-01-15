.class Lorg/mozilla/javascript/regexp/CompilerState;
.super Ljava/lang/Object;
.source "NativeRegExp.java"


# instance fields
.field backReferenceLimit:I

.field classCount:I

.field cp:I

.field cpbegin:[C

.field cpend:I

.field cx:Lorg/mozilla/javascript/Context;

.field flags:I

.field maxBackReference:I

.field parenCount:I

.field parenNesting:I

.field progLength:I

.field result:Lorg/mozilla/javascript/regexp/RENode;


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Context;[CII)V
    .locals 0

    .line 2945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2946
    iput-object p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    .line 2947
    iput-object p2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    const/4 p1, 0x0

    .line 2948
    iput p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 2949
    iput p3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    .line 2950
    iput p4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    const p2, 0x7fffffff

    .line 2951
    iput p2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->backReferenceLimit:I

    .line 2952
    iput p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->maxBackReference:I

    .line 2953
    iput p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    .line 2954
    iput p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    .line 2955
    iput p1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    return-void
.end method
