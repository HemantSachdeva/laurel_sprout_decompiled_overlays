.class public final Ldvd;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final synthetic a:Ldxx;

.field public final synthetic b:Lean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lean;Ldxx;)V
    .locals 0

    iput-object p1, p0, Ldvd;->b:Lean;

    iput-object p2, p0, Ldvd;->a:Ldxx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
