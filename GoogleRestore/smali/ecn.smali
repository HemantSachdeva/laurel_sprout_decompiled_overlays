.class final Lecn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldyv;

.field final synthetic b:Ldxt;

.field final synthetic c:Lecp;


# direct methods
.method public constructor <init>(Lecp;Ldyv;Ldxt;)V
    .locals 0

    iput-object p1, p0, Lecn;->c:Lecp;

    iput-object p2, p0, Lecn;->a:Ldyv;

    iput-object p3, p0, Lecn;->b:Ldxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lecn;->c:Lecp;

    iget-object v0, v0, Lecp;->a:Lebe;

    iget-object v1, p0, Lecn;->a:Ldyv;

    iget-object v2, p0, Lecn;->b:Ldxt;

    .line 1
    invoke-interface {v0, v1, v2}, Lebe;->a(Ldyv;Ldxt;)V

    return-void
.end method
