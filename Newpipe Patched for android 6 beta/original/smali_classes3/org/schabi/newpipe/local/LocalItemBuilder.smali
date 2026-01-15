.class public Lorg/schabi/newpipe/local/LocalItemBuilder;
.super Ljava/lang/Object;
.source "LocalItemBuilder.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private onSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/schabi/newpipe/local/LocalItemBuilder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemBuilder;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getOnItemSelectedListener()Lorg/schabi/newpipe/util/OnClickGesture;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/schabi/newpipe/local/LocalItemBuilder;->onSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;

    return-object v0
.end method

.method public setOnItemSelectedListener(Lorg/schabi/newpipe/util/OnClickGesture;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/schabi/newpipe/local/LocalItemBuilder;->onSelectedListener:Lorg/schabi/newpipe/util/OnClickGesture;

    return-void
.end method
