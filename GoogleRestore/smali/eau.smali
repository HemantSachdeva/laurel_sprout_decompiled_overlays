.class final Leau;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldyv;

.field final synthetic b:Lebb;


# direct methods
.method public constructor <init>(Lebb;Ldyv;)V
    .locals 0

    iput-object p1, p0, Leau;->b:Lebb;

    iput-object p2, p0, Leau;->a:Ldyv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Leau;->b:Lebb;

    iget-object v0, v0, Lebb;->f:Lebc;

    iget-object v1, p0, Leau;->a:Ldyv;

    .line 1
    invoke-interface {v0, v1}, Lebc;->b(Ldyv;)V

    return-void
.end method
