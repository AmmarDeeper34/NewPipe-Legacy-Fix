.class public final synthetic Lorg/mozilla/javascript/IRFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lorg/mozilla/javascript/Parser$Transformer;


# instance fields
.field public final synthetic f$0:Lorg/mozilla/javascript/IRFactory;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/IRFactory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/IRFactory$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/IRFactory;

    return-void
.end method


# virtual methods
.method public final transform(Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/mozilla/javascript/IRFactory$$ExternalSyntheticLambda0;->f$0:Lorg/mozilla/javascript/IRFactory;

    invoke-static {v0, p1}, Lorg/mozilla/javascript/IRFactory;->$r8$lambda$I3DAIEFXXfV3SR8-ibZ5Po7sRG0(Lorg/mozilla/javascript/IRFactory;Lorg/mozilla/javascript/ast/AstNode;)Lorg/mozilla/javascript/Node;

    move-result-object p1

    return-object p1
.end method
