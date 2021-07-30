.class public Lblg;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lblj;

.field public final b:Lblf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lblf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    new-instance v0, Lblj;

    invoke-direct {v0, p1}, Lblj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lblg;->a:Lblj;

    .line 2
    invoke-static {p2}, Lbir;->a(Ljava/lang/Object;)V

    iput-object p2, p0, Lblg;->b:Lblf;

    return-void
.end method
