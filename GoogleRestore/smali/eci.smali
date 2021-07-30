.class final Leci;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldyv;

.field final synthetic b:Lecq;


# direct methods
.method public constructor <init>(Lecq;Ldyv;)V
    .locals 0

    iput-object p1, p0, Leci;->b:Lecq;

    iput-object p2, p0, Leci;->a:Ldyv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Leci;->b:Lecq;

    iget-object v0, v0, Lecq;->d:Lebc;

    iget-object v1, p0, Leci;->a:Ldyv;

    .line 1
    invoke-interface {v0, v1}, Lebc;->b(Ldyv;)V

    return-void
.end method
