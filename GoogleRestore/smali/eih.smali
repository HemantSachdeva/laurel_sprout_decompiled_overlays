.class public abstract Leih;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ldvi;

.field public final b:Ldvh;


# direct methods
.method protected constructor <init>(Ldvi;Ldvh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leih;->a:Ldvi;

    iput-object p2, p0, Leih;->b:Ldvh;

    return-void
.end method


# virtual methods
.method protected abstract a(Ldvi;Ldvh;)Leih;
.end method

.method public final a(Ldvo;)Leih;
    .locals 3

    iget-object v0, p0, Leih;->a:Ldvi;

    iget-object v1, p0, Leih;->b:Ldvh;

    new-instance v2, Ldvh;

    .line 1
    invoke-direct {v2, v1}, Ldvh;-><init>(Ldvh;)V

    iput-object p1, v2, Ldvh;->h:Ldvo;

    .line 2
    invoke-virtual {p0, v0, v2}, Leih;->a(Ldvi;Ldvh;)Leih;

    move-result-object p1

    return-object p1
.end method
