.class final Leas;
.super Lebp;
.source "PG"


# instance fields
.field final synthetic a:Ldvk;

.field final synthetic b:Ldyv;

.field final synthetic c:Lebb;


# direct methods
.method public constructor <init>(Lebb;Ldvk;Ldyv;)V
    .locals 0

    iput-object p1, p0, Leas;->c:Lebb;

    iput-object p2, p0, Leas;->a:Ldvk;

    iput-object p3, p0, Leas;->b:Ldyv;

    iget-object p1, p1, Lebb;->e:Ldwb;

    .line 1
    invoke-direct {p0, p1}, Lebp;-><init>(Ldwb;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Leas;->c:Lebb;

    iget-object v1, p0, Leas;->a:Ldvk;

    iget-object v2, p0, Leas;->b:Ldyv;

    .line 2
    new-instance v3, Ldxt;

    invoke-direct {v3}, Ldxt;-><init>()V

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lebb;->a(Ldvk;Ldyv;Ldxt;)V

    return-void
.end method
