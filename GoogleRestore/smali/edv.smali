.class final Ledv;
.super Ledt;
.source "PG"


# instance fields
.field final synthetic a:Leen;


# direct methods
.method public constructor <init>(Leen;)V
    .locals 0

    iput-object p1, p0, Ledv;->a:Leen;

    .line 1
    invoke-direct {p0}, Ledt;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 3

    iget-object v0, p0, Ledv;->a:Leen;

    iget-object v1, v0, Leen;->a:Leeg;

    check-cast v1, Lefn;

    iget-object v1, v1, Lefn;->b:Leae;

    iget-object v1, v1, Leae;->i:Lefs;

    .line 2
    iget-object v1, v1, Lefs;->F:Ledt;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Ledt;->a(Ljava/lang/Object;Z)V

    return-void
.end method

.method protected final c()V
    .locals 3

    iget-object v0, p0, Ledv;->a:Leen;

    iget-object v1, v0, Leen;->a:Leeg;

    check-cast v1, Lefn;

    iget-object v1, v1, Lefn;->b:Leae;

    iget-object v1, v1, Leae;->i:Lefs;

    .line 3
    iget-object v1, v1, Lefs;->F:Ledt;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ledt;->a(Ljava/lang/Object;Z)V

    return-void
.end method
