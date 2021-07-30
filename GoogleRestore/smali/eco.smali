.class final Leco;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldyv;

.field final synthetic b:Lebd;

.field final synthetic c:Ldxt;

.field final synthetic d:Lecp;


# direct methods
.method public constructor <init>(Lecp;Ldyv;Lebd;Ldxt;)V
    .locals 0

    iput-object p1, p0, Leco;->d:Lecp;

    iput-object p2, p0, Leco;->a:Ldyv;

    iput-object p3, p0, Leco;->b:Lebd;

    iput-object p4, p0, Leco;->c:Ldxt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Leco;->d:Lecp;

    iget-object v0, v0, Lecp;->a:Lebe;

    iget-object v1, p0, Leco;->a:Ldyv;

    iget-object v2, p0, Leco;->b:Lebd;

    iget-object v3, p0, Leco;->c:Ldxt;

    .line 1
    invoke-interface {v0, v1, v2, v3}, Lebe;->a(Ldyv;Lebd;Ldxt;)V

    return-void
.end method
