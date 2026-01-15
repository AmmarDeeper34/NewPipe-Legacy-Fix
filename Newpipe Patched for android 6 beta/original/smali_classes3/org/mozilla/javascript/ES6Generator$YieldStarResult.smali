.class public final Lorg/mozilla/javascript/ES6Generator$YieldStarResult;
.super Ljava/lang/Object;
.source "ES6Generator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/ES6Generator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "YieldStarResult"
.end annotation


# instance fields
.field private result:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p1, p0, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method getResult()Ljava/lang/Object;
    .locals 1

    .line 459
    iget-object v0, p0, Lorg/mozilla/javascript/ES6Generator$YieldStarResult;->result:Ljava/lang/Object;

    return-object v0
.end method
